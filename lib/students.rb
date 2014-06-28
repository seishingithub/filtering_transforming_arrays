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

  def born_before_1970
    students = []
    all_students.collect do |student|
      if student[:birth_year] < 1970
        students << student
      end
    end
    p students
  end

  def born_in_after_1970
    students = []
    all_students.map do |student|
      if student[:birth_year] >= 1970
        students << student
      end
    end
    p students
  end

  
end
