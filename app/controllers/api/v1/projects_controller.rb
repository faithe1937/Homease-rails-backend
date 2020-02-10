class Api::V1::ProjectsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :show, :update, :destroy]
    # before_action :set_project, only:[:show, :update, :destroy, :index]

    def index
        @projects = Project.all
        render json: @projects
    end 

    def show
        render json: @project
    end 

    def create
        @project = project.new(project_params)

        if @project.save
            render json: @project, status: :create, location: @project
        else 
            render json: @project.erros, status: :unprocessable_entity
        end 
    end 

    def update
        if @project.update(project_params)
          render json: @project
        else
          render json: @project.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /projects/1
      def destroy
        @project.destroy
      end
    
      private
        # def set_project
        #   @project = project.find(params[:id])
        # end
    
        # Only allow a trusted parameter "white list" through.
        def project_params
          params.require(:project).permit(:homeowner_id, :contractor_id, :name, :budget, :duedate)
        end
    end


