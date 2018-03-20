#!/bin/bash

env > env_original

export TEST_PATH=/what/ever/:/what/ever/2
export PATH=$PATH:/usr/test
export PATH=$PATH:/usr/test2

env > env_changed

./envdiff -1 env_original -2 env_changed > env_modulefile



