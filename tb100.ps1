# Top & Bottom 100
# runs against all files in a directory
# if < 100 lines, top and bottom will be the whole list
# Usage: .\tb100.ps1


foreach ($filename in Get-ChildItem) {
    $outputfile = "$filename.out"                            #output filename variable
    Get-Content $filename | select -First 100 > $outputfile  #dump first 100 lines into output file
    echo `n"MIDDLE"`n >> $outputfile                         #add a newline, then MIDDLE, then another newline
    Get-Content $filename | select -Last 100 >> $outputfile  #add the last 100 lines to the output file
}
