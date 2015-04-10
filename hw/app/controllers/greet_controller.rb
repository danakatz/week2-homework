class GreetController < ApplicationController

  def show
    if params["salutation"].nil?
      @greeting = 'Hello'
    else
      @greeting = params["salutation"]
    end
  end
  
end
