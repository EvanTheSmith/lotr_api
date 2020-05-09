class LOTR::Movies
attr_accessor :name, :budget, :box_rev, :award_nom, :award_win
@@all = []

    def initialize
    @@all << self
    end

    def self.all
    @@all
    end
end