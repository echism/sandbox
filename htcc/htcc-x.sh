#!/bin/bash

# Setup Blender from OASIS
source /cvmfs/oasis.opensciencegrid.org/osg/modules/lmod/5.6.2/init/bash
module load blender

# Run the job!
blender -b htcc.blend -o htcc_ -F JPEG -x 1 -f 1 -a -noaudio
