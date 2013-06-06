class Question < ActiveRecord::Base
  attr_accessible :body

  has_many :answers
end
