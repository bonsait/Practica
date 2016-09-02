=begin


=end
class Team
=begin
Global settings
@@gainedPoints 	: amount of points gained 
=end
@@scoreValue = 10

@wins = 0
@fails = 0
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

	attr_writer :name #,attrib2,attrib3,...
	attr_reader :name #,attrib2,attrib3,...
	
# initial method

	def initialize(pWins,pFails,pScore,pFaults,pOutsides,pPasses,pLocks,pInterceptions,pEntries,
	pAveragePosession,pGoalsPerGame,pTotalGoals,pPassAccuracy,pShotsPerGame,sTacklesPerGame,
	pDribblesPerGame,pDiscipline,pYellowCards,pRedCards,pGamesPlayed,pTournamentsPlayed,pName,pPlayers)
		@wins			=	pWins									
		@fails		= 	pFails								
		@score		=	pScore								
		@faults		=	pFaults								
		@outsides	= 	pOutsides							
		@passes		=	pPasses								
		@locks		=	pLocks								
		@interceptions	=	pInterceptions					
		@entries		=	pEntries								
		@averagePosession	=	pAveragePosession			#calculated
		@goalsPerGame	=	pGoalsPerGame					#calculated
		@totalGoals	=	pTotalGoals							
		@passAccuracy	=	pPassAccuracy					#calculated
		@shotsPerGame	=	pShotsPerGame					#calculated
		@tacklesPerGame	=	pTacklesPerGame			#calculated
		@dribblesPerGame	=	pDribblesPerGame			#calculated
		@discipline	=	pDiscipline							#calculated
		@yellowCards	=	pYellowCards					
		@redCards	=	pRedCards							
		@gamesPlayed	=	pGamesPlayed					
		@tournamentsPlayed	=	pTournamentsPlayed	
		@name			=	pName
		@players		= 	pPlayers
	end
	
	def initialize(pName,pPlayers)
	@name 	=	pName
	@players	=	pPlayers
	end
	
# methods

private
	

	def name=(pName)
		@name 					= 		pName
	end
	
	def Setplayers=(pPlayers)
		@players 				= 		pPlayers
	end	
	
	
	def IncreaseWins(pWins = 1)
		@wins 					+= 	pWins
	end
	
	def Increasefails(pFails = 1)
		@fails 					+= 	pFails
	end
	
	def IncreaseScore(pScore = 1)
		@score 					+= 	pScore						#calculated
	end
	
	def IncreaseFaults(pFaults = 1)
		@faults					+=		pFaults
	end
	
	def IncreaseOutsides(pOutsides = 1)
		@outsides				+=		pOutsides
	end
	
	def IncreasePasses(pPasses = 1)
		@passes					+=		pPasses
	end
	
	def IncreaseLocks(pLocks = 1)
		@locks					+=		pLocks
	end
	
	def IncreaseInterceptions(pInterceptions = 1)
		@interceptions			+=		pInterceptions
	end
	
	def IncreaseEntries(pEntries)
		@entries					+=		pEntries
	end
	
	def calculateAveragePosession(pAveragePosession)	#calculated
		@averagePosession		+=  	pAveragePosession
		
	def increaseGoalsPerGame(pGoalsPerGame)				#calculated
		@goalsPerGame			+=		pGoalsPerGame
	end
	
	def totalGoals(pTotalGoals)
		@totalGoals				+=		pTotalGoals
	end
	
	def calculatePassAccuracy(pPassAccuracy)				#calculated
		@passAccuracy			+=		pPassAccuracy
	end
	
	def calculateShotsPerGame(pShotsPerGame)				#calculated
		@shotsPerGame			+=		pShotsPerGame
	end
	
	def calculateTacklesPerGame(pTacklesPerGame)			#calculated
		@tacklesPerGame		+=		pTacklesPerGame
	end
	
	def calculateDribblesPerGame(pDribblesPerGame)		#calculated
		@dribblesPerGame = pDribblesPerGame
	end
	
	def calculateDiscipline()									#calculated
			
	end
	
	def increaseYellowCards(pYellowCards)
		@yellowCards 			+=		pYellowCards			
	end
	
	def increaseRedCards(pRedCards)
		@redCards 				+=		pRedCards			
	end
	
	def increaseGamesPlayed(pGamesPlayed)
		@gamesPlayed			+= 	pGamesPlayed
	end
	
	def increaseTournamentsPlayed(pTournamentsPlayed)
						
		@tournamentsPlayed	+=	pTournamentsPlayed	
	end
	
	def addPlayer(pPlayer)
	end
	
	def deletePlayer(pPlayer)
	end	
	
	
end

aTeam = Team.new("Team A",["a","b","c"])
print("Team name : #@name",aTeam.name)
print("\n")	