require 'pp'

class Students
  def all_students
    [
      {name: "Bob", birth_year: 1995},
      {name: "Sue", birth_year: 1997},
      {name: "Greg", birth_year: 2000},
      {name: "Amanda", birth_year: 2001},
      {name: "Steve", birth_year: 1999},
    ]
  end


  def all_names
    names = []
    all_students.each do |row|
      names << row[:name]
    end
    names
  end

  def born_before(year)
    matures = []
    all_students.collect do |row|
      if row[:birth_year] < year
        matures << row
      end
    end
    matures
  end

  def born_after(year)
    youngsters = []
    all_students.collect do |row|
      if row[:birth_year] > year
        youngsters << row
      end
    end
    youngsters
  end

  def names_of_born_after(year)
    names = []
    all_students.collect do |row|
      if row[:birth_year] > year
        names << row[:name]
      end
    end
    names
  end
end