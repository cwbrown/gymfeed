class ScoresController < ApplicationController
  before_action :set_score, only: [:show, :edit, :update, :destroy]

  # GET /scores
  # GET /scores.json
  def index
    @scores = Score.all
  end

  # GET /scores/1
  # GET /scores/1.json
  def show
  end

  # GET /scores/new
  def new
    @score = Score.new
  end

  # GET /scores/1/edit
  def edit
    @score = Score.find(params[:id])
  end


  def date_from_date_select_fields(params, name)
    parts = (1..3).map do |e|
      params["#{name}(#{e}i)"].to_i
    end

    # remove trailing zeros
    parts = parts.slice(0, parts.rindex{|e| e != 0}.to_i + 1)
    return nil if parts[0] == 0  # empty date fields set

    DateTime.new(*parts)
  end

  # POST /scores
  # POST /scores.json
  def create

    if params[:score][:scaled] == 1.to_s
      params[:score][:scaled] = true
    else
      params[:score][:scaled] = false
    end

    if params[:score][:personal_record] == 1.to_s
      params[:score][:personal_record] = true
    else
      params[:score][:personal_record] = false
    end
    
    params[:score][:training_day] = date_from_date_select_fields(params[:score], 'training_day')
    params[:score].delete("training_day(1i)")
    params[:score].delete("training_day(2i)")
    params[:score].delete("training_day(3i)")

    @score = Score.new(score_params)

    # Need to find gymday by :training_day
    @score.gymday = Gymday.find_by(gym_date: Date.today)

    if user_signed_in?
     @score.user = current_user
    end 
#    @score.user = User.find_by(id: params[:score][:user])

    respond_to do |format|
      if @score.save
        format.html { redirect_to @score, notice: 'Score was successfully created.' }
        format.json { render action: 'show', status: :created, location: @score }
      else
        format.html { render action: 'new' }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scores/1
  # PATCH/PUT /scores/1.json
  def update
    respond_to do |format|
      if @score.update(score_params)
        format.html { redirect_to @score, notice: 'Score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scores/1
  # DELETE /scores/1.json
  def destroy
    @score.destroy
    respond_to do |format|
      format.html { redirect_to scores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score
      @score = Score.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def score_params
      params.require(:score).permit(:value, :scaled, :personal_record, :training_day, :training_time, :user)
    end
end
