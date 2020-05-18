# frozen_string_literal: true

class QuestionsController < ApplicationController #:nodoc:
  def ask; end

  def answer
    @message = params[:question]
    @answer = coach_answer
    # raise
  end

  def coach_answer
    if @message == 'I am going to work'
      'Great!'
    elsif @message.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      'I don\'t care, get dressed and go to work!'
    end
  end
end
