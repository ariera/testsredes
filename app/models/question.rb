class Question < ActiveRecord::Base
  has_many :answers
  has_many :comments

  def next
    Question.find(self.id+1) if Question.exists?(self.id + 1)
  end
end
