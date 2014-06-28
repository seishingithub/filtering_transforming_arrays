class Students
  def all_students
    [
      {name: "Peggy", birth_year: 1968},
      {name: "Fred", birth_year: 1963},
      {name: "Sarah", birth_year: 1981},
      {name: "Lisa", birth_year: 1961},
      {name: "Ian", birth_year: 1979},
    ]
  end

  def student_names
    names = []
    all_students.select { |student| names << student[:name] }
    names
  end

  def born_before(year)
    students = []
    all_students.collect do |student|
      if student[:birth_year] < year
        students << student
      end
    end
    p students
  end

  def born_in_after(year)
    students = []
    all_students.map do |student|
      if student[:birth_year] >= year
        students << student
      end
    end
    p students
  end

  def student_names_born_after(year)
    names = []
    born_in_after(year).select do |student|
        names << student[:name]
    end
    p names
  end
end