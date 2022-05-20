# python-versions-tester
Python testing script for multiple versions with docker.

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

    All the output of the executed commands is logged in this folder. The outputs are split into two more folders -> ```images_date``` & ```test_date```. 
    
- To change the Python image go into ```Dockerfile``` and choose another Python version.
- In the ```requirements.txt``` the required Python libraries are specified. These are then automatically installed by the ```Dockerfile```.
