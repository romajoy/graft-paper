class Person < ApplicationRecord
    validates :name, presence: true
    enum matched_on: { bumble: 0, hinge: 1, tinder: 2, okcupid: 3, cmb: 4}
    has_many :meetups
  end