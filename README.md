# Nested Arrays 2 Ruby For Conversion And Seeding

##Learning Competencies

* Generating nested arrays and hashes with ruby
* Using ruby's built-in methods to speed coding
* Researching Array and Hash methods
* Looping and conditions

##Summary

In this challenge, let's start creating some data structures and better understand what's going on under the hood with arrays and hashes.

A powerful way to create an array is using the `Array.new` class method. Try this in IRB.

```ruby
first_25_letters = ('A'..'Z').first(25)

letter_grid = Array.new(5) { first_25_letters.shift(5) }
# => [ ["A", "B", "C", "D", "E"],
#      ["F", "G", "H", "I", "J"],
#      ["K", "L", "M", "N", "O"],
#      ["P", "Q", "R", "S", "T"],
#      ["U", "V", "W", "X", "Y"] ]
```

Do you understand how the above code is working? If not, make a note to come back later so you understand passing blocks and the `shift` method.

##Releases

###Release 0 : Tic-tac-toe Revisited - Populating a Board

Take a look at the simple 2 dimensional array for Tic-Tac-Toe from Nested Arrays. Let's say we wanted to generate 10 sample boards with x's and o's. How would you do that? How do you make the x's and o's random? In the first iteration, it's OK to create boards that don't have logical ratio of x's and o's.

Write an rspec test or two to make sure your method is working correctly. Since this is random, it can seem hard to test, but there are some things that are certain:

 * The board will definitely be 3x3
 * The board will definitely be made up of x's and o's and _nothing else_

Remember that rspec has [many kinds of matchers](https://www.relishapp.com/rspec/rspec-expectations/v/2-14/docs/built-in-matchers) built in.

**Extra Credit:** Go ahead and populate a board with a realistic ratio of x's and o's. There should only be either 5 x's or 4 o's or vice versa. There's an enumerable method that works on arrays that can help you! How could you write a good test to make sure the array has the right number of x's and o's?


###Release 1 : Convert nested array to hash

Ruby provides a handy `Hash::[]` method which will convert a properly formatted array into a hash. [Documentation](http://www.ruby-doc.org/core-1.9.3/Hash.html#method-c-5B-5D).

We want to convert each player entry from the data table array (shown below) into a hash.

```ruby
roster = [["Number", "Name", "Position", "Points per Game"],
         ["12","Joe Schmo","Center",[14, 32, 7, 0, 23] ],
         ["9", "Ms. Buckets ", "Point Guard", [19, 0, 11, 22, 0] ],
         ["31", "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25] ],
         ["7", "Sally Talls", "Power Forward ", [18, 29, 26, 31, 19] ],
         ["22", "MK DiBoux ", "Small Forward ", [11, 0, 23, 17, 0] ]]
```

Our goal is to write code that converts a data table array in the format above into an array formatted for the `Hash::[]` method. When we're done, we should be able to use it to create an array of hashes that looks something like:

```ruby
[..., { "Number" => 31, "Name" => "Harvey Kay", "Position" => "Shooting Guard", "Points per Game" => [0, 30, 16, 0, 25] },...]
```

####Break It Down
Take a moment to read up in the [documentation](http://www.ruby-doc.org/core-1.9.3/Hash.html#method-c-5B-5D) to see the 3 formats that the `Hash::[]` method accepts.

Which format seems most convenient, given the nested array shown above? Test out the `Hash::[]` method with some test data in irb. How does your nested array need to change so it is the right format?


####Build a converter
Create a method that can convert the nested array into an array of hashes. As an example:

```ruby
def convert_roster_format(roster)
  # your code here
  # should return a new format of roster which is an array of hashes
end

hashed_roster = convert_roster_format(my_roster)
hashed_roster[2] #=> { "Number" => 31, "Name" => "Harvey Kay", "Position" => "Shooting Guard", "Points per Game" => [0, 30, 16, 0, 25] }
hashed_roster[2]["Name"] #=> "Harvey Kay"
```

Your rspec tests will need to demonstrate that you can take an array in the original format and output an array of hashes that are correctly constructed. There are more than a few tests you can write to prove that your code is working correctly, so **make sure** you spend time brainstorming ways to prove that your code is correct. Just like in the professional world, _code without tests is not complete_.
