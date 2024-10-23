mkdir texts
cd texts
for i in {1..32}
do echo text_$i.txt > text_$i.txt
done
for pineapple in `ls *.txt`
do mv $pineapple important_$pineapple
done
