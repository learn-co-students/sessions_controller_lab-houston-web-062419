class SessionsController < ApplicationController
  def new
  end

  def create
  	 session[:name] = params[:name]
  	 if session[:name] && session[:name] != ""
        redirect_to '/'
    else
    	 redirect_to :action => "new"
    end
  end

  def destroy
  	  session.delete :name
        redirect_to '/'

  end
end
