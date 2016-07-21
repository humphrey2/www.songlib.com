
# S3: http://humpty.xyz/
# Run this from the root of the repository
./build_resources.sh
hugo
s3cmd sync -r --delete-removed public/ s3://hugo.songlib.com/
