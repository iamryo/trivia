class Question < ActiveRecord::Base
  attr_accessible :body, :image, :remote_image_url
  has_many :answers
  mount_uploader :image, ImageUploader
end
