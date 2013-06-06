class GymdaysController < ApplicationController
  before_action :set_gymday, only: [:show, :edit, :update, :destroy]

  # GET /gymdays
  # GET /gymdays.json
  def index
    @gymdays = Gymday.all
  end

  # GET /gymdays/1
  # GET /gymdays/1.json
  def show
  end

  # GET /gymdays/new
  def new
    @gymday = Gymday.new
  end

  # GET /gymdays/1/edit
  def edit
  end

  # POST /gymdays
  # POST /gymdays.json
  def create
    @gymday = Gymday.new(gymday_params)

    respond_to do |format|
      if @gymday.save
        format.html { redirect_to @gymday, notice: 'Gymday was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gymday }
      else
        format.html { render action: 'new' }
        format.json { render json: @gymday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gymdays/1
  # PATCH/PUT /gymdays/1.json
  def update
    respond_to do |format|
      if @gymday.update(gymday_params)
        format.html { redirect_to @gymday, notice: 'Gymday was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gymday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gymdays/1
  # DELETE /gymdays/1.json
  def destroy
    @gymday.destroy
    respond_to do |format|
      format.html { redirect_to gymdays_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gymday
      @gymday = Gymday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gymday_params
      params.require(:gymday).permit(:location)
    end
end
