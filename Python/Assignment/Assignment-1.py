# 1. Consider Mr.Jaishnav Monthly salary is 34500.0, Now calculate his annual Salary

monthly_salary = 34500.0

annual_salary = monthly_salary * 12

print("Annual Salary:", annual_salary)

# 2. Miss Pooja Mansi attended 94 days out of 126 days. Now write a program to find attendance percentage

days_attended = 94
total_days = 126
attended_days_percentage = (days_attended / total_days) * 100
print(attended_days_percentage)

# 3. One liter of petrol costs ₹108.96.
# Find how many liters of petrol can be purchased for ₹300.

petrol_price_per_liter = 108.96
amount = 300

liters_of_petrol = amount / petrol_price_per_liter

print(liters_of_petrol, "liters")

# 4. In an Apartment they need 6 water tins per day. W.a.p to calculate August month bill. Each Water tin cost is Rs 20.

tins_per_day = 6
days_in_august = 31
cost_per_tin = 20

total_bill = tins_per_day * days_in_august * cost_per_tin

print("August Water Bill:", total_bill)

# 5. Consider Pizza cost is 326.50, customer order for 3 pizzas, now calculate
# bill amount. Shop provides 20% discount on bill amount. So find discount
# amount and final Bill

pizza_cost = 326.50
total_pizza_order = 3
discount_percentage = 20

total_cost = pizza_cost * total_pizza_order
discount_amount = total_cost * (discount_percentage / 100)
final_amount = total_cost - discount_amount

print("Total Bill:", total_cost)
print("Discount:", discount_percentage, "%")
print("Discount Amount:", discount_amount)
print("Final Bill:", final_amount)

# 6. Read Employee annual salary and hike percentage, then calculate annual
# salary after hike. And display new monthly salary

annual_salary = float(input("Enter annual salary: "))
hike_percentage = float(input("Enter hike percentage: "))

hike_amount = annual_salary * hike_percentage / 100
new_annual_salary = annual_salary + hike_amount
new_monthly_salary = new_annual_salary / 12

print("New Annual Salary:", new_annual_salary)
print("New Monthly Salary:", new_monthly_salary)

# 7. Read Mongo cost per kg, then read quantity. Big Basket gives offer as 22%
# discount on Bill Amount. So find Total Bill Amount

mango_cost = float(input("Enter mango cost per kg: "))
mango_quantity = float(input("Enter mango quantity in kg: "))

discount = 0.22

total_mango_cost = mango_cost * mango_quantity
discount_amount = total_mango_cost * discount
final_amount = total_mango_cost - discount_amount

print("Total Mango Cost:", total_mango_cost)
print("Discount Amount:", discount_amount)
print("Final Mango Cost:", final_amount)

# 8. AVD Group want to store all student information in Cloud, But for 1GB it
# cost Rs:30, now read Total Storage in GB then find Total Cost

storage_required_gb = float(input("Enter total storage required in GB: "))
cost_per_gb = 30

total_cost = storage_required_gb * cost_per_gb

print("Total Cost:", total_cost)


# 9. W.a.p to find Report Generation Time. One report takes 3 mints time
# Now read total no.of reports then find Total time

total_reports = int(input("Enter number of reports: "))
time_per_report = 3

total_time = total_reports * time_per_report

print("Total Time:", total_time, "minutes")

# 10. W.a.p to find Time taken to clean Data. For 1 record it takes 2second to
# clean now read Total no.of records then find Total time in hours

total_records = int(input("Enter number of records: "))
time_per_record = 2

time_required_seconds = total_records * time_per_record
time_required_hours = time_required_seconds / 3600

print(f"Total time required to clean {total_records} records: {time_required_hours} hours")
