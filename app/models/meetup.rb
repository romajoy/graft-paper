class Meetup < ApplicationRecord
    belongs_to :person
    belongs_to :location
  end

