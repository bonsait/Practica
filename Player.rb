class Player

    attr_accessor :name, :birthDate, :height, :weight, :nationality, :number, :position
    
    def initialize(name, birthDate, height, weight, nationality, number, position)
        @name = name
        @birthDate = birthDate
        @height = height
        @weight = weight
        @number = number
        @position = position
    end

end