class PagesController < ApplicationController
#  breaks all of the tests :(
#  http_basic_authenticate_with :name => "Boston", :password => "massartdesign"
  def home
      @title = "Home"
  end

  def contact
      @title = "Contact"
  end

  def about
      @title = "About"
  end

  def help
      @title = "Help"
  end

  def canvas
      @title = "Canvas"
  end

end

