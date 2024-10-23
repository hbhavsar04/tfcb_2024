mkdir -p homework02/question02
list_file="$HOME/Desktop/repo dest/tfcb_2024/homeworks/homework02/list.txt"
for i in $(cat "$list_file"); do echo "File $i" > "homework02/question02/file$i.txt"; done 
