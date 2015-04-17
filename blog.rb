class Blog_post

	def initialize

		def add_author=(author)
			@author = author
		end

		def get_author
			return @author
		end

		def add_title=(title)
			@title = title
		end

		def get_title
			return @title
		end

		def add_content=(content)
			@content = content
		end

		def get_content
			return @content
		end 

		def post_time
		@time_of_post = Time.new
		end	
	end
	

	#create class variable to store hash
	@@all_posts = {}
	#add posts to the hash
	@@all_posts.store(@title, @content)

	# loop through hash and puts each key/value pair
	def publish(all_posts)
		all_posts.each do |key, value|
			puts key
			puts value			
			end
	end
end


class Page < Blog_post

	def add_subject=(subject)
		@subject = subject
	end

end

first_post = Blog_post.new
first_post.add_author = "Ryan"
first_post.add_title = "The First Post On My New Blog"
first_post.add_content = "Yada yada yada yada."
puts first_post.inspect
puts first_post.post_time


#still having trouble understanding this lesson
