require_relative "user_account_validator"

users = [
  {
    email: "doc@d7miners.com",
    username: "doc",
    name: "Doc"
  },
  {
    email: "grumpy@d7miners.com",
    username: "",
    name: "Grumpy"
  },
  {
    email: "happy[at]d7miners.com",
    username: "happy",
    name: "Happy"
  },
  {
    email: "sleepy@d7miners.com",
    username: "",
    name: "Sleepy"
  },
  {
    email: "bashful@d7miners.com",
    name: "Bashful"
  },
  {
    email: "sneezy@d7miners.com",
    username: "sneezy",
    name: "sneezy"
  },
  {
    username: "dopey",
    name: "Dopey"
  }
]

#validation_data = users.map { |user| UserAccountValidator.new(user) }

# user1 = [
#   {
#     email: "doc@d7miners.com",
#     #username: "doc",
#     name: "Doc"
#   }
# ]

validation_data = users.map { |user| UserAccountValidator.new(user) }
validation_data.each do |data|
  # check
  begin
    data.check_email
    data.check_format
    data.check_username
    #what i want to do
  rescue EmailError
    puts "Email is missing."

  rescue FormatError
    puts "email does not contain an @ symbol."

  rescue UsernameError
    puts "username is missing."

  end
end
