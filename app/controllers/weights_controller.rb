class WeightsController < ApplicationController
  before_action :set_weight, only: [:show, :edit, :update, :destroy]

  # GET /weights
  # GET /weights.json
  def index
    @person = Person.find(params[:person_id])
    @weights = @person.weights
  end

  # GET /weights/1
  # GET /weights/1.json
  def show
  end

  # GET /weights/new
  def new
    @person = Person.find(params[:person_id])
    @people = Person.all
    @weight = Weight.new
  end

  # GET /weights/1/edit
  def edit
    @people = Person.all
  end

  # POST /weights
  # POST /weights.json
  def create
    @weight = Weight.new(weight_params)
    @person = Person.find(params[:person_id])
    @weight.person_id = @person.id
    @person.weight = @weight.weight
    @person.save
    respond_to do |format|
      if @weight.save
        format.html { redirect_to @person, notice: 'Weight was successfully created.' }
        format.json { render action: 'show', status: :created, location: @weight }
      else
        format.html { render action: 'new' }
        format.json { render json: @weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weights/1
  # PATCH/PUT /weights/1.json
  def update
    respond_to do |format|
      if @weight.update(weight_params)
        @person = Person.find(params[:person_id])
        format.html { redirect_to @person, notice: 'Weight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weights/1
  # DELETE /weights/1.json
  def destroy
    @weight.destroy
    @person = Person.find(params[:person_id])
    respond_to do |format|
      format.html { redirect_to person_weights_path(@person) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight
      @person = Person.find(params[:person_id])
      @weight = Weight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weight_params
      params.require(:weight).permit(:person_id, :weight)
    end
end
