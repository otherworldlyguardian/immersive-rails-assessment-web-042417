class AppearancesController < ApplicationController
  before_action :authenticate

  def new
    @appearance = Appearance.new
  end

  def create
    ap = Appearance.new(params.permit(:rating))
    ap.guest = Guest.find_by(params.permit(:rating))
    ap = Appearance.new(params.permit(:rating))
    byebug
  end
end
