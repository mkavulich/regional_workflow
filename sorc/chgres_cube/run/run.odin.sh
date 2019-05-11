#!/bin/sh

#SBATCH -p workq
#SBATCH -J chgres_cube
#SBATCH -N 2 -n 48
#SBATCH -t 00:30:00
#SBATCH -o /oldscratch/larissa.reames/chgres_cube/chgres_cube.log.o
#SBATCH -e /oldscratch/larissa.reames/chgres_cube/chgres_cube.log.o
#####SBATCH --mem 24000
set -x

export NODES=2
#export OMP_STACKSIZE=1024m
ulimit -s unlimited
ulimit -a

WORK_DIR=/oldscratch/larissa.reames/chgres_cube/20180501_gfs
rm -fr $WORK_DIR
mkdir -p $WORK_DIR
cd $WORK_DIR

#cp /gpfs/hps3/emc/global/noscrub/George.Gayno/fv3gfs.git/fv3gfs/chgres_cube/run/config.C384.cray.nml ./fort.41
#cp /gpfs/hps3/emc/global/noscrub/George.Gayno/fv3gfs.git/fv3gfs/chgres_cube/run/config.C768.nest.cray.nml ./fort.41
ln -fs /home/larissa.reames/fv3-new.write/chgres_cube/chgres_cube/run/config.C768.nest.atm.odin.nml ./fort.41
#cp /gpfs/hps3/emc/global/noscrub/George.Gayno/fv3gfs.git/fv3gfs/chgres_cube/run/config.C48.cray.nml ./fort.41

EXEC_DIR=/home/larissa.reames/fv3-new.write/chgres_cube/chgres_cube/exec

srun -n 48 $EXEC_DIR/global_chgres.exe

exit