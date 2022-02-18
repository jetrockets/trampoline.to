# frozen_string_literal: true

class Slot < ApplicationRecord
  belongs_to :event
  belongs_to :speaker

  validates :position, presence: true, inclusion: { in: [1, 2] }
end
