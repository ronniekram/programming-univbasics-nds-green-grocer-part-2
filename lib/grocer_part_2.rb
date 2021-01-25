require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    cart_item = find_item_by_name_in_collection(coupon[:item], cart)
    if cart_item[:count] >= coupon[:num]
      item_with_coupon_applied_name  = {
        :item => "#{cart_item[:item]} W/COUPON",
        :price => coupon[:cost] / coupon[:num],
        :clearance => cart_item[:clearance],
        :count => coupon[:num]
      }
      cart_item[:count] = cart_item[:count] - coupon[:num]
      cart << item_with_coupon_applied_name 
    end
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each do |item| 
    if item[:clearance] === true 
      item[:price] = item[:price] * 0.8
    end 
  end 
end

def checkout(cart, coupons)
  binding.pry
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
  # consolidate_cart(cart)
  # apply_coupons(cart, coupons)
  # apply_clearance(cart)
end
