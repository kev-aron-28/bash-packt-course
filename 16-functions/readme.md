# Functions


We can reuse this block of code an number of times

function name { command; command; command; }

function name {
  command
  command
  command

}

name() { command; command; command; command; }

name() {
  command
  command
  command
  command
  command
}

# Scope

By default all variables are global in bash shell
mean we can access and change the value of it from anywhere

There are local variables also and there are valid and can be accessed inside functions only

local varible=''

# Reuse functions in different shell scripts

You need to do source of the script 
and then you can call it from command line


