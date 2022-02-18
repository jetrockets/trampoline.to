
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Speaker, type: :model do
  subject(:speaker) { build(:speaker) }

  it { is_expected.to be_valid }
end