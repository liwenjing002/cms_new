class Question < ActiveRecord::Base
	has_many :question_categories , :dependent => :destroy
end
