class AdminController < ApplicationController
  def page_one
  	if session['admin'] == false
  		redirect_to(restricted_page_path)
  	end
  end

  def page_two
  	if session['admin'] == false
  		redirect_to(restricted_page_path)
  	end
  end

  def restricted
  end
end
