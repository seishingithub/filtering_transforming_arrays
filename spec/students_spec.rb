require 'spec_helper'
require './lib/students'

describe Students do
  it 'can return all students' do
    students = Students.new

    expected_students = [
      {name: "Peggy", birth_year: 1968},
      {name: "Fred", birth_year: 1963},
      {name: "Sarah", birth_year: 1981},
      {name: "Lisa", birth_year: 1961},
      {name: "Ian", birth_year: 1979},
    ]

    expect(students.all_students).to match_array expected_students
  end

  it 'can return names of all students' do
    students = Students.new

    expected_names = [
      "Peggy",
      "Fred",
      "Sarah",
      "Lisa",
      "Ian"
    ]

    expect(students.student_names).to match_array expected_names

  end

  it 'can return students born before a certain year' do

    students = Students.new
    expected_students = [
      {name: "Peggy", birth_year: 1968},
      {name: "Fred", birth_year: 1963},
      {name: "Lisa", birth_year: 1961},
    ]

    expect(students.born_before_1970).to match_array expected_students
  end

  it 'can return students born after a certain year' do
    students = Students.new

    expected_students = [
      {name: "Sarah", birth_year: 1981},
      {name: "Ian", birth_year: 1979},
    ]

    expect(students.born_in_after_1970).to match_array expected_students
  end

  it 'can return the names of students born after a certain year' do
    pending
    students = Students.new

    expected_names = [
      "Sarah",
      "Ian",
    ]

    expect(students.student_names_born_in_after_1970).to match_array expected_names
  end
end