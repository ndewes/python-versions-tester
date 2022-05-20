now=$(date +"%d-%m-%Y-%T")
imageDirectory="image_$now"

mkdir tests/$imageDirectory

for pyver in 3.6 3.7 3.8 3.9 3.10; do 
    docker build --build-arg python_version="$pyver" --tag mytest:$pyver . | tee tests/$imageDirectory/output_$pyver.txt
done