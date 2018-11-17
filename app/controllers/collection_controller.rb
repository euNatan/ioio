class CollectionController < ApplicationController
  before_action :set_item, only: [:show]

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @collection = Collection.find(params[:id])
      @collection_item = Collection.find(params[:id]).items.actives.order("code asc")
    end

end
