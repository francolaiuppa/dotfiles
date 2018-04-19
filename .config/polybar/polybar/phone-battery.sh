#!/bin/bash
echo '' $(adb shell dumpsys battery 2>/dev/null | grep 'level: ' | sed 's/level:\ //g' | sed 's/^ *//;s/ *$ //')'%' | sed 's/ %//g'
