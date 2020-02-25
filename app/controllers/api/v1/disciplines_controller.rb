class API::V1::DisciplinesController < ApplicationController
  def index
    render json: disciplines.to_json
  end

  def create
    discipline = Discipline.new(permited_params)
    if discipline.save
      render json: discipline.to_json
    else
      render json: message_error(discipline)
    end
  end

  private

  def message_error(discipline)
    {
      error: discipline.errors.to_json
    }
  end

  def permited_params
    params.permit(:name)
  end

  def disciplines
    Discipline.all
  end
end
