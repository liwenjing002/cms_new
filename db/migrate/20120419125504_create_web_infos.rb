class CreateWebInfos < ActiveRecord::Migration
  def self.up
    create_table :web_infos do |t|
      t.string :name
      t.string :url
      t.string :qq
      t.string :wanwan
      t.string :weibo

      t.timestamps
    end

     web = WebInfo.new
     web.name = "小船长"
     web.save
  end

  def self.down
    drop_table :web_infos
  end
end
