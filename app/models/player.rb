class Player < ApplicationRecord
  belongs_to :category
  has_many :scores, -> { includes :wods }
  has_many :wods, through: :scores

  def points
    scores.map(&:points).compact.sum
  end

  def time
    scores.map(&:time).compact.sum
  end
end
