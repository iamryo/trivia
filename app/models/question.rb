class Question < ActiveRecord::Base
  attr_accessible :body, :image
  has_many :answers
  mount_uploader :image, ImageUploader
end
