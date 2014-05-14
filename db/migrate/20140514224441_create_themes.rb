class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :color

      t.timestamps
    end
  end
end
