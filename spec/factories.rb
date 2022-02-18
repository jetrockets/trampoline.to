# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    date { Faker::Date.between(from: 1.year.ago, to: 1.year.after) }
    starts_at { Time.parse('16:00 UTC') }
    location_description { 'Офис JetRockets' }
    location_address { 'Тверь, 15 лет Октября, 10б' }

    factory :published_event do
      published_at { 1.day.ago }
    end
  end

  factory :speaker do
    name { Faker::Name.name }
    bio { Faker::Lorem.paragraph }
    company { Faker::Company.name  }
    position { Faker::Job.title }
  end
end