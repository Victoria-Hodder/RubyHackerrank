marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}


def group_by_marks(marks, pass_marks)
  marks.group_by do |name, score|
    if score > pass_marks
      "Passed"
    else
      "Failed"
    end
  end
end

p group_by_marks(marks, 50)
