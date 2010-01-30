class Answer < ActiveRecord::Base
  belongs_to :question

  def incorrect?
    !correct?
  end
end
