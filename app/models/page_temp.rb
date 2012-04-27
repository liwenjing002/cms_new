class PageTemp < ActiveRecord::Base

    before_save :chang_html

  def chang_html
      self.content = self.content.gsub(/&lt;\%/, '<%')
       self.content = self.content.gsub(/\%&gt;/, '%>')
        self.content = self.content.gsub(/&quot;/, '\"')
         self.content = self.content.gsub(/&gt;/, '>')
  end

	def validate  

		if temp_type=='主页' and is_acticity==true
        	 p = PageTemp.find(:all,:conditions=>"temp_type='主页' and is_acticity = true")
        	 if p and p.length>0 and p[0].id != id
        	 	errors.add_to_base("主页模板只能生效一个")  
        	 end
    end 


        if temp_type=='左侧导航' and is_acticity==true
           p = PageTemp.find(:all,:conditions=>"temp_type='左侧导航' and is_acticity = true")
           if p and p.length>0 and p[0].id != id
            errors.add_to_base("左侧导航模板只能生效一个")  
           end
    end 
	end


end
