class CoachingController < ApplicationController
    def ask
    end

    def answer
      @question = params[:question]
      @answer = coach_answer(@question)
    end

    private

    def coach_answer(str)
        is_question?(str) ? "Silly question, get dressed and go to work!" : ((str === "I am going to work") ? "Great!" : "I don't care, get dressed and go to work")
    end

    def is_question?(str)
        (str === nil) ? false : str.end_with?("?")
    end
end
