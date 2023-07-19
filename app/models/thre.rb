class Thre < ApplicationRecord
  mount_uploader :img_path, ImageUploader
  belongs_to :board
  has_many :response, dependent: :destroy
  
  validates :title, presence: true
  validates :context, {length: {in: 1..500} }

  scope :latest, -> {order(datetime: :desc)}
  scope :old, -> {order(datetime: :asc)}
  scope :many, -> { includes(:response).sort {|a,b| b.response.size <=> a.response.size}}
  scope :few, -> { includes(:response).sort.reverse {|a,b| b.response.size <=> a.response.size}}

end
