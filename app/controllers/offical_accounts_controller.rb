class OfficalAccountsController < ApplicationController
  before_action :set_offical_account, only: [:show, :edit, :update, :destroy, :manage]

  # GET /offical_accounts
  # GET /offical_accounts.json
  def index
    @offical_accounts = OfficalAccount.all
  end

  # GET /offical_accounts/1
  # GET /offical_accounts/1.json
  def show
  end

  # GET /offical_accounts/new
  def new
    @offical_account = OfficalAccount.new
  end

  # GET /offical_accounts/1/edit
  def edit
  end

  # POST /offical_accounts
  # POST /offical_accounts.json
  def create
    @offical_account = OfficalAccount.new(offical_account_params)
    @offical_account.user = current_user
    respond_to do |format|
      if @offical_account.save
        format.html { redirect_to @offical_account, notice: 'Offical account was successfully created.' }
        format.json { render :show, status: :created, location: @offical_account }
      else
        format.html { render :new }
        format.json { render json: @offical_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offical_accounts/1
  # PATCH/PUT /offical_accounts/1.json
  def update
    respond_to do |format|
      if @offical_account.update(offical_account_params)
        format.html { redirect_to @offical_account, notice: 'Offical account was successfully updated.' }
        format.json { render :show, status: :ok, location: @offical_account }
      else
        format.html { render :edit }
        format.json { render json: @offical_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offical_accounts/1
  # DELETE /offical_accounts/1.json
  def destroy
    @offical_account.destroy
    respond_to do |format|
      format.html { redirect_to offical_accounts_url, notice: 'Offical account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def manage
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offical_account
      @offical_account = OfficalAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offical_account_params
      params.require(:offical_account).permit(:name)
    end
end
