require 'pp'
class School
  VERSION = 1

  def initialize
    @grades = {}
  end

  def add(student, grade)
    @grades[grade] ||= [] 
    @grades[grade].push(student).sort!
  end

  def grade(grade)
    @grades[grade] ||= []
    @grades[grade].sort
  end

  def to_h
    Hash[@grades.sort] 
  end
end
