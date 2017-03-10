def pet_shop_name (pet_shop)
  return pet_shop[:name]
end

def total_cash (total)
  return total[:admin][:total_cash]
end

def add_or_remove_cash (shop, cash)
  shop[:admin][:total_cash] += cash
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, num)
  shop[:admin][:pets_sold] += num
end

# ========================================
# def stock_count(shop)
#   stock = []
#     for pets in shop
#       stock.push(1) if pets[:pets][:name] == !nil
#     end
#   return stock.length
# end

def stock_count(shop)
  shop[:pets].length 
end

# ========================================
# ========================================
# def pets_by_breed(shop, breed)
#   count = 0
#     for pet in shop[:pets]
#       if pet[:breed] == breed
#         then count += 1
#       end
#     end
#   return count
# end

def pets_by_breed(shop, breed)
  count = []
      for pet in shop[:pets]
      if pet[:breed] == breed
        then count << pet
      end
    end
  return count
end
# ========================================

def find_pet_by_name(shop, name)
    for pet in shop[:pets]
      if pet[:name] == name
        return pet
      end
    end
  return nil
end

def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end

def customer_pet_count(customer)
  count = 0
      for pet in customer[:pets]
        #if pet == nil
          #count << pet
          #count << nil
          #cannot do this as for example
          #0 << nil explodes
        #end
        count += 1
      end
  return count

  #return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end


# ========== OPTIONAL ==========

def customer_can_afford_pet(customer, new_pet)
    if customer[:cash] >= new_pet[:price]
      return true
    end
  return false
end

