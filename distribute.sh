#!/bin/bash

git pull 

export class=$(echo $! | sed 's/.$//')

echo "Newsmerd for slogit"
rsync -Puv /home/observer/correlations2/spiralssched/vex/$1.vex observer@newsmerd:/vlbobs/lba/$class/$1.vex
echo "Hobart12"
scp /home/observer/correlations2/spiralssched/vex/$1.vex oper@pcfshb:~/
scp /home/observer/correlations2/spiralssched/vex/$1.vex oper@pcfs-2hb:/usr2/sched/
echo "Katherine"
scp /home/observer/correlations2/spiralssched/vex/$1.vex oper@pcfske:~/
scp /home/observer/correlations2/spiralssched/vex/$1.vex oper@pcfs-2ke:/usr2/sched/

