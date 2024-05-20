import MySQLdb

try:

     db = MySQLdb.connect(

         host='127.0.0.1',

         user='myuser',

         passwd='kiss7673@#',

         db='archives'

         )

except Exception as e:
      sys.exit('The connection is succesful')

cursor = db.cursor()

y=input("Type:\n")
j=input("Subject:\n")
c=input("Comments:\n")

s='insert into myarchives (type,subject,comments) values(%s,%s,%s)'

t=(y,j,c)

cursor.execute(s,t)

db.commit()

cursor.execute('SELECT * from myarchives;')

for row in cursor.fetchall():
    print(row[0],"-->",row[1],"-->",row[2],"-->",row[3])

db.close()
