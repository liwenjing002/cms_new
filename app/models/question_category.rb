class QuestionCategory < ActiveRecord::Base
	has_many :question_details , :dependent => :destroy
end
