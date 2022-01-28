pad = " "*10
space = "\n"*1
chrlen = 15
from ConnectionModule import *
import datetime
connection = connect()
cur = connection.cursor(dictionary = True)
global User

def display(table):
    if table  == []:
        return
    fieldrow={}
    for key in table[0]:
        fieldrow[key] = key
    table.insert(0,fieldrow)
    for row in table:
        for column_value_key in row:
            column_value = row[column_value_key]
            pad = " "*(chrlen-len(str(column_value)))
            print("|",str(column_value) + pad,end="|")
        print()
        if table.index(row) == 0:
            sty = ""+"| "+'-'*(chrlen-1)+" |"
            print(sty*len(row))

            
def get_input(input_string,field,table):
    valid_inputs = []
    for row in table:
        for column_key in row:
            if column_key.upper() == field.upper():
                valid_inputs.append(row[column_key])
    inp = input(input_string)
    while inp not in valid_inputs:
        print("Please enter a valid input")
        inp =input(input_string)

    return inp
                
def BookTickets():
    print(space)
    
    cur.execute("SELECT DISTINCT Destination FROM flightlogs20201103")
    result = cur.fetchall()
    display(result)
    dest = get_input("Enter your destination(case sensitive) >>> ","destination",result)

        
    print(space)
    print(f"Here are all the avaiable flights going to {dest}")
    cur.execute(f"SELECT AircraftID,AircraftName,AirlinePartner,DeptTime DepartureTime,ArrivalTime,EconomyFare FROM flightlogs20201103 WHERE Destination = '{dest}'")
    result = cur.fetchall()
    display(result)
    FlightID = get_input("Select your flight by entering its 'AircraftID' > ","AircraftID",result)
    print(space*2)
    cur.execute(f"SELECT AircraftID,AircraftName,AirlinePartner,FirstClassFare,BussinessFare,EconomyFare FROM flightlogs20201103 WHERE AircraftID = '{FlightID}'")
    result = cur.fetchall()
    display(result)
    print(space)
    while True:
        Class = input("Select your the class of your ticket (case insensitive)")
        if "Economy".upper() in Class.upper():
            Class = 'EconomyFare'
            break
        elif "FirstClass".upper() in Class.upper():
            Class = 'FirstClassFare'
            break
        elif "Bussiness".upper() in Class.upper():
            Class = 'BussinessFare'
            break
        else:
            print("Enter a valid input")
    
       
actions = {1:BookTickets}
def main_user(user):
    User = user
    action = main_screen()
    actions[action]()

def main_screen():
    print(space)
    print(pad+"Main Menu")
    print("Running in fullscreen is recommended")
    print(space)
    print("[1] - Book Tickets")
    print("[2] - View  Upcoming Flights")
    print("[3] - Cancel and refund Tickets")
    print("[4] - Modify your ticket (change seats/class/timings)")
    print("[5] - Delect your Account")
    print("[6] - Connect to Customer Support")
    print("[7] - Report missing baggage")
    print(space)
    while True:
        try:
            action = int(input("Select what you want do:"))
            break
        except ValueError:
            print("Please enter the index number of the menu item")

    return action


    
    
    
    










    
main_user("K")
