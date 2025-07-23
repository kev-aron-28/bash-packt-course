#!/usr/bin/bash


command -v nc
nc --version 2>&! | cut ' ' -f3 

# Print last file of something

ls -lrt | tail -1
