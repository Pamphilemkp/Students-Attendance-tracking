class LandingPagesController < ApplicationController
  before_action :authenticate_user!, only: [:privacy_policy]
  def welcome_page
  end

  def privacy_policy
  end
end
