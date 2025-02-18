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

  describe '#long_term_players method' do
    it 'will show you all the long term players' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)

      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.long_term_players).to eq([player_1, player_3])
    end
  end

  describe '#short_term_players method' do
    it 'will show you all the short term players' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)

      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.short_term_players).to eq([player_2, player_4])
    end
  end

  describe '#total_value method' do
    it 'will show the total cost of every players contracts' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)

      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.total_value).to eq(85200000)
    end
  end

  describe '#details method' do
    it 'will show the total cost of every players contracts, and the player count' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)

      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.details).to eq({"total_value" => 85200000, "player_count" => 4})
    end
  end

  describe '#average_cost_of_player' do
    xit 'will determine the average cost of every player' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)

      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      team.average_cost_of_player

      expect(team.average_cost_of_player).to eq("$21,300,000")
    end
  end
end