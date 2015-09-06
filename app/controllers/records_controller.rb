class RecordsController < ApplicationController

  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
  end

  def new
  end


  def new_project
  end

  def create
    @record = Record.new(record_params)
    raises @record.to_s
    @record.save
    redirect_to @record
  end

  private
    def record_params
      params.require(:records).permit(:project_name, :status, :comments)
    end
end
