class SessionsController < ApplicationController
  skip_before_filter  :verify_authenticity_token ,:only => [:create]

  def new
  end

  def signin
    render 'new'
  end


  def create


    user = User.find_by(email: params[:session][:email].downcase)
    if user  && user.pwd == params[:session][:pwd]
      render :json => user
    else

      render text:"NO"
    end
  end

  def destroy
  end
end
