##############################################################################
# file name   : Makefile
# Creator     : Jaehong Park / jaehong1972@gmail.com
# Description : Makefile for compiling HelloWorld.c
##############################################################################

.SUFFIXES : .c .o 

CC = gcc 
CFLAGS = -O2 -g -c 
#INC = -I/home/jaehong/include
#LIBS = 

OBJS = HelloWorld.o
#SRCS = HelloWorld.c
SRCS = $(OBJS:.o=.c)
TARGET = HelloGitWorld

ALL : $(TARGET)

$(TARGET) : $(OBJS)
	$(CC) -o $(TARGET) $(OBJS)

.c.o :
	$(CC) $(INC) $(CFLAGS) $<-

dep :
	gccmakedep $(INC) $(SRCS)

clean :
	rm -rf $(OBJS) $(TARGET) core

new :
	$(MAKE) clean
	$(MAKE)


