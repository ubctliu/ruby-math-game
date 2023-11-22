
class Question
  attr_accessor :answer, :question

  def initialize
    generate_random_question
  end

  def generate_random_question
    first_number = rand(1..20)
    second_number = rand(1..20)
    answer = first_number + second_number
    question = `What does #{first_number} plus #{second_number} equal?`
  end

end