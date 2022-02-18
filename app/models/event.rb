# frozen_string_literal: true

class Event < ApplicationRecord
  has_many :slots, dependent: :destroy
  has_many :speakers, through: :slots

  validates :date, presence: true
end
