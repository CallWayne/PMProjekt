class EffortCategoriesController < ApplicationController
  before_action :set_effort_category, only: [:show, :edit, :update, :destroy]

  # GET /effort_categories
  # GET /effort_categories.json
  def index
    @effort_categories = EffortCategory.all
  end

  # GET /effort_categories/1
  # GET /effort_categories/1.json
  def show
  end

  # GET /effort_categories/new
  def new
    @effort_category = EffortCategory.new
  end

  # GET /effort_categories/1/edit
  def edit
  end

  # POST /effort_categories
  # POST /effort_categories.json
  def create
    @effort_category = EffortCategory.new(effort_category_params)

    respond_to do |format|
      if @effort_category.save
        format.html { redirect_to @effort_category, notice: 'Effort category was successfully created.' }
        format.json { render :show, status: :created, location: @effort_category }
      else
        format.html { render :new }
        format.json { render json: @effort_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /effort_categories/1
  # PATCH/PUT /effort_categories/1.json
  def update
    respond_to do |format|
      if @effort_category.update(effort_category_params)
        format.html { redirect_to @effort_category, notice: 'Effort category was successfully updated.' }
        format.json { render :show, status: :ok, location: @effort_category }
      else
        format.html { render :edit }
        format.json { render json: @effort_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /effort_categories/1
  # DELETE /effort_categories/1.json
  def destroy
    @effort_category.destroy
    respond_to do |format|
      format.html { redirect_to effort_categories_url, notice: 'Effort category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_effort_category
      @effort_category = EffortCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def effort_category_params
      params.require(:effort_category).permit(:value, :description)
    end
end
