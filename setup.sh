#!/bin/bash
currYear=`/bin/date +%Y`
rm -rf ./.git
perl -e "s/{%MODULENAME%}/${2}/g;" -pi $(find ./ -type f \( ! -iname "setup.sh" \))
perl -e "s/{%AUTHOR%}/${1}/g;" -pi $(find ./ -type f \( ! -iname "setup.sh" \))
perl -e "s/{%CURRYEAR%}/$currYear/g;" -pi $(find ./ -type f )
mv ./src/SkeletonModule ./src/${2}
mv ./tests/SkeletonModuleTest ./tests/${2}Test
mv ./../SxSkeletonModule ./../${2}
rm ./setup.sh
