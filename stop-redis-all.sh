 /Users/lihao/Desktop/redis-cluster/redis-01/src/redis-cli -p 7001  shutdown
 /Users/lihao/Desktop/redis-cluster/redis-02/src/redis-cli -p 7002  shutdown
 /Users/lihao/Desktop/redis-cluster/redis-03/src/redis-cli -p 7003  shutdown
 /Users/lihao/Desktop/redis-cluster/redis-04/src/redis-cli -p 7004  shutdown
 /Users/lihao/Desktop/redis-cluster/redis-05/src/redis-cli -p 7005  shutdown
 /Users/lihao/Desktop/redis-cluster/redis-06/src/redis-cli -p 7006  shutdown  

echo '----------------------------------------------------------------------'


 FILES=`find /Users/lihao/Desktop/redis-cluster/  -name appendonlydir`
 F1=`find $FILES -name *.aof*`
 echo $F1
 F2=`find  $FILES -name  nodes_*`
 echo $F2
 rm -rf $F1
 rm -rf $F2
#for i in `find /Users/lihao/Desktop/redis-cluster/  -name appendonlydir`
#do
#	if [ ! -n $i ];then 
#		echo `未找到文件!`
#	else
#	FILE1=`find  $i -name *.aof*`
#	echo  $FILE1
#    FILE2=`find  $i -name  nodes_*`
#	echo  $FILE2
#	rm  -f $FILE1
#	rm  -f $FILE2
#		 exit 0
#	fi
#done
