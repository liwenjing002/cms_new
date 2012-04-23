class ChangFoum < ActiveRecord::Migration
  def self.up
  	remove_column :forums,:picture1_id
  	remove_column :forums,:picture2_id
  	remove_column :forums,:picture3_id
  	add_column :forums,:picture1,:text
  	add_column :forums,:picture2,:text
  	add_column :forums,:picture3,:text
    add_column :articles,:picture1,:text
    add_column :articles,:picture2,:text
    add_column :articles,:picture3,:text
  end

  def self.down
  end
end
