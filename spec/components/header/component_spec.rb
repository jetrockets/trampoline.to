# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Header::Component, type: :component do
  subject { rendered_component }

  before do
    render_inline(described_class.new)
  end

  it { is_expected.to have_css '.logo' }
  it { is_expected.to have_link 'Мероприятия' }
  it { is_expected.to have_link 'Спикеры' }
  it { is_expected.to have_link 'Контакты' }
  it { is_expected.to have_link 'Записаться' }
end
