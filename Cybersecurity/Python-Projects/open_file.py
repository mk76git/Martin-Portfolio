import os

with open("user.txt") as file:
    for line in file:
      print(line.strip().upper())
