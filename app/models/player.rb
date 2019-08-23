class Player < ApplicationRecord
  belongs_to :category
  has_many :scores
  has_many :wods, through: :scores
end
