require 'shoes'
require 'shoes_date_picker'
require '../Team'
Shoes.app do
    @teams = Array.new
    background "#EFC"
    border("#BE8",
           strokewidth: 6)

    stack(margin: 12) do
      
      
    
          para "Name:"
          @teamName = edit_line
          para "Date:"
          @teamDate = edit_line
          @createButton = button "New" 
          @createButton.click {
              
              @teams << Team.new(@teamName.text,@teamDate.text)
              @teamName.text = ""
              @teamDate.text = ""
              para @teams.to_s
                  
                }
          @showplayers = button "Show Players"
          @showplayers.click{
              
            para @aTeam.showPlayers          
        }
      
    
    end
  end