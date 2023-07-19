class Response < ApplicationRecord
  mount_uploader :img_path, ImageUploader
  belongs_to :thre
end
