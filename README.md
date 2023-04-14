# minitalk

## Overview
Minitalk is a small program that allows for the exchange of data using UNIX signals.

## Mandatory
The goal is to create server and client executables. The client must send a string as a parameter to the server (identified by its process ID) which will then display it. The program should use only SIGUSR1 and SIGUSR2 signals.

## Bonus
Additional features can be implemented, such as a reception acknowledgement system and support for Unicode characters.

## Allowed Functions
The following functions can be used to complete the project:
* malloc
* free
* write
* getpid
* signal
* sigemptyset & sigaddset
* sigaction
* pause
* kill
* sleep
* usleep
* exit
