class QuestionResult < ActiveRecord::Base
	belongs_to :question
	belongs_to :question_base
	has_many :question_result_details , :dependent => :destroy

	def get_question_detail_ids
		ids =Array.new
		hash_ids = Array.new
		self.question.question_categories.each do |c|
			c.question_details.each do |d|
				ids.push(d.id)
			end
		end

		self.question_result_details.each do |c|
			hash_ids.push(c.question_detail.id)
		end

		hash_ids.each do |id|
			ids.delete(id)
		end	

		return ids
	end

	def get_result_data
		data = Hash.new
		data_array = Array.new
		self.question.question_categories.each do |c|
				data[c.name] = 0
			if c.question_details.length>0
				c.question_details.each do |d|
				res =QuestionResultDetail.find_by_question_detail_id_and_question_result_id(d.id,self.id)
					
					if d.count 
					data[c.name] = (data[c.name]+res.answer_num)
					else
					data[c.name] = (data[c.name]-res.answer_num+4)
					end
				end

				
				data[c.name+"("+data[c.name].to_s+")"] = data[c.name]*100/(c.question_details.length*4)
				data.delete(c.name)

			end
		end


		data.each do |k,v|
			data_temp = Array.new
		 data_temp.push([k,data[k]])
		 data_array.push(data_temp)
		end

		return data_array
	end


end
