# python-versions-tester
Python testing script for multiple versions in docker.

## Installation
Simply clone the repository. Of course, Docker is required for the execution.

Selection of versions to be tested are specified in ```versions.txt```.

## Developing
Make sure that the bash scripts have the required permissions to be executed.

- Clone the repository
- To build the images

    ```./test_env.sh```
- To run the tests

    ```./run_test.sh```
    
- Directory ```tests```

    All the output of the executed commands is logged in this folder. The outputs are split into two more folders -> ```images_date``` & ```test_date```
    
- To change the Python image go into ```Dockerfile``` and choose another Python version
- The image name can be changed in the bash scripts - ```line 8```
- In the ```requirements.txt``` the required Python libraries are specified. These are then automatically installed by the ```Dockerfile```
- To test a Python application, the Python application must be copied to the cloned repository

## Running the test
- First select in ```versions.txt``` the Python versions to be tested
- Copy the Python app to be tested into the cloned repository
- Write the required libarys into the ```requirements.txt```
- Check if the bash scripts can be executed. With the command ```chmod +x script``` the script can be given the permission to execute
- Run ```./test_env.sh``` to build the images with their versions. In the folder ```tests``` further in ```images_date``` you can see the output and therefore also possible errors during building
- Run ```./run_test.sh``` to test the different versions. In the folder ```tests/test_date``` you can find the output files for the versions
