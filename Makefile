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

OBJS = HelloGitWorld.o
#SRCS = HelloGitWorld.c
SRCS = $(OBJS:.o=.c)
TARGET = HelloGitWorld

all : $(TARGET)

$(TARGET) : $(OBJS)
	$(CC) -o $(TARGET) $(OBJS)

#.c.o :
#	$(CC) $(INC) $(CFLAGS) $<

dep :
	gccmakedep $(INC) $(SRCS)

clean :
	rm -rf $(OBJS) $(TARGET) core

new :
	$(MAKE) clean
	$(MAKE)


# DO NOT DELETE
HelloGitWorld.o: HelloGitWorld.c /usr/include/stdc-predef.h \
 /usr/include/stdio.h /usr/include/features.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h \
 /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/libio.h \
 /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h
