# MSGD

[![Docker Build Status](https://img.shields.io/docker/build/icra2017/msgd.svg)](https://hub.docker.com/r/icra2017/msgd/)

**Authors:** [Chao Gao](https://www.cl.cam.ac.uk/research/dtg/www/people/cg500/)

**Current version:** 1.0.0 

MSGD is a scalable back-end for indoor magnetic field-based graphslam. Please refert to the related publication below for details.

### Related Publication:
Chao Gao and Robert Harle. **Msgd: Scalable back-end for indoor magnetic field-based graphslam**. In *Robotics and Automation (ICRA), 2017 IEEE International Conference on*. IEEE, 2017.

### License
MSGD is released under a [GPLv3 license](https://github.com/chaogao-cam/MSGD/blob/master/COPYING.txt). For all the third-party code/libraries included/extended/linked by MSGD, please see [Dependencies.md](https://github.com/chaogao-cam/MSGD/blob/master/Dependencies.md).

### Prerequisites
MSGD has been tested in **OS X El Capitan** and **macOS Sierra**. 

### Datasets and Groundtruth
All datasets and groundtruth files are in the folder *datasets* (g2o format). For WGB2a-1, WGB2a-2, WGB2a-3 and WGB2a-4, the Bat Ultrasonic Location System (http://www.cl.cam.ac.uk/research/dtg/attarchive/bat/) was used to provide high-accuracy groundtruth. For other datasets, the groundtruths were obtained by manual labelling etc., so the accuracy is relatively low.

### Build and Run
```
git clone https://github.com/chaogao-cam/MSGD.git MSGD
cd MSGD
make all
./msgd -in ./datasets/input_g2o_file_name.g2o -out result_folder_path
```
### Run in Docker
```
$ docker run -it --rm icra2017/msgd /bin/bash
root@58de5d3a2e43:/# cd MSGD
root@58de5d3a2e43:/MSGD# mkdir result_folder
root@58de5d3a2e43:/MSGD# ./msgd -in ./datasets/WGB2a-1.g2o -out result_folder/

MSGD Copyright (C) 2015-2017 Chao Gao, University of Cambridge.
This program comes with ABSOLUTELY NO WARRANTY;
This is free software, and you are welcome to redistribute it
under certain conditions. See LICENSE.txt.

*******************************************************************
 Input File                                      = ./datasets/WGB2a-1.g2o
 Output Folder                                   = result_folder/
 Iterations                                      = 100
 Show Progress                                   = No
 Enable Edge Randomnization                      = Yes
 Set Constraint Covariances to Idendity Matrix   = No
 Save Result Graph For Every Iteration           = No
*******************************************************************

Load data from file ... 
Done
Number of Poses: 26262
Number of Constraints: 10382
Number of Mini-batches: 29
Saving graph: initial
Done.

Before Optimization:  global error = 2.68694e+06   error/constraint = 258.808
**** Optimization Start ****
**** Optimization Done ****
After Optimization:  global error = 36385.6   error/constraint = 3.50468
Total Time = 1.49264 s.
Saving graph: final
Done.
```
