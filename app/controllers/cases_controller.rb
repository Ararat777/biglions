class CasesController < ApplicationController
  def index
    @cases = Case.all
  end
  def show
    render layout: 'portfolio'
  end
end
