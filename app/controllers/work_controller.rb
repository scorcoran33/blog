class WorkController < ApplicationController
  def index

  	@projects = Project.all

  	# if session['view']
  	# 	session['view'] = session['view'] + 1
  	# else 
  	# 	session['view'] = 1
  	# end
  	# @view = session['view']
  end
end