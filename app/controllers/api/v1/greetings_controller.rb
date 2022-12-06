class Api::V1::GreetingsController < ApplicationController
  def random
    greeting = Greeting.order('RANDOM()').first
    if greeting
      render json: { success: true, message: 'Loaded greeting message', data: { greeting: } }, status: :ok
    else
      render json: { success: false, errors: 'Oops, Something went wrong!' }, status: :unprocessable_entity
    end
  end
end
