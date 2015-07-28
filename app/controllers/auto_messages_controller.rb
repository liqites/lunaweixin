class AutoMessagesController < ApplicationController
  before_action :set_auto_message, only: [:show, :edit, :update, :destroy]

  # GET /auto_messages
  # GET /auto_messages.json
  def index
    @auto_messages = AutoMessage.all
  end

  # GET /auto_messages/1
  # GET /auto_messages/1.json
  def show
  end

  # GET /auto_messages/new
  def new
    @auto_message = AutoMessage.new
    @auto_message.message_type = params[:message_type]
  end

  # GET /auto_messages/1/edit
  def edit
  end

  # POST /auto_messages
  # POST /auto_messages.json
  def create
    @auto_message = AutoMessage.new(auto_message_params)

    respond_to do |format|
      if @auto_message.save
        format.html { redirect_to @auto_message, notice: 'Auto message was successfully created.' }
        format.json { render :show, status: :created, location: @auto_message }
      else
        format.html { render :new }
        format.json { render json: @auto_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auto_messages/1
  # PATCH/PUT /auto_messages/1.json
  def update
    respond_to do |format|
      if @auto_message.update(auto_message_params)
        format.html { redirect_to @auto_message, notice: 'Auto message was successfully updated.' }
        format.json { render :show, status: :ok, location: @auto_message }
      else
        format.html { render :edit }
        format.json { render json: @auto_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auto_messages/1
  # DELETE /auto_messages/1.json
  def destroy
    @auto_message.destroy
    respond_to do |format|
      format.html { redirect_to auto_messages_url, notice: 'Auto message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto_message
      @auto_message = AutoMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auto_message_params
      params.require(:auto_message).permit(:message_type, :content, :keyword)
    end
end
