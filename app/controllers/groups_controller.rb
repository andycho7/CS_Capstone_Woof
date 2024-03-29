class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy, :chat]

  # GET /groups
  # GET /groups.json
  def index
    @user = current_user
    @groups = Group.joins(:groups_users)
                  .where('groups_users.user_id' => @user.id)
                  .eager_load(:users, group_invites: [:invitee, :inviter], pets: [:breed,:colors,:weight])
                  .where('users.active' => true)
                  #.where('group_invites.accepted_at' => nil, 'group_invites.declined_at' => nil, 'users.active' => true)
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    p = group_params
    p[:owner] = current_user
    @group = Group.new(p)

    respond_to do |format|
      if @group.save
        current_user.groups << @group
        current_user.save!
        format.html { redirect_to groups_pets_path, notice: 'Group was successfully created.' }
        format.js { render 'groups/create', status: :created }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Get the chat for group 1
  # GET /groups/1/chat
  def chat
    @chat = @group.chat
    @message = Message.new

    if @chat.nil?
      @chat = Chat.new(identifier: SecureRandom.hex)

      if !@chat.persisted?
        @chat.save
        @group.update(chat_id: @chat.id)
      end
    end

    respond_to do |format|
      format.html { render "group_chat" }
      format.json { render "chats/create" }
    end
  end

  def groups_allChats

    @user = current_user
    @groups = Group.joins(:groups_users)
                   .where('groups_users.user_id' => @user.id)
                   .eager_load(:users, group_invites: [:invitee, :inviter], pets: [:breed,:colors,:weight])
                   .where('users.active' => true)
                   #.where('group_invites.accepted_at' => nil, 'group_invites.declined_at' => nil, 'users.active' => true)
    
    # Doing this as it is done in the previous action.
    @groups.each do |group|
      @chat = group.chat
      if @chat.nil?
        @chat = Chat.new(identifier: SecureRandom.hex)

        if !@chat.persisted?
          @chat.save
          group.update(chat_id: @chat.id)
        end
      end
    end


  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name, :owner)
    end
end
