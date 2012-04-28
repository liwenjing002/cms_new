require "rexml/document"  
class ImagesIndex 
	attr_accessor :id
	attr_accessor :title
	attr_accessor :small_img
	attr_accessor :img
	attr_accessor :link
	attr_accessor :target

	
	def initialize  params
		if params
		self.id = params[:id] 
		self.title = params[:title] 
		self.small_img = params[:small_img] 
		self.img = params[:img] 
		self.link = params[:link] 
		self.target = params[:target] 
	end

	
 end  


	def ImagesIndex.all
		images = Array.new

		file = File.open(RAILS_ROOT + "/public/xixi.xml")  
			doc = REXML::Document.new file  
			  
			doc.elements.each("GamePackBrand/brand") do |element|  
				image = ImagesIndex.new nil
				image.id = element.attributes["id"]
				image.title = element.elements["brandtitle"].text
				image.small_img = element.elements["thumb"].text 
				image.img = element.elements["swf"].text 
				image.link = element.elements["link"].text 
				image.target = element.elements["target"].text 
				images.push(image)
			end 
			file.close
			return images
	end

	def ImagesIndex.find id

	images = ImagesIndex.all
		images.each do |i|
			return i if i.id ==id
		end
	end

    
    def ImagesIndex.add image_index
    images = ImagesIndex.all
    images.push image_index

    file = File.open(RAILS_ROOT + "/public/xixi.xml","w")
	doc = REXML::Document.new("<GamePackBrand></GamePackBrand>") 
	num= 1
			images.each do |i|
			make = REXML::Element.new "brand" 
			make.attributes["id"] = num
			make.add_element "brandtitle" 
			make.elements["brandtitle"].text  = i.title
			make.add_element "thumb" 
			make.elements["thumb"].text  = i.small_img	
			make.add_element "swf" 
			make.elements["swf"].text  = i.img	
			make.add_element "link" 
			make.elements["link"].text  = i.link
			make.add_element "target" 
			make.elements["target"].text  = i.target	

		    doc.elements["GamePackBrand"].add_element make 
		    num = num + 1
			end
	file.puts doc.to_s

	file.close
	true
    end

    def ImagesIndex.update image_index
    images = ImagesIndex.all

    file = File.open(RAILS_ROOT + "/public/xixi.xml","w")
	doc = REXML::Document.new("<GamePackBrand></GamePackBrand>") 
	num= 1
			images.each do |i|

			i =image_index	if i.id ==image_index.id
			make = REXML::Element.new "brand" 
			make.attributes["id"] = i.id
			make.add_element "brandtitle" 
			make.elements["brandtitle"].text  = i.title
			make.add_element "thumb" 
			make.elements["thumb"].text  = i.small_img	
			make.add_element "swf" 
			make.elements["swf"].text  = i.img	
			make.add_element "link" 
			make.elements["link"].text  = i.link
			make.add_element "target" 
			make.elements["target"].text  = i.target	

		    doc.elements["GamePackBrand"].add_element make 
		    num = num + 1
			end
	file.puts doc.to_s

	file.close
	true
    end

    def ImagesIndex.delete id
    	images = ImagesIndex.all
    	return false if images.length <=5
    file = File.open(RAILS_ROOT + "/public/xixi.xml","w")
	doc = REXML::Document.new("<GamePackBrand></GamePackBrand>") 
	num= 1
			images.each do |i|

			next	if i.id ==id
			make = REXML::Element.new "brand" 
			make.attributes["id"] = i.id
			make.add_element "brandtitle" 
			make.elements["brandtitle"].text  = i.title
			make.add_element "thumb" 
			make.elements["thumb"].text  = i.small_img	
			make.add_element "swf" 
			make.elements["swf"].text  = i.img	
			make.add_element "link" 
			make.elements["link"].text  = i.link
			make.add_element "target" 
			make.elements["target"].text  = i.target	

		    doc.elements["GamePackBrand"].add_element make 
		    num = num + 1
			end
	file.puts doc.to_s

	file.close
	true
    end

end
