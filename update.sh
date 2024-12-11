tag=6.1.0

# Download
./download-specific-version.sh \
	-l https://github.com/hyperoslo/Whisper.git \
	-t $tag

# Configure `Sources` folder
cd Sources
mv SupportFiles/Info.plist Source
mv .gitignore Source
mv Source ..
cd ..
rm -rf Sources
mv Source Sources

# Git stuff
git commit -m "Update to $tag version"
git tag $tag HEAD
