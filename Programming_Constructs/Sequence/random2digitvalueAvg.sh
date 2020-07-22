#!/bin/bash -x

num1=${ RANDOM:1:2 }
num2=${ RANDOM:1:2 }
num3=${ RANDOM:1:2 }
num4=${ RANDOM:1:2 }
num5=${ RANDOM:1:2 }
        sum=$num1+$num2+$num3+$num4+$num5
        avg=$sum/5
        echo $sum
        echo $avg
}
