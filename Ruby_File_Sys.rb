

def check_account_bal()
  File.open("Customer.txt", "r") do |file|
    puts file.read()
  
  end
  

end


def create_new_account()
  puts "Account Name"
  name = gets.chomp()
  puts "Opening Balance"
  balance = gets.chomp().to_i
  puts "Account Type"
  type = gets.chomp()
  puts "Account Email"
  email = gets.chomp()

  puts  
      File.open("Customer.txt", "a") do |file|
      file.write("\nAccount Name: #{name}")
      file.write("\nOpening Balance: #{balance}")
      file.write("\nAccount Type : #{type}")
      file.write("\nAccount Email: #{email}")
    end


  end




def Entry_point()
   access = File.open("Staff.txt", "r") do |file| puts file.read() end
   username = access
    password = access

  if password == access && username == access

        puts "Perform Operations"
        puts "enter 1 to create new bank account"
        
        puts "enter 2 to check Account Balance "

        puts "enter 3 to Logout"

        staff_perform = gets.chomp()
        if staff_perform == "1"
          puts create_new_account()
          elsif staff_perform =="2"
            puts check_account_bal()
          else
            puts ""
        end
    
  else

    return
     
end

end

#First operation on running the system

  puts "welcome"
  puts "enter 1 for staff login"
  puts "enter 2 to close app"


  staff_Permit = gets.chomp()
  if staff_Permit == "1"
    puts Entry_point()

    else staff_input == "2"
    
  end


