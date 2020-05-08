Class LOTR::Movies
attr_reader :name, :id_number, :budget, :box_rev, :award_nom, :award_win
@@all = []

    def initialize(name, id_num, budg, box, nom, win)
    @name = name
    @id_number = id_num
    @budget = budg
    @box_rev = box
    @award_nom = nom
    @award_win = win
    save
    end

    def self.all
    @@all
    end

    def save
    self.class.all << self
    end
end