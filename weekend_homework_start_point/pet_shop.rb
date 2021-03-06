#==[[Function #1]==
def pet_shop_name (pet_shop)
  return pet_shop[:name]
end

#==[[Function #2]==
def total_cash (total)
  return total[:admin][:total_cash]
end

#==[[Function #3]]==
def add_or_remove_cash (shop, cash)
  shop[:admin][:total_cash] += cash
end

#==[[Function #4]]==
def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

#==[[Function #5]]==
def increase_pets_sold(shop, num)
  shop[:admin][:pets_sold] += num
end

# ========================================
#==[[Function #6]]==
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
#==[[Function #7]]==
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
#==[[Function #8]]==
def find_pet_by_name(shop, name)
    for pet in shop[:pets]
      if pet[:name] == name
        return pet
      end
    end
  return nil
end

#==[[Function #9]]==
def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      shop[:pets].delete(pet)
    end
  end
end

#==[[Function #10]]==
def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end

#==[[Function #11]]==
def customer_pet_count(customer)
  count = 0
      for pet in customer[:pets]
        count += 1
      end
  return count
  #return customer[:pets].length
end

#==[[Function #12]]==
def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end


# ========== OPTIONAL ==========
#==[[Function #13]]==
def customer_can_afford_pet(customer, new_pet)
    if customer[:cash] >= new_pet[:price]
      return true
    end
  return false
end


#==[[Function #14]]==
def sell_pet_to_customer(shop, pet, customer)
  if pet == nil
    return
  end

  if customer_can_afford_pet(customer, pet)
    add_pet_to_customer(customer, pet)
    increase_pets_sold(shop, 1)
    add_or_remove_cash(shop, pet[:price])
  end
end