now=$(date +"%d-%m-%Y-%T")
testDirectory="test_$now"

mkdir tests/$testDirectory

for pyver in 3.6 3.7 3.8 3.9 3.10; do 
    outputFile="output_$pyver.txt"
    docker run --rm -v $(pwd):/workspace mytest:$pyver | tee tests/$testDirectory/$outputFile
done