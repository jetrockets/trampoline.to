class Admin::SpeakersController < Admin::BaseController
  def index
    @speakers=Speaker.all
  end

  def show
  end

  def new
  end
end
