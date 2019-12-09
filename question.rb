# class Question
  def new_question()
    value1 = rand(1..20)
    value2 = rand(1..20)
    answer = value1 + value2
    return [value1, value2, answer]
  end
# end
