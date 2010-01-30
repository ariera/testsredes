module TestHelper
  def link_to_edit(question)
    link_to "edit", :controller => "test", :action => "edit_question", :id => question.id
  end
end
