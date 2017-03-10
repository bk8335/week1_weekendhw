def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  return pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sales)
  return pet_shop[:admin][:pets_sold] += sales
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  breed_array = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      breed_array.push(pet)
    end
  end
  return breed_array
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
  return pet
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].insert(-1, new_pet)
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if new_pet[:price] > customer[:cash]
    return false
  else
    return true
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet == nil
    return nil
  end    
      customer[:pets].push(pet)
      pet_shop[:admin][:pets_sold] += 1
      pet_shop[:admin][:total_cash] += pet[:price]
    
end