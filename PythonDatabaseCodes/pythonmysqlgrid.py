import tkinter as tk
from tkinter import ttk
import mysql.connector
 
def show():
        mysqldb = mysql.connector.connect(host="localhost", user="myuser", password="kiss7673@#", database="archives")
        mycursor = mysqldb.cursor()
        mycursor.execute("SELECT * from myarchives")
        records = mycursor.fetchall()
        print(records)
 
        for i, (id,type,subject,comments) in enumerate(records, start=1):
            listBox.insert("", "end", values=(id, type, subject, comments))
            mysqldb.close()
 
 
root = tk.Tk()
root.title("Archives Cases")
label = tk.Label(root, text="Archives", font=("Arial",40)).grid(row=0, columnspan=3)
 
cols = ('id', 'type', 'subject','comments')
listBox = ttk.Treeview(root, columns=cols, show='headings')
 
for col in cols:
    listBox.heading(col, text=col)    
    listBox.grid(row=1, column=0, columnspan=2, ipady=50, ipadx=50)
closeButton = tk.Button(root, text="Close", width=30, command=exit).grid(row=4, column=1)
show()
root.mainloop()

