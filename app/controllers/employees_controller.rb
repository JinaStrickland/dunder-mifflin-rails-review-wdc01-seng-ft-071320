class EmployeesController < ApplicationController

    def index 
        @employees = Employee.all 
        render :index
    end

    def show 
        @employee = Employee.find(params[:id])
        render :show 
    end

    def new
        @employee = Employee.new
        render :new
    end

end
