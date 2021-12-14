class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    # this function is empty and is OK
  end
end
