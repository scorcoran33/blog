class RenameDescription < ActiveRecord::Migration
  def change
  	change_table :images do |t|
		  t.rename :desecription, :description
		end
  end
end
