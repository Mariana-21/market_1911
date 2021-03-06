class Market
  attr_reader :name, :vendors
  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.find_all {|vendor| vendor.inventory.include?(item)}
   end

   # def sorted_item_list
   #   require "pry"; binding.pry
   #
   # end

   def total_inventory
     @vendors.map do |vendor|
       vendor.inventory[*keys.map(&:to_a).flatten]
     end
   end
end
