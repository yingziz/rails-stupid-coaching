class PagesController < ApplicationController
  def ask; end

  def answer
    if params[:ask_coach].downcase == "i am going to work right now!"
      @answer = "Great!"
    elsif params[:ask_coach].end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
