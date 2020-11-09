class QuestionsController < ApplicationController
  def questions
  end
  def ask
  end
  def answer
    @query = params[:question]

    @question = "I am going to work"


    if @query.present?
      @answer = if @query.end_with?("?")
        "Silly question, get dressed and go to work!"
      elsif @query == @question
        "Great!"
      else
        "I don't care, get dressed and go to work!"
      end
      return @answer
    end
  end
end
