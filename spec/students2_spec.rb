require 'students2'
require 'spec_helper'


describe Students do
  it 'can return all students' do
    students = Students.new

    expected_students = [
      {name: "Bob", birth_year: 1995},
      {name: "Sue", birth_year: 1997},
      {name: "Greg", birth_year: 2000},
      {name: "Amanda", birth_year: 2001},
      {name: "Steve", birth_year: 1999},
    ]

    expect(students.all_students).to match_array expected_students
  end

  it 'can return the names of all students' do
    students = Students.new

    expected_names = [
      "Bob",
      "Sue",
      "Greg",
      "Amanda",
      "Steve"
    ]

    expect(students.all_names).to match_array expected_names
  end

  it 'can return students born after a certain year' do
    students = Students.new

    expected_students = [
      {name: "Amanda", birth_year: 2001}
    ]

    expect(students.born_after(2000)).to match_array expected_students
  end

  it 'can return students born before a certain year' do
    students = Students.new

    expected_students = [
      {name: "Bob", birth_year: 1995},
      {name: "Sue", birth_year: 1997},
      {name: "Steve", birth_year: 1999},
    ]

    expect(students.born_before(2000)).to match_array expected_students
  end

  it 'can return the names of students born after a certain year' do
    students = Students.new

    expected_names = [
      "Amanda"
    ]

    expect(students.names_of_born_after(2000)).to match_array expected_names
  end
end
