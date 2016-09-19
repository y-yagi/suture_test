class PointCards::AddController < ApplicationController
  before_action :set_point_card, only: [:edit, :update]

  def edit
  end

  def update
    calc = Calculator.new

    add_point = Suture.create(:add,
      old: calc.method(:add),
#      new: calc.method(:new_add),
      args: [params[:left].to_i, params[:right].to_i],
#      call_both: true,
      record_calls: true
    )

    @point_card.update!(point: @point_card.point + add_point)

    redirect_to point_cards_url, notice: 'Point card was successfully updated.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point_card
      @point_card = PointCard.find(params[:point_card_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def point_card_params
      params.require(:point_card).permit(:point, :user_id)
    end
end
