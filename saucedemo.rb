require_relative("../lib/pages/Login")

loginObj=Login.new()

Given(/^User logged in to sauce demo with eligible data$/) do
  loginObj.gotosauce()
  loginObj.logincredential($username, $password)
  end

When(/^User should lands on product page and add products$/) do
  loginObj.addproducts()
  loginObj.gotocart()
end

Then(/^User places the order successfully$/) do
  loginObj.addaddress($firstname, $lastname, $zipcode)
end