# frozen_string_literal: true

class SpeakerCard::Main::Component < ApplicationComponent
  def initialize(name:, description:, tag: nil, classes: nil, img_url: 'logo-textless.svg', **options)
    super(tag:, classes:, **options)
    @name = name
    @description = description
    @img_url = img_url
  end
end
