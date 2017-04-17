#1 function

# TestPetShop#test_pet_shop_name:
# NoMethodError: undefined method `pet_shop_name' for #<TestPetShop:0x007fa52daf5378>
#     pet_shop_spec.rb:76:in `test_pet_shop_name'

#---->  error in the test, it is using an undefined name, therefore in the next test the name needs to be defined.

# def pet_show_name
# end

# TestPetShop#test_pet_shop_name:
# NoMethodError: undefined method `pet_shop_name' for #<TestPetShop:0x007fd45f20d3f8>
# Did you mean?  pet_show_name
#     pet_shop_spec.rb:76:in `test_pet_shop_name'

#----> check the title of the method.

# def pet_shop_name
# end

# TestPetShop#test_pet_shop_name:
# ArgumentError: wrong number of arguments (given 1, expected 0)
#     /Users/mac/Desktop/codeclan_work_1/week_1/day_5/weekend homework/pet_shop_start_point/pet_shop.rb:19:in `pet_shop_name'
#     pet_shop_spec.rb:76:in `test_pet_shop_name'

#---> wrong number of arguments, none are currently given the method, but pet shop is given in the hash

#def pet_shop_name(pet_shop)
#end

#   1) Failure:
# TestPetShop#test_pet_shop_name [pet_shop_spec.rb:77]:
# Expected: "Camelot of Pets"
#   Actual: nil

# def pet_shop_name(pet_shop)
#   return "Camelot of pets"
# end

# Finished in 0.000952s, 1050.4202 runs/s, 1050.4202 assertions/s.

#   1) Failure:
# TestPetShop#test_pet_shop_name [pet_shop_spec.rb:77]:
# Expected: "Camelot of Pets"
#   Actual: "Camelot of pets"

# 1 runs, 1 assertions, 1 failures, 0 errors, 0 skips

#----> this is obviously not a very good way of passing this test

 # def pet_shop_name(pet_shop)
 #   return "Camelot of Pets"
 # end

 # Run options: --seed 4746

 # Finished in 0.000774s, 1291.9897 runs/s, 1291.9897 assertions/s.

 # 1 runs, 1 assertions, 0 failures, 0 errors, 0 skips

#---> this test passes but is not very nice a better example is given below

# def pet_shop_name(pet_shop)
#   return [:name]
# end

#   1) Failure:
# TestPetShop#test_pet_shop_name [pet_shop_spec.rb:77]:
# Expected: "Camelot of Pets"
#   Actual: [:name]

# #----> the key hasn't actually been called here! Call the key in the next example


    def pet_shop_name(pet_shop)
      return pet_shop[:name]
    end

#  # Run options: --seed 64304
 # .
 # Finished in 0.000765s, 1307.1895 runs/s, 1307.1895 assertions/s.

 # 1 runs, 1 assertions, 0 failures, 0 errors, 0 skips

#this test now seems to pass the test in a more elegant way i.e. returning actual values

#2 test

#This test should fail here

#   1) Error:
# TestPetShop#test_total_cash:
# NoMethodError: undefined method `total_cash' for #<TestPetShop:0x007fa91a12a668>
#     pet_shop_spec.rb:81:in `test_total_cash'

# 2 runs, 1 assertions, 0 failures, 1 errors, 0 skips

#---> Nomethod defined for total cash obviously ther
#-> add total_cash method

# def total_cash
# end

#-> this will fail with a wrong number of arguements there is one defined in the test but 0 defined in the method.

# ArgumentError: wrong number of arguments (given 1, expected 0)
#     /Users/mac/Desktop/codeclan_work_1/week_1/day_5/weekend homework/pet_shop_start_point/pet_shop.rb:102:in `total_cash'
#     pet_shop_spec.rb:81:in `test_total_cash'

#---> the test failed as expected due to not enough arguments
#-> add arguement

# def total_cash(pet_shop)
# end

#-> this test will fail. as the value will actually be nil but expects 1000

#   1) Failure:
# TestPetShop#test_total_cash [pet_shop_spec.rb:82]:
# Expected: 1000
#   Actual: nil

#---> easiest way to make this pass is to return 1000
#-> hard code 1000 into the method

# def total_cash(pet_shop)
#   return 1000
# end

#-> I expect this to pass!

# Finished in 0.000789s, 2534.8543 runs/s, 2534.8543 assertions/s.
# 2 runs, 2 assertions, 0 failures, 0 errors, 0 skips

