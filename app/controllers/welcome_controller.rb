class WelcomeController < ApplicationController
  def home
  	@offical_accounts = current_user.offical_accounts
  end
end
