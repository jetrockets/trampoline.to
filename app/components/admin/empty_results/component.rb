# frozen_string_literal: true

class Admin::EmptyResults::Component < Admin::BaseComponent
  def initialize(title:, url:, **options)
    super(**options)
    @title = title
    @url = url
  end
end
