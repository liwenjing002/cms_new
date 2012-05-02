class Question < ActiveRecord::Base
	has_many :question_categories , :dependent => :destroy
	has_many :question_result , :dependent => :destroy
	has_many :question_base , :through=>:question_result, :dependent => :destroy
end
