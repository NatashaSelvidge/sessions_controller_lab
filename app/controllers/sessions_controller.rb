class SessionsController < ApplicationController
  def new
    if session[:name] == nil
      redirect_to '/login'
    end
  end

  def create

    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end
end