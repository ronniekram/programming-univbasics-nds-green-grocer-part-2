require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # binding.pry
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  coupons.map do |x|
    if find_item_by_name_in_collection(x[:item], cart) 
      binding.pry
      x
    end 
  end 
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