#---> the test passed but is hardcoded
#-> uodate to a more elegant solution

# def total_cash(pet_shop)
#   return [:admin][:total_cash]
# end

# #-> Expect this to pass
# TypeError: no implicit conversion of Symbol into Integer
#     /Users/mac/Desktop/codeclan_work_1/week_1/day_5/weekend homework/pet_shop_start_point/pet_shop.rb:140:in `[]'pet_shop.rb:140:in `total_cash'
#     pet_shop_spec.rb:81:in `test_total_cash'
# #---> test actually failed due to symbol to integr
# # #-> therefore try and covert the symbol to integer


# def total_cash(pet_shop)
#   return [:admin][:total_cash].to_i
# end

#-> I expect this to pass after converting the symbol value to integer

# TestPetShop#test_total_cash:
# TypeError: no implicit conversion of Symbol into Integer

#---> still fails need to try something else 
#-> No idea why this doesn't work and gives this 

# def total_cash(pet_shop)
#   return pet_shop[:admin][:total_cash]
# end

# #-> this will pass now

# TestPetShop#test_pet_shop_name:
# # NoMethodError: undefined method `pet_shop_name' for #<TestPetShop:0x007f99a02b9990>
# #     pet_shop_spec.rb:76:in `test_pet_shop_name'

#  def pet_shop_name(pet_shop)
#       return pet_shop[:name]
#  end

def total_cash(pet_shop)
     return pet_shop[:admin][:total_cash]
end

#  #---> both tests now pass
#  #-> how can I edit this method to make it more robust

# #--->Test 3 I am obviously expecting this to fail

# # NoMethodError: undefined method `add_or_remove_cash' for #<TestPetShop:0x007fba520e1be0>    pet_shop_spec.rb:86:in `test_add_or_remove_cash__add''

# #----> undefined method
# #-> add a method

# def add_or_remove_cash
# end

#---> I am expecting this to fail, as the test is currently expecting a parameter

#or: wrong number of arguments (given 2, expected 0)

#-> two parameters given in the test, none in the method

# def add_or_remove_cash(pet_shop)
# end

#-> I am expecting this to fail as only one variable has been given
#-> add another parameter add


# def add_or_remove_cash(pet_shop,add)
# end

# I expect this to fail and return nil against expected 1010

#   1) Failure:
# TestPetShop#test_add_or_remove_cash__add [pet_shop_spec.rb:88]:
# Expected: 1010
#   Actual: 1000

#-> this failed but it unexpected returned 1000

# actally caling the value from the previous method total cash
#   1) Failure:
# TestPetShop#test_add_or_remove_cash__add [pet_shop_spec.rb:88]:
# Expected: 1010
#   Actual: 1000


  # def add_or_remove_cash(pet_shop,add)
  #   return 1010
  # end

  # this method will fail as the value is being called from the prevoius

  # def add_or_remove_cash(pet_shop,add)
  #   return pet_shop[:admin][:total_cash]
  # end

# I think that this method will fail but I'm not sure what it will do 

#   1) Failure:
# TestPetShop#test_add_or_remove_cash__add [pet_shop_spec.rb:88]:
# Expected: 1010
#   Actual: 1000

#-> Not sure whether this will work or no

 # def add_or_remove_cash(pet_shop, add)
 #    return pet_shop[:admin][:total_cash] += add
 # end

# I think that this method will fail due to incorrect arguements


# def add_or_remove_cash(pet_shop, add)
#    return pet_shop[:admin][:total_cash] += add
# end

#this method here is returning the total_cash symbol with the parameter added to it
# this will pass the test


# Finished in 0.000896s, 2232.1429 runs/s, 2232.1429 assertions/s.
# 2 runs, 2 assertions, 0 failures, 0 errors, 0 skips
# ➜  specs 

#---> the next test will obviously fail

# r: undefined method `add_or_remove_cash' for #<TestPetShop:

#-> define method

# def add_or_remove_cash
# end

#---> this will obviously fail, we are expecting two arguments for the test

# def add_or_remove_cash(pet_shop, sub)
# end

#---> this will fail and return 1000 again, expected 990
#-> make it return 990

# def add_or_remove_cash(pet_shop, sub)
#   return pet_shop[:admin][:total_cash] -= 10
# end 

#---> this will pass the test but it is not very robost as the values of -10 is hard coded into it to pass the test
#-> pass it the sub parameter

