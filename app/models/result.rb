class Result < ApplicationRecord
  validates :name, presence: true
  validates :score, presence: true
  validates :time, presence: true
end
