class Team < ActiveRecord::Base
  attr_accessible :attended, :away_team, :date, :home_team, :league, :time
end
