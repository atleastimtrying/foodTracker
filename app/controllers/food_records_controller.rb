class FoodRecordsController < ApplicationController
  before_action :set_food_record, only: [:show, :edit, :update, :destroy]

  # GET /food_records
  # GET /food_records.json
  def index
    @food_records = FoodRecord.all
  end

  # GET /food_records/1
  # GET /food_records/1.json
  def show
  end

  # GET /food_records/new
  def new
    @food_record = FoodRecord.new
  end

  # GET /food_records/1/edit
  def edit
  end

  # POST /food_records
  # POST /food_records.json
  def create
    @food_record = FoodRecord.new(food_record_params)

    respond_to do |format|
      if @food_record.save
        format.html { redirect_to @food_record, notice: 'Food record was successfully created.' }
        format.json { render action: 'show', status: :created, location: @food_record }
      else
        format.html { render action: 'new' }
        format.json { render json: @food_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_records/1
  # PATCH/PUT /food_records/1.json
  def update
    respond_to do |format|
      if @food_record.update(food_record_params)
        format.html { redirect_to @food_record, notice: 'Food record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @food_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_records/1
  # DELETE /food_records/1.json
  def destroy
    @food_record.destroy
    respond_to do |format|
      format.html { redirect_to food_records_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_record
      @food_record = FoodRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_record_params
      params.require(:food_record).permit(:name, :points, :weight)
    end
end
