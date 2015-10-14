class WelcomeController < ApplicationController
	skip_before_action :authenticate_user!
	layout 'works'
  def home
  end
end
