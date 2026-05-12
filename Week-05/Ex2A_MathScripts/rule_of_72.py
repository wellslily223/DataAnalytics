savings = input("Enter savings: ")
interest_rate = input("Enter interest: ")
years = input("Enter amount of years: ")
interest = int(interest_rate) * int(savings)
format(interest, ".2f")

print(f" Your current savings is {savings}.")
print(f" At a {interest_rate}% interest rate, your savings account will be worth {interest} in {years} years")