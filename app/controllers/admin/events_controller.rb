# frozen_string_literal: true

class Admin::EventsController < Admin::BaseController  
  def index
    @events=Event.all
  end

  def show
  end
end
