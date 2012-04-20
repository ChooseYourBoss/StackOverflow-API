require 'tag'
module API
  module StackOverflow
		class RelatedTag < Tag 
			attr_accessor :related_count

			def initialize(so_tag)
				super(so_tag)
		    @related_count, @count = so_tag["count"], nil
		  end
		end
	end
end