class FeedbacksController < ApplicationController
  # before_action :set_feedback, only: [:show, :edit, :update, :destroy]
  #
  # # GET /feedbacks
  # # GET /feedbacks.json
  # def index
  #   @feedbacks = Feedback.all
  # end
  #
  # # GET /feedbacks/1
  # # GET /feedbacks/1.json
  # def show
  # end
  #
  # # GET /feedbacks/new
  # def new
  #   @feedback = Feedback.new
  # end
  #
  # # GET /feedbacks/1/edit
  # def edit
  # end
  
  # POST /feedbacks
  # POST /feedbacks.json
  def create
    @feedback = Feedback.new(feedback_params)

    respond_to do |format|
      if @feedback.save
        UserMailer.feedback(@feedback).deliver_later
        #format.html { redirect_to @feedback, notice: 'Feedback was successfully created.' }
        flash[:notice] = 'Thank you for your feedback.'
        format.js { render :new, status: :created }
        format.json { render :new, status: :created, location: @feedback }
      else
        #format.html { render :new }
        format.js { render :show, status: :created, location: @feedback }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # # PATCH/PUT /feedbacks/1
  # # PATCH/PUT /feedbacks/1.json
  # def update
  #   respond_to do |format|
  #     if @feedback.update(feedback_params)
  #       format.html { redirect_to @feedback, notice: 'Feedback was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @feedback }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @feedback.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /feedbacks/1
  # # DELETE /feedbacks/1.json
  # def destroy
  #   @feedback.destroy
  #   respond_to do |format|
  #     format.html { redirect_to feedbacks_url, notice: 'Feedback was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end
  #
  # # GET /feedbacks/find.json?name='red'
  # def find
  #   respond_to do |format|
  #     if params[:name]
  #       @feedbacks = Feedback.contains(params[:name])
  #     else
  #       @feedbacks = Feedback.all
  #     end
  #     format.json { render :index, status: :ok }
  #   end
  # end
  private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_feedback
  #     @feedback = Feedback.find(params[:id])
  #   end
  #
    # Never trust parameters from the scary internet, only allow the white list through.
    def feedback_params
      params.require(:feedback).permit(:message)
    end
end
