class ScoreboardController < ApplicationController
  def index
    @players = Player.all.includes(:category, :scores, :wods).order("categories.name").group_by(&:category)
  end
end
