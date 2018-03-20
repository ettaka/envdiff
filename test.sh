#!/bin/bash

env > env_original

export TEST_PATH=/what/ever/:/what/ever/2
export PATH=$PATH:/usr/test
export PATH=$PATH:/usr/test2

env > env_changed

./envdiff env_original env_changed > env_modulefile

echo "Original environment:"
echo "---------------------"
cat env_original

echo "---------------------"
echo "Changed environment:"
echo "---------------------"
cat env_changed

echo "----------------------------"
echo "Difference in module syntax:"
echo "----------------------------"
cat env_modulefile

rm env_original env_changed env_modulefile


