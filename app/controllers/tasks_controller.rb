class TasksController < ApplicationController
    before_action :setup_project

    def new
    end

    def destroy
    end

    private
    def setup_project
        @project = Project.new(tasks: [Task.new])
    end
end
