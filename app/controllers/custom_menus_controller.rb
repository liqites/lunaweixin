class CustomMenusController < ApplicationController
  before_action :set_custom_menu, only: [:show, :edit, :update, :destroy]

  # GET /custom_menus
  # GET /custom_menus.json
  def index
    @custom_menus = CustomMenu.all
  end

  # GET /custom_menus/1
  # GET /custom_menus/1.json
  def show
  end

  # GET /custom_menus/new
  def new
    @custom_menu = CustomMenu.new
  end

  # GET /custom_menus/1/edit
  def edit
  end

  # POST /custom_menus
  # POST /custom_menus.json
  def create
    @custom_menu = CustomMenu.new(custom_menu_params)

    respond_to do |format|
      if @custom_menu.save
        format.html { redirect_to @custom_menu, notice: 'Custom menu was successfully created.' }
        format.json { render :show, status: :created, location: @custom_menu }
      else
        format.html { render :new }
        format.json { render json: @custom_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_menus/1
  # PATCH/PUT /custom_menus/1.json
  def update
    respond_to do |format|
      if @custom_menu.update(custom_menu_params)
        format.html { redirect_to @custom_menu, notice: 'Custom menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_menu }
      else
        format.html { render :edit }
        format.json { render json: @custom_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_menus/1
  # DELETE /custom_menus/1.json
  def destroy
    @custom_menu.destroy
    respond_to do |format|
      format.html { redirect_to custom_menus_url, notice: 'Custom menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_menu
      @custom_menu = CustomMenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_menu_params
      params.require(:custom_menu).permit(:name, :func)
    end
end
