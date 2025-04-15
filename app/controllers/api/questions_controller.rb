class Api::QuestionsController < ApplicationController
    # Retorna todas as questões filtradas pelo subject_id em formato JSON
    def index
      questions = Question.where(subject_id: params[:subject_id])
      render json: questions.to_json
    end

    def answers
      answers = Answer.where(question_id: params[:question_id])
      render json: answers.to_json
    end
end
