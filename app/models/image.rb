class Image < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  ## Could not get 'rails generate paperclip_database:migration Image image' to run in terminal
  # has_attached_file :avatar, 
		# 								:styles => { :medium => "300x300>", :thumb => "100x100>" },
		# 								:storage => :database
  # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/ # expect whatever you upload to be an image
end
