class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :about, :about_team, :user_tutorial, :tutorial_profile, :tutorial_groups_pets, :tutorial_lost_and_found, :tutorial_event_invitations, :tutorial_sign_up, :tutorial_group_chats, :tutorial_event_basics, :tutorial_ios_sign_in, :tutorial_ios_groups, :tutorial_ios_feeding, :tutorial_ios_nudge_group, :tutorial_ios_aroundme]

  # about the project
  def about
    @user_profile = true
  end

  def user_tutorial
  end

  def tutorial_profile
  end

  def tutorial_groups_pets
  end

  def tutorial_lost_and_found
  end

  def tutorial_event_invitations
  end

  def tutorial_sign_up
  end

  def tutorial_group_chats
  end
  
  def tutorial_event_basics
  end

  def tutorial_ios_sign_in
  end

  def tutorial_ios_groups
  end

  def tutorial_ios_feeding
  end

  def tutorial_ios_nudge_group
  end

  def tutorial_ios_aroundme
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
