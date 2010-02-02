class Notification < ActiveRecord::Base
  belongs_to :question

  def title
    return "Pregunta (n)"     if event == "create"
    return "Comentario (n)"      if event == "comment"
    return "Pregunta (u)" if event == "update"
  end
end
