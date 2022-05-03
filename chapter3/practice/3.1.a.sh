#!/bin/bash

echo -e "オトン オカン オカン\nオカン オトン オカン" | perl -C -Mutf8 -pe 's/...$/あかん/'

echo -e "オトン オカン オカン\nオカン オトン オカン" | perl -anle '$F[2]="あかん";print "@F"'

echo -e "オトン オカン オカン\nオカン オトン オカン" | ruby -ane '$F[2]="あかん";puts $F.join(" ")'
