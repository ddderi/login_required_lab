class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? or params[:name].empty? 
    redirect_to controller: 'sessions', action: 'new'
    else 
      session[:name] = params[:name]
      redirect_to '/homepage'
    end
  end

  def homepage

  end

  def destroy
      session.delete :name
      redirect_to controller: 'sessions', action: 'new'
  end
end
