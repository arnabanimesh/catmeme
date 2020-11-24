@ECHO OFF
ECHO Vibing cat meme generator
ECHO.
SET /P input="Enter video name with path and extension (default: cat.mp4): " || SET "input=cat.mp4"
SET /P font="Enter font file name with path and extension (default: /Windows/fonts/impact.ttf): " || SET "font=/Windows/fonts/impact.ttf"
SET /P fontsize="Enter font size (default: 48): " || SET "fontsize=48"
SET /P cat="Enter cat text: " || SET "cat="
SET /P man="Enter man text: " || SET "man="
SET /P drum="Enter drum text: " || SET "drum="
SET /P output="Enter output file name with extension (default: meme.mp4): " || SET "output=meme.mp4"

ffmpeg -i "%input%" -threads 16 -vf drawtext="text=%cat%:fontfile=%font%:fontcolor=black:fontsize=%fontsize%:x=180:y=550",^
drawtext="text=%man%:fontfile=%font%:fontcolor=white:fontsize=%fontsize%:x=830:y=400",^
drawtext="text='%drum%':fontfile='%font%':fontcolor=white:fontsize='%fontsize%':x=650:y=600" -c:a copy "%output%"


