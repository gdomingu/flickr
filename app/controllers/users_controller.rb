class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      #send email
      UserMailer.activation_needed_email(@user).deliver
      redirect_to root_url, :notice => "Sign up sucessful!"
    else
      render :new
    end
  end

    def activate
      if(@user = User.load_from_activation_token(params[:id]))
        @user.activate!
        redirect_to(login_path, :notice => 'User was sucessfully activated!')
      else
        not_authenticated
      end
    end
end
