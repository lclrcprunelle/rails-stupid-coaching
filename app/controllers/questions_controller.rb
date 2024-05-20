class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]

    # si ma question est égale à I am going to work
    # la réponse est great!
    if @question == "I am going to work"
      @answer = "Great!"
      # Sinon si ca finit par un point d'interrogation c'est
      # J'men souviens plus
    elsif
      @question.end_with?("?")
      @answer = "Oui Prupru !"
    else
      # sinon on a un autre truc
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
