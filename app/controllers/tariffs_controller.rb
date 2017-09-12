class TariffsController < ApplicationController
  def show
    @tariff = Tariff.find(params[:id])
    respond_to do |format|
      format.js {render :file => "pages/auditing/show.js.erb"}
    end
  end
end
