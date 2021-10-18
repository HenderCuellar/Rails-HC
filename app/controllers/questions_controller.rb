class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:ask]
      if params[:ask] == 'I am going to work'
        @answer = 'Great!'
      elsif params[:ask].chars.last.include?('?')
        @answer = 'Silly question, get dressed and go to work!'
      else
        return @answer = "I don't care, get dressed and go to work!"
      end
    end
    @answer
  end
end
