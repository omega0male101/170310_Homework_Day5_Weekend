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