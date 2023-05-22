class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = case
              when @question.end_with?('?')
                'Great!'
              when @question == 'I am going to work'
                'Silly question, get dressed and go to work!'
              else
                'I dont care, get dressed and go to work!'
              end
  end
end
