class ProfessorsController < ApplicationController
  def index
    @professors = Professor.all.order(:name)
  end

  def show
    @professor = Professor.find(params[:id])
    @average = @professor.students.average(:age)
  end
end
