class IdolsController < ApplicationController
  before_action :set_idol, only: [:show, :edit, :update, :destroy]

  # GET /idols
  # GET /idols.json
  def index
    @idols = Idol.all
  end

  # GET /idols/1
  # GET /idols/1.json
  def show
  end

  # GET /idols/new
  def new
    @idol = Idol.new
  end

  # GET /idols/1/edit
  def edit
  end

  # POST /idols
  # POST /idols.json
  def create
    @idol = Idol.new(idol_params)

    respond_to do |format|
      if @idol.save
        format.html { redirect_to @idol, notice: 'Idol was successfully created.' }
        format.json { render action: 'show', status: :created, location: @idol }
      else
        format.html { render action: 'new' }
        format.json { render json: @idol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idols/1
  # PATCH/PUT /idols/1.json
  def update
    respond_to do |format|
      if @idol.update(idol_params)
        format.html { redirect_to @idol, notice: 'Idol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @idol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idols/1
  # DELETE /idols/1.json
  def destroy
    @idol.destroy
    respond_to do |format|
      format.html { redirect_to idols_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idol
      @idol = Idol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idol_params
      params.require(:idol).permit(:name, :contact, :about, :motto)
    end
end
