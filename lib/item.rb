module API
  module StackOverflow
  	class Item
      include Comparable
  		attr_accessor :from_tag, :to_tag
  		
  		def <=>(anOther)
        from_tag <=> anOther.from_tag && to_tag <=> anOther.to_tag
      end

  		def initialize(so_item)
        @from_tag = so_item[:from_tag]
        @to_tag = so_item[:to_tag]
      end
  	end
  end
end