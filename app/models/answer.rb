class Answer
  include Mongoid::Document
  attr_accessible :body

  embedded_in :question

  validates_presence_of :body

end
