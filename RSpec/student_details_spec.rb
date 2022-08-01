require 'student_details'

RSpec.describe Student do
  it "should test details of student marks" do
    student = Student.new("shailaja", 8, 50, 50, 50)
    expect(student.calculate_total).to eq(150)
  end
end

describe Student do
  it "Student class should have below attributes" do
    student = Student.new("shailaja", 8, 50, 50, 50)
    expect(student).to have_attributes(stud_name: "shailaja", roll_num: 8, mark1: 50, mark2: 50, mark3: 50)  
  end
end
