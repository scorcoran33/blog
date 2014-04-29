class WelcomeController < ApplicationController
  def index
  	if session['visited']
  		@first_visit = false 
  	else
  		@first_visit = true
  	end
  	session['visited'] = true # hashes do not have numerical indexes they have arbitrary indexes. session is an example of a hash.

		if session['view']
  		session['view'] = session['view'] + 1
  	else 
  		session['view'] = 1
  	end
  	@view = session['view']
  end
end
