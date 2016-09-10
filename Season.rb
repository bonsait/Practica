class Season
    attr_accessor :name,:league, :year, :numberOfTeams, :numberOfGames, :lastUpdated
    
    def initialize(pName)
        @name = pName
    end
    
    def initialize(pName,pLeague,pYear,pNumberofTeams,pNumberOfGames,pLastUpdated)
        @name = pName
        @league = pLeague
        @year = pYear
        @numberOfTeams = pNumberofTeams
        @numberOfGames = pNumberOfGames
        @lastUpdated = pLastUpdated
    end
    
    

end