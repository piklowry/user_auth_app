class Photo < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.string :name
    end
  end
end
