class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_strong_params)
        @student.save
        redirect_to @student
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_strong_params)
        redirect_to @student
    end

    private

    def student_strong_params
        params.require(:student).permit(:first_name, :last_name)
    end


end