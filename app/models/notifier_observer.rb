class NotifierObserver < ActiveRecord::Observer
  observe :question, :comment

  def after_create(record)
    n = Notification.new
    if    record.class == Comment
      n.event = "comment"
      n.question = record.question
    elsif record.class == Question
      n.event = "create"
      n.question = record
    end
    n.save
  end

  def after_update(record)
    n = Notification.new
    if record.class == Question
      n.event = "update"
      n.question = record
      n.save
    end
  end

end
