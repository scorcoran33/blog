class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :desecription
      t.string :file_name

      t.timestamps
    end
  end
end
