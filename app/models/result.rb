class Result < ApplicationRecord
  validates :name, presence: true
  validates :score, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :time, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
