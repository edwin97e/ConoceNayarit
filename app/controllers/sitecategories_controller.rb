class SitecategoriesController < ApplicationController
  before_action :set_sitecategory, only: [:show, :edit, :update, :destroy]

  # GET /sitecategories
  # GET /sitecategories.json
  def index
    @sitecategories = Sitecategory.all
  end

  # GET /sitecategories/1
  # GET /sitecategories/1.json
  def show
  end

  # GET /sitecategories/new
  def new
    @sitecategory = Sitecategory.new
  end

  # GET /sitecategories/1/edit
  def edit
  end

  # POST /sitecategories
  # POST /sitecategories.json
  def create
    @sitecategory = Sitecategory.new(sitecategory_params)

    respond_to do |format|
      if @sitecategory.save
        format.html { redirect_to @sitecategory, notice: 'Sitecategory was successfully created.' }
        format.json { render :show, status: :created, location: @sitecategory }
      else
        format.html { render :new }
        format.json { render json: @sitecategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sitecategories/1
  # PATCH/PUT /sitecategories/1.json
  def update
    respond_to do |format|
      if @sitecategory.update(sitecategory_params)
        format.html { redirect_to @sitecategory, notice: 'Sitecategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @sitecategory }
      else
        format.html { render :edit }
        format.json { render json: @sitecategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sitecategories/1
  # DELETE /sitecategories/1.json
  def destroy
    @sitecategory.destroy
    respond_to do |format|
      format.html { redirect_to sitecategories_url, notice: 'Sitecategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sitecategory
      @sitecategory = Sitecategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sitecategory_params
      params.require(:sitecategory).permit(:name)
    end
end
