class CasesController < ApplicationController
  def index
    @cases = Case.all
  end
  def show
    
  end
end
