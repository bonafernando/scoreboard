class Player < ApplicationRecord
  belongs_to :category
  has_many :scores, -> { includes :wods }
  has_many :wods, through: :scores

  def points
    scores.sum(&:points)
  end

  def time
    scores.sum(&:time) || Time.new(0)
  end
end