def add_or_remove_cash(pet_shop, sub)
  return pet_shop[:admin][:total_cash] += sub
end

#-> I think that this will pass

#2 runs, 2 assertions, 0 failures, 0 errors, 0 skips


#test 5 
# this test will fail
#---> Nomethod

# def pets_sold
# end


#wrong number of arguments (given 1, expected 0)
#---> not enough arguements


# def pets_sold(pets_sold)
# end

#TestPetShop#test_pets_sold [pet_shop_spec.rb:103]:
#Expected 0 returning 0 

# def pets_sold(pets_sold)
#   return 0
# end

#---> hard coded shit
#-> write nice none hard-coded work

# def pets_sold(pets_sold)
#   return pet_shop[:admin][:pets_sold]
# end

#I think that this will pass
#----> fail, incorrectly assigned local variable
# NameError: undefined local variable or method `pet_shop' for #<TestPetShop:0x007f956eb62438>
# Did you mean?  @pet_shop
#     /Users/mac/Desktop/codeclan_work_1/week_1/day_5/weekend homework/pet_shop_start_point/pet_shop.rb:323:in `pets_sold'

#---> change the local variable

 def pets_sold(pet_shop)
   return pet_shop[:admin][:pets_sold]
 end

##Passed

#6 this will fail undefined method
#---> define method \

# def pets_sold
# end

# this will fail with expected 1 argument 0 given
#---> failed
# incorrect method name, should be increase_pets_sold

# def increase_pets_sold
# end

# fails ArgumentError: wrong number of arguments (given 2, expected 0)

#2 in terms of the test, 0 in the method.
# ArgumentError: wrong number of arguments (given 2, expected 0)

# def increase_pets_sold(pet_shop, increase)
# end

# Thing will fail due to expected value but given in nil
# ndefined method `pets_sold' for #<TestPetShop:0x007f required method from the previous method therefore un###

# TestPetShop#test_increase_pets_sold [pet_shop_spec.rb:111]:
# Expected: 2
#   Actual: 0

# def increase_pets_sold(pets_sold, increase)
#   return 2
# end

# I think that this will fail, as it is taking the value of 0 from the pets_sold method

#--->try the next thing
 
#  def increase_pets_sold(pet_shop, increase)
#   return pet_shop[:admin][:pets_sold] + increase
# end

#I think that this will pass but be shit
#nope, still 0
#->

# def increase_pets_sold(pet_shop, increase)
#   return pet_shop[:admin][:pets_sold] += increase
# end

#I think that this will work
#PASSED

#7 This will fail undefined method

# def stock_count
#   end

#this will also fail
# wrong number of arguements given 1 expected. 0 

# def stock_count(pet_shop)
# end

#this is fail now. will return nil but expects 6

# def stock_count(pet_shop)
#   return 6
# end

#this will pass but hardcoded
# make this using the arr.length method

 def stock_count(pet_shop)
   return pet_shop[:pets].length
 end

# I think that this will pass
#PASSED

#8 test this test will fail, due to  undefined method
# def pets_by_breed
# end

#will fail expected 2 given 0
# actually required stock_count variable

#untag stock_count expect 2 given 0 variables

def pets_by_breed(pet_shop, search_for_breed)
  return pet_shop[:pets]
end

#will fail expect 2 will give 6? or 0 ?
# method describe in test is not specified?

#   1) Failure:
# TestPetShop#test_all_pets_by_breed_found [pet_shop_spec.rb:125]:
# Expected: 2

#---> test failed

# def pets_by_breed(pet_shop, breed)
#   return 6
# end
#---> hardcoded test will pass, Ah yes this fails as it is not being pass an array to count over!

# NoMethodError: undefined method `count' for 6:Integer
#     pet_shop_spec.rb:125:in #test_all_pets_by_breed_found'


# def pets_by_breed(pet_shop, pets)
#   pets = ["British Shorthair","British Shorthair"]
#   return pets
# end

# I dont think that this will work due to synthax but I trying pass "British Shorthair" twice in order to get the test to pass

#PASSED ---> nice the test passed but obviously it is shit as it is hard coded
#New. test added to check for hard coding

#---> new test will pass as identical to previou
#PASSED
#-> Now change the test, Egyptian Mau added with 1 count
#---> I expect this test willl fail, unsure of the error message

