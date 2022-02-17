# frozen_string_literal: true

class Speaker < ApplicationRecord
  has_many :slots, dependent: :destroy
  has_many :slots, through: :slots
end
