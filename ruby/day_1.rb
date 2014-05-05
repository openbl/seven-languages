class DayOne
  def problem_one
    puts 'Hello, world.'
  end

  def problem_two
    puts 'Hello, Ruby.'.index('Ruby.')
  end

  def problem_three
    puts 'Brian'*10
  end

  def problem_four
    (1..10).each { |i| puts "This is sentence number #{i}," }
  end

  def problem_five
    system('ruby ./ruby/day_1_p5.rb')
  end

  def problem_six
    answer = rand(10)
    guess = -1

    while guess != answer
      guess = STDIN.gets.chomp.to_i
      if guess < answer
        puts 'too low'
      elsif guess > answer
        puts 'too high'
      end
    end
    puts 'Correct'
  end
end

if $PROGRAM_NAME == __FILE__
  day_one = DayOne.new
  DayOne.instance_methods(false).each do |method|
    day_one.send(method)
  end
end
