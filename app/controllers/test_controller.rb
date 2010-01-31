
class TestController < ApplicationController

  def show
    @question = Question.find(params[:id])
  end
  def show_answer
    @question = Question.find(params[:id])
  end

  def new
  end

  def edit_question
    @question = Question.find(params[:id])
  end

  def update_question
    q=Question.find(params[:question_id])
    q.update_attribute(:title, params[:question][:title])

    q.answers.each_with_index do |a,i|
      a.update_attribute(:title, params["answer#{i}"])
      a.update_attribute(:correct, params["correct#{i}"] ? true : false)
    end

    redirect_to :action => :show, :id => q.id
  end

  def create
    q=Question.new(params[:question])
    q.answers  << Answer.new(:title => params[:answer1], :correct => params[:correct1])
    q.answers  << Answer.new(:title => params[:answer2], :correct => params[:correct2])
    q.answers  << Answer.new(:title => params[:answer3], :correct => params[:correct3])
    q.answers  << Answer.new(:title => params[:answer4], :correct => params[:correct4])
    q.comments << Comment.new(:title => params[:comment])

    q.save
    redirect_to :action => "show", :id => q.id
  end

  def correct
    @question_answered = Question.find(params[:question])
    @question = @question_answered.next
    @marked_answer = Answer.find(params[:answer])
  end

  def add_comment
    qu=Question.find(params[:question_id])
    qu.comments << Comment.new(params[:comment])
    redirect_to :action => :show, :id => qu.id
  end

end
