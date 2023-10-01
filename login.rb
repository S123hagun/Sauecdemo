# frozen_string_literal: true

class Login
  def initialize()
    @browser= Watir::Browser.new :chrome
  end

  def gotosauce()
    @browser.goto($baseurl)
  end

  def logincredential(username, password )
    @browser.text_field(:id=> 'user-name').set username
    @browser.text_field(:id=> 'password').set password
    @browser.button(:id=> 'login-button').click
  end

  def addproducts()
    @browser.button(:id=> 'add-to-cart-sauce-labs-backpack').click
    @browser.button(:id=> 'add-to-cart-sauce-labs-bike-light').click
    @browser.button(:id=> 'add-to-cart-sauce-labs-bolt-t-shirt').click
  end

  def gotocart()
    @browser.link(:class=> "shopping_cart_link").click
    @browser.button(:id=> 'remove-sauce-labs-bolt-t-shirt').click
    @browser.button(:id=> 'checkout').click
  end

  def addaddress(firstname, lastname, zipcode)
    @browser.text_field(:id=> 'first-name').set firstname
    @browser.text_field(:id=> 'last-name').set lastname
    @browser.text_field(:id=> 'postal-code').set zipcode
  end

  def orderplace()
    @browser.button(:id=> 'continue').click
  end
end


