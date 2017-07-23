class Orange_tree

  def initialize
    @age    = 0
    @height = 1
    @fruit  = 0

    puts "You planted an orange tree in the back yeard."
  end

  def height
    if @height == 1
      puts 'Your orange tree is 1 foot tall.'
    else
      puts "Your orange tree is #{@height} feet tall."
    end
  end

  def count_the_oranges
    if @fruit == 1
    puts "Your tree has 1 ripe orange."
    else
    puts "Your tree has #{@fruit} ripe oranges."
    end
  end

  def pick_an_orange
    if @fruit <= 0
      puts 'Sorry, your tree has no fruit. Maybe next season.'
    else
      @fruit = @fruit - 1
      puts "Yum, that's a delecious orange!"
    end
  end

  def one_year_passes
    if @age < 10
      @age = @age + 1
    else
      puts "Your orange tree has lived a productive life, 
            but now it dies and returns to the earth from whence it came."
      exit
    end

    @height = @height + 1 + rand(2)
    
    if @age > 6
      @fruit = 15 - @age + rand(10)
    elsif @age >= 4
      @fruit = 10 + @age + rand(10)
    end
    puts "And another year passes in the life of your orange tree."
  end

end

tree = Orange_tree.new
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes