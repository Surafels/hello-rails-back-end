class Api::MessagesController < ApplicationController
  def random_greeting
    greeting = Message.order('RANDOM()').pluck(:message).first
    render json: greeting
  end
end