# TestPetShop#test_all_pets_by_breed_found_2 [pet_shop_spec.rb:132]:
# Expected: 1
#   Actual: 2

#->error based on size of the array, 2 instead of 1
#-> now need to rewrite the code to pass the values from the hash

# def pets_by_breed(pet_shop, pets)
#   return pet_shop[:pets][:breed]
# end

# this will fail due to absence of an array for the .count method
# what I think I need to do here is puts all breeds to an array and then search through the array from the number of times and search for the number of times a certain species appears

# i think that there are lots of methods that can be used to do this but I am not quite sure how to use them, useful methods include ---> .flatten, keep_if, values and value_at. i will try doing using .flatten first

# def pets_by_breed(pet_shop, pets)
#   return pet_shop[:pets]
# end

# this is obviously fail, returning 24 instead of the expected 1 or 2. i think that .flatten only works on arrays not hashse
# ok, really not sure why this is returning 6 at the moment.  I think that this returning 6 as that is the number of pets hashes in the pet array

#-> added another hash to the array, error message should now be 7
# CORRECT
# So the following method should also return 6


# def pets_by_breed(pet_shop, pets)
#   return pet_shop[:pets][:breed]
# end

# I expect this to fail with a value of 6 again
# nope, symbol error when expecting array, 
#-> try the .value method
# I expect this to output all the values from the hash into an array

# def pets_by_breed(pet_shop, pets)
#   pet_shop[:pets].to_a.
# end

# def pets_by_breed(pet_shop, searched_for_breed)
#   found_breeds = []
#   pet_shop[:pets].each do |animal|
#     if searched_for_breed == animal[:breed]
#       found_breeds << animal
#     else 
#       next
#     end
#   end
#   return found_breeds
# end

#above is matts solution. He has assigned a new array that.
#I'm not sure what the animal[:breed] statement is doing here
# PASSES BOTH TESTS
# another method to do using the .select method 

# def pets_by_breed(pet_shop, searched_for_breed)
#   found_breeds = []
#   pet_shop[:pets].select { |animal| animal[:breed] == searched_for_breed}
#   found_breeds << animal
#   return 
# end

#this doesn't work. I'm really not the syntax for what is going on with these.

#9 test

#This will fail!
# the test passed!!#
# argh need to think of how to make it fail!

# def pets_by_breed(pet_shop, searched_for_breed)
#   found_breeds = []
# end

# started from scratch, defined a method, then correct number of parameters, now an array.
#passes the current test by now fails the previous.

def pets_by_breed(pet_shop, searched_for_breed)
  found_breeds = []
  pet_shop[:pets].each do |animal|
    if searched_for_breed == animal[:breed]
    found_breeds << animal
    else
      next
    end
  end
  return found_breeds
end

#10 Test
#this test will fail Undefined methods

# def find_pet_by_name
# end

# this test will fail undefine argument, expected 2 given 0 actualy given 2 expected 0

 # def find_pet_by_name(pet_shop, searched_for_name)
 # end
 
 # this test will fail, [] nil class error
 #-> add array and name

 # def find_pet_by_name(pet_shop, searched_for_name)
 #  return pet_shop[:pets][:name]
 # end

 # symbol to integer error, still not completely sure what this means

 # implicit conversion of Symbol into Integer
 #     pet_shop_spec.rb:154:in `[]'
 #     pet_shop_spec.rb:154:in `test_find_pet_by_name__returns_pet'

 # this doesn't need an array like the last one as no .count method

  # def find_pet_by_name(pet_shop, searched_for_name)#
  #     found_name = []
  #     pet_shop[:pets].each do |animal|
  #       if searched_for_name == animal[:name]
  #       found_name << animal
  #       else
  #         next
  #       end
  #     end
  #     return found_name
  # end

  def search_name(pet_shop, searched_for_name)
     for pet in pet_shop[:pets] do
        if pet[:name] == searched_for_name
          return pet
        end
     end
     return nil
  end

  # def find_chicken_by_name(chicken_array, name)
  #   for chicken in chicken_array do 
  #     if chicken[:name] == name
  #       return chicken
  #     else
  #         if chicken[:name] == name
  #         return chicken
  #         else
  #         return nil
  #         end
  #     end
  #   end
  # end

  # def find_chicken_by_name(chicken_array, name)
  #   for chicken in chicken_array do 
  #     if chicken[:name] == name
  #       return chicken[:name]
  #     end
  #   end
  # end



