class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :about, :about_team, :user_tutorial]

  # about the project
  def about
    @user_profile = true
  end

  def user_tutorial
  end

  def about_team
    @user_profile = true
  end

  def index
    if(user_signed_in?)
      redirect_to event_path(current_user)
    end
    @homepage = true
    if @user.nil?
      @user = User.new
    end
  end

  def login
  end

  def create
    redirect_to user_session_path
  end

  def sign_out_profile
    sign_out(@user)
    redirect_to root_path
  end
end
