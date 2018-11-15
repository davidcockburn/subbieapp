class SubContractorsController < ApplicationController
  before_action :set_sub_contractor, only: [:show, :edit, :update, :destroy]

  # GET /sub_contractors
  # GET /sub_contractors.json
  def index
    @sub_contractors = SubContractor.all
  end

  # GET /sub_contractors/1
  # GET /sub_contractors/1.json
  def show
  end

  # GET /sub_contractors/new
  def new
    @sub_contractor = SubContractor.new
  end

  # GET /sub_contractors/1/edit
  def edit
  end

  # POST /sub_contractors
  # POST /sub_contractors.json
  def create
    @sub_contractor = SubContractor.new(sub_contractor_params)

    respond_to do |format|
      if @sub_contractor.save
        format.html { redirect_to @sub_contractor, notice: 'Sub contractor was successfully created.' }
        format.json { render :show, status: :created, location: @sub_contractor }
      else
        format.html { render :new }
        format.json { render json: @sub_contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_contractors/1
  # PATCH/PUT /sub_contractors/1.json
  def update
    respond_to do |format|
      if @sub_contractor.update(sub_contractor_params)
        format.html { redirect_to @sub_contractor, notice: 'Sub contractor was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_contractor }
      else
        format.html { render :edit }
        format.json { render json: @sub_contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_contractors/1
  # DELETE /sub_contractors/1.json
  def destroy
    @sub_contractor.destroy
    respond_to do |format|
      format.html { redirect_to sub_contractors_url, notice: 'Sub contractor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_contractor
      @sub_contractor = SubContractor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_contractor_params
      params.fetch(:sub_contractor, {})
    end
end
