require 'football__data'
require 'pp'
require 'json'
require_relative 'Season'

FootballData.configure do |config|
    # get api key at 'http://api.football-data.org/register'
    config.api_key = 'dbccb6579fe34848af03ce120e62e431'

    # default api version is 'alpha' if not setted
    config.api_version = 'alpha'

    # the default control method is 'full' if not setted
    # see request section on 'http://api.football-data.org/documentation'
    config.response_control = 'minimized'
end

# GET 'http://api.football-data.org/v1/soccerseasons'
res = FootballData.fetch(:soccerseasons)
seasons = Array.new
res.each do |season|
    
    seasons  << Season.new(season['caption'],season['league'],season['year'],season['numberOfTeams'],season['numberOfGames'],season['lastUpdated'])
end
=begin
pp "#{season['caption']}   #{season['league']}    #{season['year']}  #{season['numberOfTeams']} #{season['numberOfGames']} #{season['lastUpdated']}"
=end

pp seasons

#puts res
# GET 'http://api.football-data.org/v1/soccerseasons/398/leagueTable'
res = FootballData.fetch(:soccerseasons, :leagueTable, id: 398)

# GET 'http://api.football-data.org/v1/soccerseasons/398/fixtures?matchday=8'
res = FootballData.fetch(:soccerseasons, :fixtures, id: 398, matchday: 8)

res = FootballData.fetch(:teams, :players, id: 57)

#pp res['players'].find{|player| player['dateOfBirth'] =~ /1990/i}

# {"id"=>1967,
# "name"=>"Mesut Özil",
# "position"=>"Attacking Midfield",
# "jerseyNumber"=>11,
# "dateOfBirth"=>"1988-10-15",
# "nationality"=>"Germany",
# "contractUntil"=>"2018-06-30",
# "marketValue"=>"40,000,000 €"}