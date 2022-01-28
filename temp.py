import mysql.connector
def connect():
    connection = mysql.connector.connect(user='root', password='horsecomputermathshalide',
                                  host='127.0.0.1',
                                  database='newdb')
    return connection

connection = connect()
cursor = connection.cursor(buffered = True,)

def randDate():
    import datetime
    import random
    start_date = datetime.date(2020, 11, 1)
    end_date = datetime.date(2020, 12, 1)

    time_between_dates = end_date - start_date
    days_between_dates = time_between_dates.days
    random_number_of_days = random.randrange(days_between_dates)
    random_date = start_date + datetime.timedelta(days=random_number_of_days)
    return random_date
cursor.execute("SELECT AircraftID from flightlogs20201103")
l = cursor.fetchall()
for i in l:
    rd = randDate()
    ID = i[0]
    cursor.execute(f"UPDATE flightlogs20201103 SET Date = '{rd}' WHERE AircraftID = '{ID}'")
connection.commit()
