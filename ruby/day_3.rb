class DayThree
  def problem_one
    csv = RubyCsv.new
    csv.each { |row| puts row.one }
  end
end

require 'csv'

class RubyCsv
  def initialize
    @text = <<-CSV
one,two
lions,tigers
    CSV
    table = CSV.parse(@text, {headers: {first_row: true}})
    @csv = table.map { |row| Row.new(row) }
  end

  def each
    @csv.each { |row| yield(row) }
  end

  class Row
    def initialize(row)
      @row = row
    end

    def method_missing(name, *args)
      @row[name.to_s]
    end
  end
end

if $PROGRAM_NAME == __FILE__
  day_3 = DayThree.new
  DayThree.instance_methods(false).each do |method|
    day_3.send(method)
  end
end
