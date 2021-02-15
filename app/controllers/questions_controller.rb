class QuestionsController < ApplicationController

  def ask

  end

  def answer
      @answer = if params[:question] == 'I am going to work'
                  'Great'
                elsif params[:question].end_with?('?')
                  'Silly question, get dressed and go to work!.'
                elsif params[:question].blank?
                  "What is your question ?"
                else
                  "I don't care, get dressed and go to work!"
                end
  end
end


#     If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer
