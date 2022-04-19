#!/bin/bash

echo "ps" | sh
echo "ps" | ./hsh

echo "which ls" | sh
echo "which ls" | ./hsh

echo "uname" | sh
echo "uname" | ./hsh

simple_shell=$(echo "pwd" | ./hsh);
sh=$(echo "pwd" | sh);
if [ "${simple_shell}" == "${sh}" ]
then
    echo Check 0 ✅
else
    echo Check 0 ❌
fi

simple_shell=$(echo "ls" | ./hsh);
sh=$(echo "ls" | sh);
if [ "${simple_shell}" == "${sh}" ]
then
    echo Check 1 ✅
else
    echo Check 1 ❌
fi

simple_shell=$(echo "/bin/env" | ./hsh);
sh=$(echo "/bin/env" | sh);
if [ "${simple_shell}" == "${sh}" ]
then
    echo Check 2 ✅
else
    echo Check 2 ❌
fi
