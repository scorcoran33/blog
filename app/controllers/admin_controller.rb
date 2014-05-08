class AdminController < ApplicationController
  before_filter :authenticate_user! #before I run the action run method authenticate_user

  def page_one
    ## OLD code used to check admin status via session
  	# if session['admin'] != true
  	# 	redirect_to(restricted_page_path)
  	# end
  end

  def page_two
    ## OLD code used to check admin status via session
  	# if session['admin'] != true
  	# 	redirect_to(restricted_page_path)
  	# end
  end

  def restricted
  end
end
