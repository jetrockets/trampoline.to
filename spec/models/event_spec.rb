
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  subject(:event) { build(:event) }

  it { is_expected.to be_valid }
end