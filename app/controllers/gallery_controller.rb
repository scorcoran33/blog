class GalleryController < ApplicationController
  def index
  	@image_names = ['/assets/bill-lumbergh', '/assets/braves', '/assets/spencer-in-20yrs', '/assets/starbucks-logo']
  	# pin this var to the gallery controller to the view using @
  	# gather information in your action, then make it available to your view using an instance variable (@)
  	if session['view']
  		session['view'] = session['view'] + 1
  	else 
  		session['view'] = 1
  	end
  	@view = session['view']
  end
end