# Example user class; not used in app
class User
  attr_accessor :first_name, :last_name, :email # allows assignment in "initialize"
  
  def initialize(attributes = {})
    @first_name = attributes[:first_name] # instance var's are accessible within the whole class
    @last_name = attributes[:last_name]
    @email = attributes[:email]
  end
  
  def full_name # return forwards, separated full name 
    "#{@first_name} #{@last_name}" 
  end
  
  def formatted_email # return forwards, separated full name + email
    full_name + " <#{@email}>"
  end
  
  def alphabetical_name
    "#{@last_name}, #{@first_name}"
  end
end