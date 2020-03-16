class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :donate, :contact, :collaborator, :help]

  def home
  end
end
