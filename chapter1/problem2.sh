ls ../shellgei160/qdata/2/img/*.png | sed 's/\.png$//' | xargs -I@ convert @.png @.png
