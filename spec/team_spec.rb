require './lib/player'
require './lib/team'

RSpec.describe '#team class' do

    it 'exists' do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team).to be_a(Team)
    end

    it 'has a team name' do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team.team_name).to eq("Dodgers")
    end

    it 'has a home city' do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team.city).to eq("Los Angeles")
    end

    it 'has a roster' do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team.roster).to eq([])
    end

  describe '#player_count method' do
    it 'will count how many players are on the roster' do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team.player_count).to eq(0)
    end
  end

  describe '#add_player method' do
    it 'will add a player to the roster' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)

      team.add_player(player_1)
      team.add_player(player_2)

      expect(team.player_count).to eq(2)
    end
  end
end