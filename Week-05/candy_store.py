tuple1 = ["Bubblegum", "Taffy", "Lollipops"]
tuple2 = ["Banana-Berry Blast", "Pineapple Punch", "Blue Raspberry"]

candies1 = tuple2[0] + " " + tuple1[0]
candies2 = tuple2[1] + " " + tuple1[1]
candies3 = tuple2[2] + " " + tuple1[2]

candies = list(candies1 + " " + candies2 + " " + candies3)
candies = str(candies1 + " " + candies2 + " " + candies3)


print("Today's candy options include: " + candies)

# I noticed that the order of the output follows the order of the input, as a correct code should.