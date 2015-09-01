class WhateversController < ApplicationController
  before_action :set_whatever, only: [:show, :edit, :update, :destroy]

  # GET /whatevers
  # GET /whatevers.json
  def index
    @whatevers = Whatever.all
  end

  # GET /whatevers/1
  # GET /whatevers/1.json
  def show
  end

  # GET /whatevers/new
  def new
    @whatever = Whatever.new
  end

  # GET /whatevers/1/edit
  def edit
  end

  # POST /whatevers
  # POST /whatevers.json
  def create
    @whatever = Whatever.new(whatever_params)

    respond_to do |format|
      if @whatever.save
        format.html { redirect_to @whatever, notice: 'Whatever was successfully created.' }
        format.json { render :show, status: :created, location: @whatever }
      else
        format.html { render :new }
        format.json { render json: @whatever.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whatevers/1
  # PATCH/PUT /whatevers/1.json
  def update
    respond_to do |format|
      if @whatever.update(whatever_params)
        format.html { redirect_to @whatever, notice: 'Whatever was successfully updated.' }
        format.json { render :show, status: :ok, location: @whatever }
      else
        format.html { render :edit }
        format.json { render json: @whatever.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whatevers/1
  # DELETE /whatevers/1.json
  def destroy
    @whatever.destroy
    respond_to do |format|
      format.html { redirect_to whatevers_url, notice: 'Whatever was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whatever
      @whatever = Whatever.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whatever_params
      params.require(:whatever).permit(:title, :year, :available)
    end
end
