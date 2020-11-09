class PagesController < ApplicationController
  def ask
  end

  def answer
      @question = params[:question]
      # @answer = coach_answer(@question)

    if @question == "i am going to work right now!"
      @answer = "don't be stupid i'm your coach"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
