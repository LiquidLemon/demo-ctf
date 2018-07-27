#!/usr/bin/python -u
import secrets

password = input("password> ")

if password == secrets.password:
    print "The flag is {}" % secrets.flag
else:
    print "Guess again"
