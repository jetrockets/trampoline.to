# frozen_string_literal: true

class Admin::SlotsController < Admin::BaseController  
  def index
    @slots=Slot.all
  end

  def show
  end
end
