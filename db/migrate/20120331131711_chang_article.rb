class ChangArticle < ActiveRecord::Migration
  def self.up
  	add_column :articles,:small_title,:string
  end

  def self.down
  	remove_column :articles,:small_title
  end
end
