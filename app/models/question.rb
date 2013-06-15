class Question < ActiveRecord::Base
  attr_accessible :body, :image, :remote_image_url, :answers_attributes
  has_many :answers
  accepts_nested_attributes_for :answers
  mount_uploader :image, ImageUploader
end
