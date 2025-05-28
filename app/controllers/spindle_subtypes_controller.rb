class SpindleSubtypesController < ApplicationController
  before_action :set_spindle_subtype, only: [:show, :edit, :update, :destroy]

  # GET /spindle_subtypes
  # GET /spindle_subtypes.json
  def index
    spindle_subtypes = SpindleSubtype.all.order_by(:cluster_id => 'asc')
    @subtypes_json = []
    @subtypes_num = spindle_subtypes.length
    @subtypes_json = spindle_subtypes.to_json
  end

  # GET /spindle_subtypes/1
  # GET /spindle_subtypes/1.json
  def show
  end

  # GET /spindle_subtypes/new
  def new
    @spindle_subtype = SpindleSubtype.new
  end

  # GET /spindle_subtypes/1/edit
  def edit
  end

  # POST /spindle_subtypes
  # POST /spindle_subtypes.json
  def create
    @spindle_subtype = SpindleSubtype.new(spindle_subtype_params)

    respond_to do |format|
      if @spindle_subtype.save
        format.html { redirect_to @spindle_subtype, notice: 'Spindle subtype was successfully created.' }
        format.json { render :show, status: :created, location: @spindle_subtype }
      else
        format.html { render :new }
        format.json { render json: @spindle_subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spindle_subtypes/1
  # PATCH/PUT /spindle_subtypes/1.json
  def update
    respond_to do |format|
      if @spindle_subtype.update(spindle_subtype_params)
        format.html { redirect_to @spindle_subtype, notice: 'Spindle subtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @spindle_subtype }
      else
        format.html { render :edit }
        format.json { render json: @spindle_subtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spindle_subtypes/1
  # DELETE /spindle_subtypes/1.json
  def destroy
    @spindle_subtype.destroy
    respond_to do |format|
      format.html { redirect_to spindle_subtypes_url, notice: 'Spindle subtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spindle_subtype
      @spindle_subtype = SpindleSubtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spindle_subtype_params
      params.require(:spindle_subtype).permit(:cluster_id, :cluster_no, :count)
    end
end
