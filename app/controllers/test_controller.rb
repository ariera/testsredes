class TestController < ApplicationController

  def show
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
    redirect_to :action => :show, :id => q.id
  end

  def create
    q=Question.new(params[:question])
    q.answers << Answer.new(:title => params[:answer1], :correct => params[:correct1])
    q.answers << Answer.new(:title => params[:answer2], :correct => params[:correct2])
    q.answers << Answer.new(:title => params[:answer3], :correct => params[:correct3])
    q.answers << Answer.new(:title => params[:answer4], :correct => params[:correct4])

    q.save
    redirect_to :action => "show", :id => q.id
  end

  def correct
    @question_answered = Question.find(params[:question])
    @question = @question_answered.next
    @marked_answer = Answer.find(params[:answer])
  end

end