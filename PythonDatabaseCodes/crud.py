#import the module
import mysql.connector

def insert(con,cur):
    #read values to be inserted
    cid=input("Enter ID:")
    cnm=input("Enter TYPE:")
    cad=input("Enter SUBJECT:")
    cph=input("Enter COMMENTS:")
   
    
    #create the Insert query
    sql = "INSERT INTO myarchives (type,subject,comments) VALUES (%s,%s,%s)"
    #create list of values typed from user to insert in customer table
    val = (cid,cnm,cad,cph)
    #Execute query with values
    cur.execute(sql, val)
    #commit for permanent storage in database
    con.commit()
    #display success message
    print(cur.rowcount, "Record inserted.")
    
    
def update(con,cur):
    #read values to be updated
    cid=input("Enter ID:")
    cnm=input("Enter TYPE:")
    cad=input("Enter SUBJECT:")
    cph=input("Enter COMMENTS:")
   
    #create update query
    sql = "update myarchives set type='"+cnm+"', subject='"+cad+"',comments='"+cph+"' where id="+cid
    #Execute Update query on opened cursor
    cur.execute(sql)
    #commit Changes to DB
    con.commit()
    #display success message
    print(cur.rowcount, "Record updated.")
    

def delete(con,cur):
    #read the customer ID for which record to be deleted
    cid=input("Enter customer ID to delete:")
    #Create Delete Query
    sql = "delete FROM myarchives where id = '"+cid+"'"
    #execute delete query
    cur.execute(sql)
    #commit changes to DB
    con.commit()
    #display success message
    print(cur.rowcount, "Record deleted.")
    

def display(cur):
    #Execute SELECT statement 
    cur.execute("SELECT * FROM myarchives")
    #Fetch all records from table
    res = cur.fetchall()
    #print
    print("--------------------------------------------------------------------")
    print("ID    TYPE     SUBJECT                   COMMENTS")
    print("--------------------------------------------------------------------")
          
    for x in res:
        print(str(x[0])+"--->"+x[1]+"--->"+x[2]+"---->"+x[3])
    print("---------------------------------------------------------------------")    
   
   

def main():
    #make connection to database using localhost, root as username, no password so "" and database name
    con = mysql.connector.connect( 
            host="localhost",
            user="myuser",
            passwd="kiss7673@#",
            database="archives"
            )
    #opne cursor
    cur = con.cursor()
    ch=0
    #diaplay menu until user presses 5
    while(ch<=4):
        #menu options
        print("1. INSERT")
        print("2. UPDATE")
        print("3. DELETE")
        print("4. DISPLAY")
        print("5. EXIT")
        # ask user to enter what he wants to do
        ch=int(input("Enter Your choice:"))
        #call relevant fucntions defined above
        if (ch==1):
            insert(con, cur)
        if (ch==2):
            update(con, cur)
        if (ch==3):
            delete(con, cur)
        if  (ch==4):
            display(cur)
        
#call main
main()        
