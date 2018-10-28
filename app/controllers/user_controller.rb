class UserController < ApplicationController
  before_action :set_item, only: [:show]

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @user = User.find(params[:id])
    end
end
