class EndorseesController < ApplicationController
  before_action :set_endorsee, only: [:show, :edit, :update, :destroy]

  # GET /endorsees
  # GET /endorsees.json
  def index
    @endorsees = Endorsee.all
  end

  # GET /endorsees/1
  # GET /endorsees/1.json
  def show
  end

  # GET /endorsees/new
  def new
    @endorsee = Endorsee.new
  end

  # GET /endorsees/1/edit
  def edit
  end

  # POST /endorsees
  # POST /endorsees.json
  def create
    @endorsee = Endorsee.new(endorsee_params)

    respond_to do |format|
      if @endorsee.save
        format.html { redirect_to @endorsee, notice: 'Endorsee was successfully created.' }
        format.json { render action: 'show', status: :created, location: @endorsee }
      else
        format.html { render action: 'new' }
        format.json { render json: @endorsee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /endorsees/1
  # PATCH/PUT /endorsees/1.json
  def update
    respond_to do |format|
      if @endorsee.update(endorsee_params)
        format.html { redirect_to @endorsee, notice: 'Endorsee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @endorsee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endorsees/1
  # DELETE /endorsees/1.json
  def destroy
    @endorsee.destroy
    respond_to do |format|
      format.html { redirect_to endorsees_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endorsee
      @endorsee = Endorsee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def endorsee_params
      params.require(:endorsee).permit(:link, :image)
    end
end
