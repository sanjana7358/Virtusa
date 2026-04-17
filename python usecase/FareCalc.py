def calculate_fare(km, vehicle_type, hour):
    rates = {
        "Economy": 10,
        "Premium": 18,
        "SUV": 25
    }
    if vehicle_type not in rates:
        return "Service Not Available"
    rate = rates[vehicle_type]
    if 17 <= hour <= 20:
        surge = 1.5
    else:
        surge = 1
    fare = km * rate * surge
    return fare
km = float(input("Enter distance (km): "))
vehicle = input("Enter vehicle type (Economy/Premium/SUV): ")
hour = int(input("Enter hour (0-23): "))
result = calculate_fare(km, vehicle, hour)
print("\n--- Price Receipt ---")
print("Distance:", km, "km")
print("Vehicle:", vehicle)
print("Final Fare:", result)
