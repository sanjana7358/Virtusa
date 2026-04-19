def calculate_fare(km, vehicle_type, hour):
    rates = {
        "Economy": 10,
        "Premium": 18,
        "SUV": 25
    }

    try:
        rate = rates[vehicle_type]
        base_fare = km * rate

        surge = False
        if 17 <= hour <= 20:
            base_fare *= 1.5
            surge = True

        return base_fare, surge

    except KeyError:
        return None, None


def format_time(hour):
    display_hour = hour % 12
    if display_hour == 0:
        display_hour = 12

    period = "AM" if hour < 12 else "PM"
    return f"{display_hour}:00 {period}"


while True:
    print("\n===== FARE CALCULATOR =====")

    vehicle = input("Enter vehicle type (Economy/Premium/SUV or Exit): ")

    if vehicle.lower() == "exit":
        print("Exiting FareCalc...")
        break

    try:
        km = float(input("Enter distance (in km): "))
        hour = int(input("Enter Travel Time (0-23): "))

        fare, surge = calculate_fare(km, vehicle, hour)

        if fare is None:
            print("Service Not Available")
            continue

        formatted_time = format_time(hour)

        print("\n===== FARE RECEIPT =====")
        print(f"Distance: {km} km")
        print(f"Vehicle: {vehicle}")
        print(f"Time: {formatted_time}")
        print(f"Base Fare: {round(fare / (1.5 if surge else 1), 2)}")

        if surge:
            print("Surge Applied: Yes (1.5x)")
        else:
            print("Surge Applied: No")

        print(f"Final Fare: {round(fare, 2)}")
        print("========================\n")

    except ValueError:
        print("Invalid input")
