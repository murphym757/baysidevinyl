class VinylsController < ApplicationController
  before_action :set_vinyl, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]



  def index
    @vinyl = vinyl.all
  end



  def new
    @vinyl = current_user.vinyls.build
  end


  def edit
  end


  def create
    @vinyl = current_user.vinyls.build(vinyl_params)

    respond_to do |format|
      if @vinyl.save
        format.html { redirect_to @vinyl, notice: 'Vinyl was successfully created.' }
        format.json { render :show, status: :created, location: @vinyl }
      else
        format.html { render :new }
        format.json { render json: @vinyl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vinyls/1
  # PATCH/PUT /vinyls/1.json
  def update
    respond_to do |format|
      if @vinyl.update(vinyl_params)
        format.html { redirect_to @vinyl, notice: 'Vinyl was successfully updated.' }
        format.json { render :show, status: :ok, location: @vinyl }
      else
        format.html { render :edit }
        format.json { render json: @vinyl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_path, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vinyl
      @vinyl = Vinyl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:vinyl).permit()
end
end
