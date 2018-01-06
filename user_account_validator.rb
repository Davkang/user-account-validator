class UserAccountValidator
  # your code, here
  attr_reader :email, :username, :name

  def initialize(user_data_hash)
    @email = user_data_hash[:email]
    @username = user_data_hash[:username]
    @name = user_data_hash[:name]
  end

  def check_email
    if @email.nil?
      raise EmailError
    end
    #  raise EmailError "email is missing"
    #else
    #  return true
  end

  def check_format
    if @email.include?('@')
      #return true
    #else
      raise FormatError
    #  raise FormatError "email does not contain an @ symbol."
    end
  end

  def check_username
    if @username.nil?
      raise UsernameError
      # "username is missing"
    end
  end
end

class EmailError < StandardError
end
class FormatError < StandardError
end
class UsernameError < StandardError
end
