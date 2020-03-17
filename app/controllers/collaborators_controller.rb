class CollaboratorsController < ApplicationController
  before_action  :find_collaborator, only: :edit
  skip_before_action :authenticate_user!
  def new
    @collaborator = Collaborator.new
  end

  def create
    @collaborator = Collaborator.new(collaborator_params)
  end

  def edit; end

  private

  def collaborator_params
    params.require(:collaborator).permit(:first_name, :last_name, :telephone, :postcode, :transport_type)
  end

  def find_collaborator
    @collaborator = collaborator.find(params[:id])
  end
end
