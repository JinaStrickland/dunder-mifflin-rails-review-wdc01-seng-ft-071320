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

    def create
        first_name = params["employee"]["first_name"]
        last_name = params["employee"]["last_name"]
        ali = params["employee"]["alias"]
        title = params["employee"]["title"]
        office = params["employee"]["office"]
        image = params["employee"]["img_url"]
        dog = params["employee"]["dog_id"]
        employee = Employee.create(first_name: first_name, last_name: last_name, alias: ali, title: title, office: office, img_url: image, dog_id: dog)
        redirect_to employee_path(employee)
    end

    def edit
        # @employee = Employee.find(params[:id])
    end



    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy
        redirect_to employees_path
    end

end
