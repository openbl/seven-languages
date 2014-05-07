require_relative 'day_2_p2'

class DayTwo
  def problem_one
    array = (1..16).to_a

    i = 0
    array.each do |el|
      if i % 4 == 0
        puts array.slice(i,4)
      end
      i += 1
    end

    array.each_slice(4) do |els|
      puts els
    end
  end

  def problem_two
    family = {
      'grandpa' => {
        'dad' => {
          'child 1' => {},
          'child 2' => {}
        },
        'uncle' => {
          'child 3' => {},
          'child 4' => {}
        }
      }
    }

    puts Tree.new(family)
  end

  def problem_three
    path = File.expand_path('../day_2_p3.txt', __FILE__)
    File.open(path, 'r') do |f|
      f.each_with_index do |line, i|
        puts i if line =~ /Ruby/
      end
    end
  end
end

if $PROGRAM_NAME == __FILE__
  day_2 = DayTwo.new
  DayTwo.instance_methods(false).each do |method|
    day_2.send(method)
  end
end
