# frozen_string_literal: true

class SpeakerCard::Component < ApplicationComponent
  def initialize(tag: nil, classes: nil, name:, description:, img_url: 'logo-textless.svg',  **options)
    super(tag:, classes:, **options)
    @name = name
    @description = description
    @img_url = img_url
  end
end
