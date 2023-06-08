diff <(cat file1.txt) <(cat file2.txt)

#cat file1.txt and cat file2.txt are the commands whose output is passed to diff command. The process substitution creates temporary files containing the output of each command, and diff compares those temporary files.