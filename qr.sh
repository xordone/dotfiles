#!/bin/bash
 printf "$1" | curl -F-=\<- qrenco.de
