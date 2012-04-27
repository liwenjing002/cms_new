class AddIndexArticles < ActiveRecord::Migration
  def self.up
  	add_column :articles,:is_index,:boolean
  end

  def self.down
  	
  end
end
