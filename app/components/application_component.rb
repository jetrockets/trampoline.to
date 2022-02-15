# frozen_string_literal: true

class ApplicationComponent < ViewComponent::Base
  include ActionPolicy::Behaviour
  include ::Components::FetchOrFallbackHelper
  include ::Components::ClassNamesHelper

  authorize :member, through: :current_member

  def initialize(tag: nil, classes: nil, **options)
    @tag = tag || :div
    @classes = classes
    @options = options
  end

  def call
    content_tag(@tag, content, class: @classes, **@options) if @tag
  end

  def current_member
    RequestStore.store[:current_member]
  end

  def current_company
    RequestStore.store[:current_company]
  end
end
