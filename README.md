Takeaway Challenge
==================
```
                            _________
              r==           |       |
           _  //            |  M.A. |   ))))
          |_)//(''''':      |       |
            //  \_____:_____.-------D     )))))
           //   | ===  |   /        \
       .:'//.   \ \=|   \ /  .:'':./    )))))
      :' // ':   \ \ ''..'--:'-.. ':
      '. '' .'    \:.....:--'.-'' .'
       ':..:'                ':..:'

 ```

Task
-------
Order the food you like.

This program allows you to see a menu, order food, calculate the price and then send a message to indicate that the order is on its way  

IRB
-----
Courtneys-MBP:takeaway-challenge courtneyosborn$ pry
[1] pry(main)> require './lib/order.rb'
=> true
[2] pry(main)> order = Order.new(Menu)
=> #<Order:0x007f8ceaa8e688 @current_order_total=nil, @menu_class=Menu>
[3] pry(main)> order.view_menu
=> #<Menu:0x007f8ceaa274d8
 @our_menu=
  [{:number0=>0, :starter1=>:soup, :price=>5},
   {:numbe1=>1, :starter2=>:mussels, :price=>7},
   {:number2=>2, :starter3=>:carpaccio, :price=>6},
   {:number3=>3, :main1=>:steak, :price=>12},
   {:number4=>4, :main2=>:chicken, :price=>11},
   {:number5=>5, :main3=>:salad, :price=>10},
   {:number6=>6, :dessert1=>:milktart, :price=>6},
   {:number7=>7, :dessert2=>:cheesecake, :price=>7},
   {:number8=>8, :dessert3=>:tiramisu, :price=>7},
   {:number9=>9, :drinks1=>:wine, :price=>8},
   {:number10=>10, :drinks2=>:beer, :price=>5},
   {:number11=>11, :drinks3=>:coke, :price=>3}],
 @users_order=[]>
[4] pry(main)> order.order_food(1,3)
=> {:numbe1=>1, :starter2=>:mussels, :price=>7, :quantity=>3}
[5] pry(main)> order.order_food(7,10)
=> {:number7=>7, :dessert2=>:cheesecake, :price=>7, :quantity=>10}
[6] pry(main)> order.order_food(10,3)
=> {:number10=>10, :drinks2=>:beer, :price=>5, :quantity=>3}
[7] pry(main)> order.display_order
=> [{:numbe1=>1, :starter2=>:mussels, :price=>7, :quantity=>3},
 {:number7=>7, :dessert2=>:cheesecake, :price=>7, :quantity=>10},
 {:number10=>10, :drinks2=>:beer, :price=>5, :quantity=>3}]
[8] pry(main)> order.calculate_price
=> "The total cost is £106"
[9] pry(main)> order.send_sms("Your order is on its way")
=> <Twilio::REST::Message @path=/2010-04-01/Accounts/AC931d30987b9634469ecc155be9841575/Messages/SM23c9d571cf6f4c70a2cab400edb562f7>

Task
-----

```
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes

As a customer
So that I can verify that my order is correct
I would like to check that the total I have been given matches the sum of the various dishes in my order

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered
```
