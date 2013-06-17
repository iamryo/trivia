class Answer < ActiveRecord::Base
  attr_accessible :body

  belongs_to :question

  validates_presence_of :body

end
