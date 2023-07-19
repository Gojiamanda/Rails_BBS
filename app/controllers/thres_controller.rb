class ThresController < ApplicationController
  before_action :set_thre, only: %i[ show edit update destroy ]

  # GET /thres or /thres.json
  def index
    @thres = Thre.all
  end

  # GET /thres/1 or /thres/1.json
  def show
    @response = Response.new
  end

  # GET /thres/new
  def new
    @thre = Thre.new
  end

  # GET /thres/1/edit
  def edit
  end

  # POST /thres or /thres.json
  def create
    @thre = Thre.new(thre_params)

    respond_to do |format|
      if @thre.save
        format.html { redirect_to thre_url(@thre), notice: "Thre was successfully created." }
        format.json { render :show, status: :created, location: @thre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @thre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thres/1 or /thres/1.json
  def update
    respond_to do |format|
      if @thre.update(thre_params)
        format.html { redirect_to thre_url(@thre), notice: "Thre was successfully updated." }
        format.json { render :show, status: :ok, location: @thre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @thre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thres/1 or /thres/1.json
  def destroy
    @thre.destroy

    respond_to do |format|
      format.html { redirect_to thres_url, notice: "Thre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thre
      @thre = Thre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def thre_params
      params.require(:thre).permit(:title, :name, :context, :time, :img_path, :board_id)
    end
end
