class FiledsController < ApplicationController
  before_action :set_filed, only: [:show, :edit, :update, :destroy]

  # GET /fileds
  # GET /fileds.json
  def index
    @fileds = Filed.all
  end

  # GET /fileds/1
  # GET /fileds/1.json
  def show
  end

  # GET /fileds/new
  def new
    @filed = Filed.new
  end

  # GET /fileds/1/edit
  def edit
  end

  # POST /fileds
  # POST /fileds.json
  def create
    @filed = Filed.new(filed_params)

    respond_to do |format|
      if @filed.save
        format.html { redirect_to @filed, notice: 'Filed was successfully created.' }
        format.json { render :show, status: :created, location: @filed }
      else
        format.html { render :new }
        format.json { render json: @filed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fileds/1
  # PATCH/PUT /fileds/1.json
  def update
    respond_to do |format|
      if @filed.update(filed_params)
        format.html { redirect_to @filed, notice: 'Filed was successfully updated.' }
        format.json { render :show, status: :ok, location: @filed }
      else
        format.html { render :edit }
        format.json { render json: @filed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fileds/1
  # DELETE /fileds/1.json
  def destroy
    @filed.destroy
    respond_to do |format|
      format.html { redirect_to fileds_url, notice: 'Filed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filed
      @filed = Filed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filed_params
      params.require(:filed).permit(:Service, :Company, :address, :phone, :website)
    end
end
