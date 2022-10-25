require './lib/team'

class Team

  attr_reader :team_name, :city, :roster

  def initialize(team_name, city)
    @team_name = team_name
    @city = city
    @roster = []
  end

  def player_count
    @roster.count
  end

  def add_player(player)
    @roster << player
  end

  def long_term_players
    long_termers = []
    @roster.each do |player|
      if player.contract_length > 24
        long_termers << player
      end
    end
    long_termers
  end

  def short_term_players
    short_termers = []
    @roster.each do |player|
      if player.contract_length <= 24
        short_termers << player
      end
    end
    short_termers
  end



end