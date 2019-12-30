def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  # Consult README for inputs and outputs
  array_index = 0
  while array_index < collection.length do 
    if collection[array_index][:item] == name 
        return collection[array_index]
      else
      nil
    end
    array_index+=1
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  newcart = [ ]
  array_i = 0 
  while array_i < cart.length do
    item = find_item_by_name_in_collection(cart[array_i][:item], newcart)
    if !item
      cart[array_i][:count] = 1
    newcart << cart[array_i]
  else
    item[:count] +=1
   end
    array_i+=1
  end
   newcart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  # REMEMBER: This method **should** update cart
 index = 0 
 while index < coupons.length do
   c-item = find_item_by_name_in_collection(coupons[index][:item], cart)
   if c-item 
     c-item[:item] = "#{:item} W/COUPON"
   end
   index+=1
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
