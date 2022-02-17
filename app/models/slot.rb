# frozen_string_literal: true

class Slot < ApplicationRecord
  belongs_to :event
  belongs_to :speaker
end
