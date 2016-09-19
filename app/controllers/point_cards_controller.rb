class PointCardsController < ApplicationController
  before_action :set_point_card, only: [:show, :edit, :update, :destroy]

  # GET /point_cards
  # GET /point_cards.json
  def index
    @point_cards = PointCard.all
  end

  # GET /point_cards/1
  # GET /point_cards/1.json
  def show
  end

  # GET /point_cards/new
  def new
    @point_card = PointCard.new
  end

  # GET /point_cards/1/edit
  def edit
  end

  # POST /point_cards
  # POST /point_cards.json
  def create
    @point_card = PointCard.new(point_card_params)

    respond_to do |format|
      if @point_card.save
        format.html { redirect_to @point_card, notice: 'Point card was successfully created.' }
        format.json { render :show, status: :created, location: @point_card }
      else
        format.html { render :new }
        format.json { render json: @point_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /point_cards/1
  # PATCH/PUT /point_cards/1.json
  def update
    respond_to do |format|
      if @point_card.update(point_card_params)
        format.html { redirect_to @point_card, notice: 'Point card was successfully updated.' }
        format.json { render :show, status: :ok, location: @point_card }
      else
        format.html { render :edit }
        format.json { render json: @point_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /point_cards/1
  # DELETE /point_cards/1.json
  def destroy
    @point_card.destroy
    respond_to do |format|
      format.html { redirect_to point_cards_url, notice: 'Point card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point_card
      @point_card = PointCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def point_card_params
      params.require(:point_card).permit(:point, :user_id)
    end
end
