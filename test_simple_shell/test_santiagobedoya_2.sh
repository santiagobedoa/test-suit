#!/bin/bash

echo "/bin/echo     hello" | ./hsh
echo "/bin/echo     hello" | sh

simple_shell=$(echo "which ls" | ./hsh);
sh=$(echo "which ls" | sh);
if [ "${simple_shell}" == "${sh}" ]
then
    echo Check 0 ✅
else
    echo Check 0 ❌
fi

simple_shell=$(echo "" | ./hsh);
sh=$(echo "" | sh);
if [ "${simple_shell}" == "${sh}" ]
then
    echo Check 1 ✅
else
    echo Check 1 ❌
fi

simple_shell=$(echo "\n" | ./hsh);
sh=$(echo "\n" | sh);
if [ "${simple_shell}" == "${sh}" ]
then
    echo Check 2 ✅
else
    echo Check 2 ❌
fi
