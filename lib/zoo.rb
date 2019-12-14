class Zoo
  attr_reader :cages, :employees

  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @employees = []
    @cages = []
    10.times do
      @cages.push(Cage.new)
    end
  end

  def add_employee(name)
    @employees.push(name)
  end

  def open?(date)
    date >= @season_opening_date && date <= @season_closing_date
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        return cage.animal = animal
      end
    end
    return "Your zoo is already at capacity!"
  end

  def visit
    message = ""
    @employees.each do |employee|
      message += employee.greet + "\n"
    end
    @cages.each do |cage|
      if !cage.empty?
        message += cage.animal.speak + "\n"
      end
    end
    return message
  end

end
