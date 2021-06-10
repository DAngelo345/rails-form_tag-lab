require 'pry'

class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def new
    # session[:params] = params.inspect
    # redirect_to new_student_path
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    Post.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    # session[:params] = params.inspect
    redirect_to new_student_path
  end 


end
