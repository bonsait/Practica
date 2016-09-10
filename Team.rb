=begin


=end

class Team  

=begin
Global settings
@@gainedPoints 	: amount of points gained 
=end
 
@@scoreValue = 10
@dateCreated
@players 
@wins = 0
@loses = 0
@score = 0
@faults = 0
@outsides = 0
@passes = 0
@locks = 0
@interceptions = 0
@entries = 0
@averagePosession = 0
@goalsPerGame = 0
@totalGoals = 0
@passAccuracy = 0
@shotsPerGame = 0
@tacklesPerGame = 0
@dribblesPerGame = 0
@discipline = 0
@yellowCards = 0
@redCards = 0
@gamesPlayed = 0
@tournamentsPlayed = 0 


#Access Attributes

	attr_writer :name, :dateCreated #,attrib2,attrib3,...
	attr_reader :name, :dateCreated #,attrib2,attrib3,...
	
# initial method
	
	def initialize(pName,pDateCreated)
		@name 				=			pName
		
		@dateCreated		=			pDateCreated
		
	end
	
# methods

private
	

	def name=(pName)
		@name 					= 		pName
	end
	
	def Setplayers=(pPlayers)
		@players 				= 		pPlayers
	end	
	
	
	def increaseWins(pWins = 1)
		@wins 					+= 	pWins
	end
	
	def increaseLoses(pLose = 1)
		@loses 					+= 	pLoses
	end
	
	def increaseScore(pScore = 1)
		@score 					+= 	pScore						#calculated
	end
	
	def calculatedFaults(pFaults = 1)
		@faults					+=		pFaults
	end
	
	def increaseOutsides(pOutsides = 1)
		@outsides				+=		pOutsides
	end
	
	def increasePasses(pPasses = 1)
		@passes					+=		pPasses
	end
	
	def increaseLocks(pLocks = 1)
		@locks					+=		pLocks
	end
	
	def increaseInterceptions(pInterceptions = 1)
		@interceptions			+=		pInterceptions
	end
	
	def increaseEntries(pEntries)
		@entries					+=		pEntries
	end
	
	def calculateAveragePosession(pAveragePosession)	      #calculated
		@averagePosession		+=  	pAveragePosession
	end
		
	def increaseGoalsPerGame(pGoalsPerGame)				   #calculated
		@goalsPerGame			+=		pGoalsPerGame
	end
	
	def totalGoals(pTotalGoals)
		@totalGoals				+=		pTotalGoals
	end
	
	def calculatePassAccuracy(pPassAccuracy)				 #calculated
		@passAccuracy			+=		pPassAccuracy
	end
	
	def calculateShotsPerGame(pShotsPerGame)				 #calculated
		@shotsPerGame			+=		pShotsPerGame
	end
	
	def calculateTacklesPerGame(pTacklesPerGame)			#calculated
		@tacklesPerGame		+=		pTacklesPerGame
	end
	
	def calculateDribblesPerGame(pDribblesPerGame)		#calculated
		@dribblesPerGame = pDribblesPerGame
	end
	
	def calculateDiscipline()							    #calculated
			
	end
	
	def increaseYellowCards(pYellowCards = 1)
		@yellowCards 		     +=    pYellowCards			
	end
	
	def increaseRedCards(pRedCards = 1)
		@redCards 				   +=	   pRedCards			
	end
	
	def increaseGamesPlayed(pGamesPlayed = 1)
		@gamesPlayed			   += 	 pGamesPlayed
	end
	
	def increaseTournamentsPlayed(pTournamentsPlayed = 1)						
		@tournamentsPlayed	       +=	 pTournamentsPlayed	
	end
	
	
	
	
	

    
public
    
   	def deletePlayer(pPlayer)
        if (pPlayer.nil?)
	       puts "Can not delete Player. Player is null"
        elsif (@players.nil?)
            puts "Can not delete Player. Team has no players"
        elsif (!@players.include?(pPlayer))
            puts "Can not delete Player. Player is not included"
        else
            @players.delete(pPlayer)
            puts "Player deleted successfuly"
        end
        
	end	
    
    def showPlayers()
        if !(@players.empty? | @players.nil?)
            @players.each{
                |p| print p," "
                }
            puts 
        else
            puts "Team has no players"
        end
	end
    
    def addPlayer(pPlayer)
       
        
        if (pPlayer.nil?)
	       puts "Can not add Player. Player is null"
        elsif (@players.nil?)
            @players = Array.new(1,pPlayer)
        elsif (@players.include?(pPlayer))
            puts "Can not add Player. Player is already included"
        else
            @players << pPlayer
            
        end
        
        
	end
	
	
end


a = Team.new("Equipo A","06/06/94")
a.addPlayer(5)
a.addPlayer(5)
a.addPlayer(4)
a.addPlayer(4)
a.addPlayer(3)
a.addPlayer(2)
a.addPlayer(1)

a.showPlayers()

a.deletePlayer(5)
a.deletePlayer(5)
a.deletePlayer(4)
a.deletePlayer(4)
a.deletePlayer(3)
a.deletePlayer(2)
a.deletePlayer(1)
a.deletePlayer(0)

a.showPlayers()





