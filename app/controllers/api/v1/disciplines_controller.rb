class API::V1::DisciplinesController < ApplicationController
  def index
    render json: disciplines.to_json
  end

  private

  def disciplines
    Discipline.all
  end
end
