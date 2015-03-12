class RootController < ApplicationController
  before_action :redirect_if_not_logged_in

  def root
    render "root"
  end

end
