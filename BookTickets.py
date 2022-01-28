import mysql.connector
from MainUser import * 
from ConnectionModule import * 
space = '\n'*1
def connect():
    connection = mysql.connector.connect(user='root', password='horsecomputermathshalide',
                                  host='127.0.0.1',
                                  database='newdb')
    return connection

connection = connect()
cursor = connection.cursor(buffered = True)


def encrypt_string(hash_string):
    import hashlib
    sha_signature = hashlib.sha256(hash_string.encode()).hexdigest()
    return sha_signature


def gatherPassenger():
    ''' Makes a complete dictionary of the user '''
    pass

def AddPassenger():
    ''' Adds the passenger to your database '''
    pass
def login():
    pad = " "*00

    print(pad+"Welcome to City Airport's Ticket booking portal!")
    print(space)
    result = []
    while True:
        Ap1 = input("Do you have an account?(Y/N)").upper()
        if Ap1 == "Y":
            print(space)
            user= input('Input Username: ')
            print(space)
            password = encrypt_string(input('Enter your Password:'))
            cursor.execute(f"SELECT * FROM users WHERE user = '{user}' AND password = '{password}'")
            result = cursor.fetchone()
            if result != None:
                break
                
        elif Ap1 == "N":
            Ap2 = input('would like to create one? (Y/N)').upper()
            print(space)
            if Ap2 == 'Y':
                create_new_account() 
            else:
                print('You cannot proceed without an account')
                print(space)
                print('Have a Great Day!')
    
    if result[0] == 'Admin':
        main_admin()
    else:
        main_user(user)
def generate_passenID():
    import random
    ID = chr(random.randint(ord('A'),ord('Z'))) + str(random.randint(10000,99999)) \
    + chr(random.randint(ord('A'),ord('Z')))
    cursor.execute(f"Select * from users where PassenID = '{ID}'")
    if cursor.fetchone() == None:
        return ID
    else:
       return gen_passenID()

def check_username(name):
    cur = connection.cursor()
    if name.isalnum() == False:
        return False
    cur.execute(f"Select * from users where user = '{name}'")
    if cur.fetchone() == None:
        return True
    else:
        print('Username taken')
        return False

##def commit_n_refresh_connection(connection):
##
##    connection = connect()
##    cursor = connection.connect()
def create_new_account():
    while True:
        username = input('Input a username for your account:')
        print(space)
        if check_username(username):
            break
    password = encrypt_string(input('Enter your Password:'))
    print(space)
    PassenID = generate_passenID()

    command=f"INSERT INTO users VALUES ('{username}','{password}','{PassenID}')"
    cursor.execute(command)
    connection.commit()
    print("Account Created Sucessfully")
    print(space)

def main_admin():
    print("Logged in as Admin")
    
login()
