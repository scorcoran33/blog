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
  def shalom
    # { 'my_name'=>'Sean', 'commit'=>'Submit'} 
    @shalom_name = params['my_name']
    @shalom_password = params['my_password']
  
    admin_password = 'password' # set admin password
    if @shalom_password = admin_password # if entered password true then session admin true
      session['admin'] = true
    else
      session['admin'] = false
    end
  # redirect_to(welcome_page_path)
  end
end
