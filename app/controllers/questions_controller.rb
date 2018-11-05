class QuestionsController < ApplicationController
  def ask
    puts "Hello, I am your coach, what did you want to tell me?"

    answer = nil

    while answer != ""
      print "> "
      message = gets.chomp
      answer = coach_answer_enhanced(message)
      puts answer
    end

    puts "Great, see ya!"
  end

  def answer
    if your_message.downcase == "i am going to work right now!"
      "Great!"
    elsif your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
