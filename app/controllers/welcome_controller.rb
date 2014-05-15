class WelcomeController < ApplicationController
  def index
  	
    ## CREATES INSTANCE VARIABLE IF FIRST-TIME VISITOR
    if session['visited']
  		@first_visit = false 
  	else
  		@first_visit = true
  	end
  	session['visited'] = true # hashes do not have numerical indexes they have arbitrary indexes. session is an example of a hash.

    ## CREATES VIEW COUNTER
		if session['view']
  		session['view'] = session['view'] + 1
  	else 
  		session['view'] = 1
  	end
  	@view = session['view']
  end

  def shalom
    @shalom_password = params['my_password']
    session['color'] = params['color_choice']

    admin_password = 'password' # set admin password
    if @shalom_password == admin_password # if entered password true then session admin true
      current_user.admin = true
      current_user.save
      puts "That is correct!"
    end
    redirect_to(welcome_page_path)
  end
  
  def select_theme
    color_choice = params['color']
    # create theme for user if they don't have one
    if !current_user.theme
      current_user.theme = Theme.new # return back to us a theme record that is unsaved and has no values; however theme record does have user_id
    end
    current_user.theme.color = color_choice
    # now save to db 
    current_user.theme.save
    
    redirect_to(welcome_page_path, notice: "Your theme is changed")
  end
end