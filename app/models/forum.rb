# encoding: utf-8
class Forum < ActiveRecord::Base
validates_presence_of :name,:message => "版块名称不为空"
validates_uniqueness_of :name,:message => "版块名称已经被使用"
validates_uniqueness_of :code,:message => "版块代号已经被使用"
 belongs_to :father,:class_name =>"Forum"
 belongs_to :page_temp
  has_many :children ,:class_name=>"Forum",:foreign_key=>"father_id"
  has_many :articles_father , :class_name=>"Article",:dependent => :destroy,:foreign_key=>"first_forum_id",:conditions => "forum_id is null "
  has_many :articles , :dependent => :destroy

 #  belongs_to :picture1,:class_name=>"Ckeditor::Picture",:foreign_key => "picture1_id"
	# belongs_to :picture2,:class_name=>"Ckeditor::Picture",:foreign_key => "picture2_id"
	# belongs_to :picture3,:class_name=>"Ckeditor::Picture",:foreign_key => "picture3_id"

end
