# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Footer::Component, type: :component do
  subject { rendered_component }

  before do
    render_inline(described_class.new)
  end

  it { is_expected.to have_link href: 'mailto:hello@trampoline.to' }
  it { is_expected.to have_link href: 'https://www.facebook.com/trampoline.to' }
  it { is_expected.to have_link href: 'https://www.instagram.com/trampoline.to' }
  it { is_expected.to have_link href: 'https://twitter.com/trampoline_to' }
  it { is_expected.to have_link href: 'https://www.youtube.com/channel/UCZ3PR3LHKJ8akrKDPJ8dEVA' }
  it { is_expected.to have_link href: 'https://vk.com/trampoline_meet_up' }
  it { is_expected.to have_link href: 'https://www.meetup.com/trampoline-meetups' }
end
