class Player < ApplicationRecord
  belongs_to :category
  has_many :scores, -> { includes :wods }
  has_many :wods, through: :scores

  def points
    scores.map(&:points).compact.sum
  end

  def time
    sum = scores.map(&:time).compact.sum
    return nil if sum == 0
    sum
  end
end
