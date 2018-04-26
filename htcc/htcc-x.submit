Universe = vanilla

Output = htcc$(Process).stdout
Error = htcc$(Process).stderr
Log = htcc$(Process).log

+ProjectName = "HTCC"

arguments = $(Process)
Executable = htcc-x.sh

should_transfer_files = YES
when_to_transfer_output = ON_EXIT
transfer_input_files = htcc$(Process).blend 

Requirements = (OpSysMajorVer =?= 6) && (HAS_CVMFS_oasis_opensciencegrid_org =?= TRUE)

Queue 9
