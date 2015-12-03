# Instantiating Arrays

What is the difference between the following code snippets?  What happens when each is run?

- `Array.new(5, rand(20))`
This snippet runs one instance of the random number selection between 0 and 19 and creates an array with that same number in all five indexes of the array.

- `Array.new(5) { rand(20) }`
This snippet creates a new array and runs the code block for each index,
giving 5 separate random numbers 0-19.
