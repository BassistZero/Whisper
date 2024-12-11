#!/bin/bash

usage() { 
    echo "Usage: $0 [-l \"link-to-repo\"] [-t X.X.X]" 1>&2; exit 1; 
}

while getopts "l:t:" o; do
    case "${o}" in
        l)
            git_url=${OPTARG}
            ;;
        t)
            tag_version=${OPTARG}
            ;;
    esac
done

echo "link = $git_url"
echo " tag = $tag_version"
printf "\n"

if [ -z $git_url ] || [ -z $tag_version ]; then
    usage
fi

rm -rf Sources
git clone $git_url Sources
cd Sources
git checkout $tag_version
rm -rf .git

printf "\n"
echo "Updated!"
