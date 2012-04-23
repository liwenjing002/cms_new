class QuestionResultDetail < ActiveRecord::Base
	belongs_to :question_result
	belongs_to :question_detail
end
