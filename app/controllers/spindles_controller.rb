class SpindlesController < ApplicationController
  before_action :set_spindle, only: [:show, :edit, :update, :destroy]
  include SpindlesHelper

  # GET /spindles
  # GET /spindles.json
  def index
    spindles = Spindle.all.order_by(:spindle_id => 'asc')
    @spindles_json = []
    @spindles_num = spindles.length
    @spindles_json = spindles.to_json
  end

  # GET /spindles/1
  # GET /spindles/1.json
  def show
    @spindle_id = params[:spindle_id];
    if @spindle_id.nil?
      return
    end
    low_filter = 8
    high_filter = 17

    # sig_all = SpindleSignal.all
    # max_all = -1000000
    # min_all = 1000000
    # sig_all.each do |s|
    #   tmp = s.fragments.split(",").map(&:to_f)
    #   max = tmp.max
    #   min = tmp.min
    #   if(max > max_all)
    #     max_all = max
    #   end
    #   if(min < min_all)
    #     min_all = min
    #   end
    # end
    # p max_all
    # p min_all
    # dasd

    spindles = Spindle.where(spindle_id: @spindle_id).first
    # channel_labels = SpindleSignal.where(spindle_id: spindle_id).pluck(:channel_label).uniq
    @cluster_id = spindles.cluster_id
    @fs = spindles.fs
    @units = []
    @start_rec_time = "00:00:00"
    columns = ["index"]
    start_index = 1
    signals = []
    chan = spindles.main_channel
    if !params[:channel].nil?
      chan = params[:channel]
    end

    columns << "rating"
    @units.push("")
    sig = SpindleSignal.where(spindle_id:@spindle_id, channel_label: chan).first.fragments.split(",").map(&:to_f)
    sig = bandPassFilter(sig, @fs, low_filter, high_filter);
    signals.push(sig)
    scale_len_max = signals[0].size
    @data = []
    for i in 1..scale_len_max
      row = {}
      columns.each_with_index do|c, i_c|
        if i_c == 0
          row[c] = "%07d" % i
        else
          row[c] = signals[i_c-1][i-1]
        end
      end
      @data << row
    end
  end

  def expertshow
    @spindle_id = params[:spindle_id];
    if @spindle_id.nil?
      return
    end
    spindles = Spindle.where(spindle_id: @spindle_id).first
    channel_labels = SpindleSignal.where(spindle_id: @spindle_id).pluck(:channel_label).uniq
    if !params[:channel].nil?
      channel_labels = [params[:channel]]
    end
    @cluster_id = spindles.cluster_id
    @fs = spindles.fs
    @units = []
    @start_rec_time = "00:00:00"
    @duration = spindles.duration
    @main_frequency = spindles.frequency
    columns = ["index"]
    start_index = 1
    signals = []
    channel_labels.each do |chan|
      columns << chan.strip.gsub("-","—")
      @units.push("uv")
      sig = SpindleSignal.where(spindle_id:@spindle_id, channel_label: chan).first.fragments.split(",").map(&:to_f)
      signals.push(sig)
    end
    scale_len_max = signals[0].size
    @data = []
    for i in 1..scale_len_max
      row = {}
      columns.each_with_index do|c, i_c|
        if i_c == 0
          row[c] = "%07d" % i
        else
          row[c] = signals[i_c-1][i-1]
        end
      end
      @data << row
    end
    # @data = @data.to_json
  end

  # GET /spindles/new
  def new
    @spindle = Spindle.new
  end

  # GET /spindles/1/edit
  def edit
  end

  # POST /spindles
  # POST /spindles.json
  def create
    @spindle = Spindle.new(spindle_params)

    respond_to do |format|
      if @spindle.save
        format.html { redirect_to @spindle, notice: 'Spindle was successfully created.' }
        format.json { render :show, status: :created, location: @spindle }
      else
        format.html { render :new }
        format.json { render json: @spindle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spindles/1
  # PATCH/PUT /spindles/1.json
  def update
    respond_to do |format|
      if @spindle.update(spindle_params)
        format.html { redirect_to @spindle, notice: 'Spindle was successfully updated.' }
        format.json { render :show, status: :ok, location: @spindle }
      else
        format.html { render :edit }
        format.json { render json: @spindle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spindles/1
  # DELETE /spindles/1.json
  def destroy
    @spindle.destroy
    respond_to do |format|
      format.html { redirect_to spindles_url, notice: 'Spindle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spindle
      @spindle = Spindle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spindle_params
      params.require(:spindle).permit(:patient_id, :spindle_id)
    end
end
