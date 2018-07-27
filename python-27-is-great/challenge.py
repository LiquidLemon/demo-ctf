#!/usr/bin/env python2
import secrets

password = input("password> ")
if password == secrets.password:
    print "The flag is {}" % secrets.flag
else:
    print "Guess again"
