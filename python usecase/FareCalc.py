def calculate_fare(km, vehicle_type, hour):
    rates = {
        "economy": 10,
        "premium": 18,
        "suv": 25
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
    print("\n===== fare calculator =====")
    vehicle = input("enter vehicle type (economy/premium/suv or exit): ")
    if vehicle == "exit":
        print("exiting farecalc...")
        break
    try:
        km = float(input("enter distance (in km): "))
        hour = int(input("enter travel time (0-23): "))
        fare, surge = calculate_fare(km, vehicle, hour)
        if fare is None:
            print("service not available")
            continue
        formatted_time = format_time(hour)
        print("\n===== fare receipt =====")
        print(f"distance: {km} km")
        print(f"vehicle: {vehicle}")
        print(f"time: {formatted_time}")
        print(f"base fare: {round(fare / (1.5 if surge else 1), 2)}")
        if surge:
            print("surge applied: yes (1.5x)")
        else:
            print("surge applied: no")
        print(f"final fare: {round(fare, 2)}")
        print("========================\n")
    except ValueError:
        print("invalid input")
