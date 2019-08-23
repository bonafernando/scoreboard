class Score < ApplicationRecord
  belongs_to :player
  belongs_to :wod

  default_scope { includes(:player, :wod).order(:created_at) }
end
