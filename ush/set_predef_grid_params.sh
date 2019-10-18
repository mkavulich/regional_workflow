#
#-----------------------------------------------------------------------
#
# Set grid and other parameters according to the value of the predefined
# domain (PREDEF_GRID_NAME).  Note that the code will enter this script on-
# ly if PREDEF_GRID_NAME has a valid (and non-empty) value.
#
# The following needs to be updated:
#
# 1) Reset the experiment title (expt_title).
# 2) Reset the grid parameters.
# 3) If the write component is to be used (i.e. QUILTING is set to
#    "TRUE") and the variable WRTCMP_PARAMS_TEMPLATE_FN containing the
#    name of the write-component template file is unset or empty, set
#    that filename variable to the appropriate preexisting template
#    file.
#
# For the predefined domains, we determine the starting and ending indi-
# ces of the regional grid within tile 6 by specifying margins (in units
# of number of cells on tile 6) between the boundary of tile 6 and that
# of the regional grid (tile 7) along the left, right, bottom, and top
# portions of these boundaries.  Note that we do not use "west", "east",
# "south", and "north" here because the tiles aren't necessarily orient-
# ed such that the left boundary segment corresponds to the west edge,
# etc.  The widths of these margins (in units of number of cells on tile
# 6) are specified via the parameters
#
#   num_margin_cells_T6_left
#   num_margin_cells_T6_right
#   num_margin_cells_T6_bottom
#   num_margin_cells_T6_top
#
# where the "_T6" in these names is used to indicate that the cell count
# is on tile 6, not tile 7.
#
# Note that we must make the margins wide enough (by making the above
# four parameters large enough) such that a region of halo cells around
# the boundary of the regional grid fits into the margins, i.e. such
# that the halo does not overrun the boundary of tile 6.  (The halo is
# added later in another script; its function is to feed in boundary
# conditions to the regional grid.)  Currently, a halo of 5 regional
# grid cells is used around the regional grid.  Setting num_margin_-
# cells_T6_... to at least 10 leaves enough room for this halo.
#
#-----------------------------------------------------------------------
#
case ${PREDEF_GRID_NAME} in
#
#-----------------------------------------------------------------------
#
# Emulation of the HAFS v0.A grid at 3 km.
#
#-----------------------------------------------------------------------
#
"GSD_HAFSV0.A3km")

  if [ "${GRID_GEN_METHOD}" = "GFDLgrid" ]; then

    print_err_msg_exit "\
The parameters for a \"${GRID_GEN_METHOD}\" type grid have not yet been specified for this
predefined domain:
  PREDEF_GRID_NAME = \"${PREDEF_GRID_NAME}\"
  GRID_GEN_METHOD = \"${GRID_GEN_METHOD}\"
"

  elif [ "${GRID_GEN_METHOD}" = "JPgrid" ]; then

    lon_rgnl_ctr=-62.0
    lat_rgnl_ctr=22.0

    delx="3000.0"
    dely="3000.0"

    nx_T7=2880
    ny_T7=1920

    nhw_T7=6

    dt_atmos="100"

    layout_x="32"
    layout_y="24"
    blocksize="32"

    if [ "$QUILTING" = "TRUE" ]; then
      WRTCMP_write_groups="1"
      WRTCMP_write_tasks_per_group="32"
      WRTCMP_output_grid="lambert_conformal"
      WRTCMP_cen_lon="${lon_rgnl_ctr}"
      WRTCMP_cen_lat="${lat_rgnl_ctr}"
      WRTCMP_stdlat1="${lat_rgnl_ctr}"
      WRTCMP_stdlat2="${lat_rgnl_ctr}"
      WRTCMP_nx="2937"
      WRTCMP_ny="1788"
      WRTCMP_lon_lwr_left="-97.83959"
      WRTCMP_lat_lwr_left="-5.67929305"
      WRTCMP_dx="$delx"
      WRTCMP_dy="$dely"
    fi

  fi
  ;;
#
#-----------------------------------------------------------------------
#
# Emulation of the HAFS v0.A grid at 13 km.
#
#-----------------------------------------------------------------------
#
"GSD_HAFSV0.A13km")

  if [ "${GRID_GEN_METHOD}" = "GFDLgrid" ]; then

    print_err_msg_exit "\
The parameters for a \"${GRID_GEN_METHOD}\" type grid have not yet been specified for this
predefined domain:
  PREDEF_GRID_NAME = \"${PREDEF_GRID_NAME}\"
  GRID_GEN_METHOD = \"${GRID_GEN_METHOD}\"
"

  elif [ "${GRID_GEN_METHOD}" = "JPgrid" ]; then

    lon_rgnl_ctr=-62.0
    lat_rgnl_ctr=22.0

    delx="13000.0"
    dely="13000.0"

    nx_T7=665
    ny_T7=444

    nhw_T7=6

    dt_atmos="180"

    layout_x="19"
    layout_y="12"
    blocksize="35"

    if [ "$QUILTING" = "TRUE" ]; then
      WRTCMP_write_groups="1"
      WRTCMP_write_tasks_per_group="12"
      WRTCMP_output_grid="lambert_conformal"
      WRTCMP_cen_lon="${lon_rgnl_ctr}"
      WRTCMP_cen_lat="${lat_rgnl_ctr}"
      WRTCMP_stdlat1="${lat_rgnl_ctr}"
      WRTCMP_stdlat2="${lat_rgnl_ctr}"
      WRTCMP_nx="658"
      WRTCMP_ny="412"
      WRTCMP_lon_lwr_left="-98.0"
      WRTCMP_lat_lwr_left="-5.33"
      WRTCMP_dx="$delx"
      WRTCMP_dy="$dely"
    fi

  fi
  ;;
#
#-----------------------------------------------------------------------
#
# Emulation of the HAFS v0.A grid at 25 km.
#
#-----------------------------------------------------------------------
#
"GSD_HAFSV0.A25km")

  if [ "${GRID_GEN_METHOD}" = "GFDLgrid" ]; then

    print_err_msg_exit "\
The parameters for a \"${GRID_GEN_METHOD}\" type grid have not yet been specified for this
predefined domain:
  PREDEF_GRID_NAME = \"${PREDEF_GRID_NAME}\"
  GRID_GEN_METHOD = \"${GRID_GEN_METHOD}\"
"

  elif [ "${GRID_GEN_METHOD}" = "JPgrid" ]; then

    lon_rgnl_ctr=-62.0
    lat_rgnl_ctr=22.0

    delx="25000.0"
    dely="25000.0"

    nx_T7=345
    ny_T7=230

    nhw_T7=6

    dt_atmos="300"

    layout_x="5"
    layout_y="5"
    blocksize="6"

    if [ "$QUILTING" = "TRUE" ]; then
      WRTCMP_write_groups="1"
      WRTCMP_write_tasks_per_group="10"
      WRTCMP_output_grid="lambert_conformal"
      WRTCMP_cen_lon="${lon_rgnl_ctr}"
      WRTCMP_cen_lat="${lat_rgnl_ctr}"
      WRTCMP_stdlat1="${lat_rgnl_ctr}"
      WRTCMP_stdlat2="${lat_rgnl_ctr}"
      WRTCMP_nx="337"
      WRTCMP_ny="210"
      WRTCMP_lon_lwr_left="-98.0"
      WRTCMP_lat_lwr_left="-4.5"
      WRTCMP_dx="$delx"
      WRTCMP_dy="$dely"
    fi

  fi
  ;;
#
#-----------------------------------------------------------------------
#
# Emulation of GSD's RAP grid.
#
#-----------------------------------------------------------------------
#
"GSD_RAP13km")

  if [ "${GRID_GEN_METHOD}" = "GFDLgrid" ]; then

    lon_ctr_T6=-106.0
    lat_ctr_T6=54.0
    stretch_fac=0.63
    RES="384"
    refine_ratio=3
  
    num_margin_cells_T6_left=10
    istart_rgnl_T6=$(( $num_margin_cells_T6_left + 1 ))
  
    num_margin_cells_T6_right=10
    iend_rgnl_T6=$(( $RES - $num_margin_cells_T6_right ))
  
    num_margin_cells_T6_bottom=10
    jstart_rgnl_T6=$(( $num_margin_cells_T6_bottom + 1 ))
  
    num_margin_cells_T6_top=10
    jend_rgnl_T6=$(( $RES - $num_margin_cells_T6_top ))

    dt_atmos="90"

    layout_x="14"
    layout_y="14"
    blocksize="26"

    if [ "$QUILTING" = "TRUE" ]; then
      WRTCMP_write_groups="1"
      WRTCMP_write_tasks_per_group="14"
      WRTCMP_output_grid="rotated_latlon"
      WRTCMP_cen_lon="${lon_rgnl_ctr}"
      WRTCMP_cen_lat="${lat_rgnl_ctr}"
      WRTCMP_lon_lwr_left="-57.9926"
      WRTCMP_lat_lwr_left="-50.74344"
      WRTCMP_lon_upr_rght="57.99249"
      WRTCMP_lat_upr_rght="50.74344"
      WRTCMP_dlon="0.1218331"
      WRTCMP_dlat="0.121833"
    fi

  elif [ "${GRID_GEN_METHOD}" = "JPgrid" ]; then

    lon_rgnl_ctr=-106.0
    lat_rgnl_ctr=54.0

    delx="13000.0"
    dely="13000.0"

    nx_T7=960
    ny_T7=960

    nhw_T7=6

    dt_atmos="90"

    layout_x="16"
    layout_y="16"
    blocksize="30"

    if [ "$QUILTING" = "TRUE" ]; then
      WRTCMP_write_groups="1"
      WRTCMP_write_tasks_per_group="16"
      WRTCMP_output_grid="rotated_latlon"
      WRTCMP_cen_lon="${lon_rgnl_ctr}"
      WRTCMP_cen_lat="${lat_rgnl_ctr}"
      WRTCMP_lon_lwr_left="-57.9926"
      WRTCMP_lat_lwr_left="-50.74344"
      WRTCMP_lon_upr_rght="57.99249"
      WRTCMP_lat_upr_rght="50.74344"
      WRTCMP_dlon="0.1218331"
      WRTCMP_dlat="0.121833"
    fi

  fi
  ;;
#
#-----------------------------------------------------------------------
#
# GSD's CONUS domain with ~150km cells.
#
#-----------------------------------------------------------------------
#
"GSD_HRRR25km")

  if [ "${GRID_GEN_METHOD}" = "GFDLgrid" ]; then

    print_err_msg_exit "\
The parameters for a \"${GRID_GEN_METHOD}\" type grid have not yet been specified for this
predefined domain:
  PREDEF_GRID_NAME = \"${PREDEF_GRID_NAME}\"
  GRID_GEN_METHOD = \"${GRID_GEN_METHOD}\"
"

  elif [ "${GRID_GEN_METHOD}" = "JPgrid" ]; then

    lon_rgnl_ctr=-97.5
    lat_rgnl_ctr=38.5

    delx="25000.0"
    dely="25000.0"

    nx_T7=200
    ny_T7=110

    nhw_T7=6

    dt_atmos="300"

    layout_x="2"
    layout_y="2"
    blocksize="2"

    if [ "$QUILTING" = "TRUE" ]; then
      WRTCMP_write_groups="1"
      WRTCMP_write_tasks_per_group="2"
      WRTCMP_output_grid="lambert_conformal"
      WRTCMP_cen_lon="${lon_rgnl_ctr}"
      WRTCMP_cen_lat="${lat_rgnl_ctr}"
      WRTCMP_stdlat1="${lat_rgnl_ctr}"
      WRTCMP_stdlat2="${lat_rgnl_ctr}"
      WRTCMP_nx="191"
      WRTCMP_ny="97"
      WRTCMP_lon_lwr_left="-120.72962370"
      WRTCMP_lat_lwr_left="25.11648583"
      WRTCMP_dx="$delx"
      WRTCMP_dy="$dely"
    fi

  fi
  ;;
#
#-----------------------------------------------------------------------
#
# GSD's CONUS domain with ~13km cells.
#
#-----------------------------------------------------------------------
#
"GSD_HRRR13km")

  if [ "${GRID_GEN_METHOD}" = "GFDLgrid" ]; then

    print_err_msg_exit "\
The parameters for a \"${GRID_GEN_METHOD}\" type grid have not yet been specified for this
predefined domain:
  PREDEF_GRID_NAME = \"${PREDEF_GRID_NAME}\"
  GRID_GEN_METHOD = \"${GRID_GEN_METHOD}\"
"

  elif [ "${GRID_GEN_METHOD}" = "JPgrid" ]; then

    lon_rgnl_ctr=-97.5
    lat_rgnl_ctr=38.5

    delx="13000.0"
    dely="13000.0"

    nx_T7=390
    ny_T7=210

    nhw_T7=6

    dt_atmos="180"

    layout_x="10"
    layout_y="10"
    blocksize="39"

    if [ "$QUILTING" = "TRUE" ]; then
      WRTCMP_write_groups="1"
      WRTCMP_write_tasks_per_group="10"
      WRTCMP_output_grid="lambert_conformal"
      WRTCMP_cen_lon="${lon_rgnl_ctr}"
      WRTCMP_cen_lat="${lat_rgnl_ctr}"
      WRTCMP_stdlat1="${lat_rgnl_ctr}"
      WRTCMP_stdlat2="${lat_rgnl_ctr}"
      WRTCMP_nx="383"
      WRTCMP_ny="195"
      WRTCMP_lon_lwr_left="-121.58647982"
      WRTCMP_lat_lwr_left="24.36006861"
      WRTCMP_dx="$delx"
      WRTCMP_dy="$dely"
    fi

  fi
  ;;
#
#-----------------------------------------------------------------------
#
# GSD's CONUS domain with ~3km cells.
#
#-----------------------------------------------------------------------
#
"GSD_HRRR3km")

  if [ "${GRID_GEN_METHOD}" = "GFDLgrid" ]; then

    print_err_msg_exit "\
The parameters for a \"${GRID_GEN_METHOD}\" type grid have not yet been specified for this
predefined domain:
  PREDEF_GRID_NAME = \"${PREDEF_GRID_NAME}\"
  GRID_GEN_METHOD = \"${GRID_GEN_METHOD}\"
"

  elif [ "${GRID_GEN_METHOD}" = "JPgrid" ]; then

    lon_rgnl_ctr=-97.5
    lat_rgnl_ctr=38.5

    delx="3000.0"
    dely="3000.0"

    nx_T7=1734
    ny_T7=1008

    nhw_T7=6

    dt_atmos="100"

    layout_x="34"
    layout_y="24"
    blocksize="34"

    if [ "$QUILTING" = "TRUE" ]; then
      WRTCMP_write_groups="1"
      WRTCMP_write_tasks_per_group="24"
      WRTCMP_output_grid="lambert_conformal"
      WRTCMP_cen_lon="${lon_rgnl_ctr}"
      WRTCMP_cen_lat="${lat_rgnl_ctr}"
      WRTCMP_stdlat1="${lat_rgnl_ctr}"
      WRTCMP_stdlat2="${lat_rgnl_ctr}"
      WRTCMP_nx="1738"
      WRTCMP_ny="974"
      WRTCMP_lon_lwr_left="-122.21414225"
      WRTCMP_lat_lwr_left="22.41403305"
      WRTCMP_dx="$delx"
      WRTCMP_dy="$dely"
    fi

  fi
  ;;
#
#-----------------------------------------------------------------------
#
# EMC's CONUS grid.
#
#-----------------------------------------------------------------------
#
"EMC_CONUS")

  if [ "${GRID_GEN_METHOD}" = "GFDLgrid" ]; then
# Values from an EMC script.

### rocoto items
#
#fcstnodes=76
#bcnodes=11
#postnodes=2
#goespostnodes=15
#goespostthrottle=3
#sh=00
#eh=12
#
### namelist items
#
#task_layout_x=16
#task_layout_y=48
#npx=1921
#npy=1297
#target_lat=38.5
#target_lon=-97.5
#
### model config items
#
##write_groups=3            # Already defined in community workflow.
##write_tasks_per_group=48  # Already defined in community workflow.
#cen_lon=$target_lon
#cen_lat=$target_lat
#lon1=-25.0
#lat1=-15.0
#lon2=25.0
#lat2=15.0
#dlon=0.02
#dlat=0.02


    lon_ctr_T6=-97.5
    lat_ctr_T6=38.5
    stretch_fac=1.5
    RES="768"
    refine_ratio=3
  
    num_margin_cells_T6_left=61
    istart_rgnl_T6=$(( $num_margin_cells_T6_left + 1 ))
  
    num_margin_cells_T6_right=67
    iend_rgnl_T6=$(( $RES - $num_margin_cells_T6_right ))
  
    num_margin_cells_T6_bottom=165
    jstart_rgnl_T6=$(( $num_margin_cells_T6_bottom + 1 ))
  
    num_margin_cells_T6_top=171
    jend_rgnl_T6=$(( $RES - $num_margin_cells_T6_top ))

    dt_atmos="18"

    layout_x="16"
    layout_y="72"
    write_tasks_per_group="72"
    blocksize=32


  elif [ "${GRID_GEN_METHOD}" = "JPgrid" ]; then

    lon_rgnl_ctr=-97.5
    lat_rgnl_ctr=38.5

    delx="3000.0"
    dely="3000.0"

    nx_T7=960
    ny_T7=960

    nhw_T7=6

  fi
  ;;
#
#-----------------------------------------------------------------------
#
# EMC's Alaska grid.
#
#-----------------------------------------------------------------------
#
"EMC_AK")

  if [ "${GRID_GEN_METHOD}" = "GFDLgrid" ]; then

    print_err_msg_exit "\
The parameters for a \"${GRID_GEN_METHOD}\" type grid have not yet been specified for this
predefined domain:
  PREDEF_GRID_NAME = \"${PREDEF_GRID_NAME}\"
  GRID_GEN_METHOD = \"${GRID_GEN_METHOD}\"
"

# Values from an EMC script.

### rocoto items
#
#fcstnodes=68
#bcnodes=11
#postnodes=2
#goespostnodes=5
#goespostthrottle=6
#sh=06
#eh=18
#
### namelist items
#
#task_layout_x=16
#task_layout_y=48
#npx=1345
#npy=1153
#target_lat=61.0
#target_lon=-153.0
#
### model config items
#
#write_groups=2
#write_tasks_per_group=24
#cen_lon=$target_lon
#cen_lat=$target_lat
#lon1=-18.0
#lat1=-14.79
#lon2=18.0
#lat2=14.79
#dlon=0.03
#dlat=0.03

    lon_ctr_T6=-153.0
    lat_ctr_T6=61.0
    stretch_fac=1.0  # ???
    RES="768"
    refine_ratio=3   # ???
  
    num_margin_cells_T6_left=61
    istart_rgnl_T6=$(( $num_margin_cells_T6_left + 1 ))
  
    num_margin_cells_T6_right=67
    iend_rgnl_T6=$(( $RES - $num_margin_cells_T6_right ))
  
    num_margin_cells_T6_bottom=165
    jstart_rgnl_T6=$(( $num_margin_cells_T6_bottom + 1 ))
  
    num_margin_cells_T6_top=171
    jend_rgnl_T6=$(( $RES - $num_margin_cells_T6_top ))

    dt_atmos="18"

    layout_x="16"
    layout_y="48"
    write_groups="2"
    write_tasks_per_group="24"
    blocksize=32

  elif [ "${GRID_GEN_METHOD}" = "JPgrid" ]; then

# Values taken from pre-generated files in /scratch4/NCEPDEV/fv3-cam/save/Benjamin.Blake/regional_workflow/fix/fix_sar
# Longitude and latitude for center of domain
    lon_rgnl_ctr=-97.5
    lat_rgnl_ctr=38.5

# Projected grid spacing in meters...in the static files (e.g. "C768_grid.tile7.nc"), the "dx" is actually the resolution
# of the supergrid, which is HALF of this dx
    delx="3000.0"
    dely="3000.0"

# Number of x and y points for your domain (halo not included)
    nx_T7=1344
    ny_T7=1152

# Number of halo points for a wide grid (before trimming)...this should almost always be 6 for now
# Within the model we actually have a 4-point halo and a 3-point halo
    nhw_T7=6

# Side note: FV3 is lagrangian and vertical coordinates are dynamically remapped during model integration (!!!)
# 'ksplit' is the factor that determines the timestep for this process (divided

# Physics timestep in seconds, actual dynamics timestep can be a subset of this.
# This is the time step for the largest atmosphere model loop.  It corresponds to the frequency with which the 
# top-level routine in the dynamics is called as well as the frequency with which the physics is called.
#
# Preliminary standard values: 18 for 3-km runs, 90 for 13-km runs per config_defaults.sh

    dt_atmos="18"

#Factors for MPI decomposition. nx_T7 must be divisible by layout_x, ny_T7 must be divisible by layout_y
    layout_x="12"
    layout_y="12"


#Take number of points on a tile (nx/lx*ny/ly), must divide by block size to get an integer.
#This integer must be small enough to fit into a processor's cache, so it is machine-dependent magic
# For Theia, must be ~40 or less
# Check setup.sh for more details
    blocksize="32"

#This section is all for the write component, which you need for output during model integration
    if [ "$QUILTING" = "TRUE" ]; then
#Write component reserves MPI tasks for writing output. The number of "groups" is usually 1, but if you have a case where group 1 is not done writing before the next write step, you need group 2, etc.
      WRTCMP_write_groups="1"
#Number of tasks per write group. Ny must be divisible my this number. layout_y is usually a good value
      WRTCMP_write_tasks_per_group="24"
#lambert_conformal or rotated_latlon. lambert_conformal not well tested and probably doesn't work for our purposes
      WRTCMP_output_grid="lambert_conformal"
#These should always be set the same as compute grid
      WRTCMP_cen_lon="${lon_rgnl_ctr}"
      WRTCMP_cen_lat="${lat_rgnl_ctr}"
      WRTCMP_stdlat1="${lat_rgnl_ctr}"
      WRTCMP_stdlat2="${lat_rgnl_ctr}"
#Write component grid must always be <= compute grid (without haloes)
      WRTCMP_nx="191"
      WRTCMP_ny="97"
#Lower left latlon (southwest corner)
      WRTCMP_lon_lwr_left="-121.587"
      WRTCMP_lat_lwr_left="24.360"
      WRTCMP_dx="$delx"
      WRTCMP_dy="$dely"
    fi

  fi
  ;;
#
#
#-----------------------------------------------------------------------
#
# EMC's Hawaii grid.
#
#-----------------------------------------------------------------------
#
"EMC_HI")

  if [ "${GRID_GEN_METHOD}" = "GFDLgrid" ]; then

    print_err_msg_exit "\
The parameters for a \"${GRID_GEN_METHOD}\" type grid have not yet been specified for this
predefined domain:
  PREDEF_GRID_NAME = \"${PREDEF_GRID_NAME}\"
  GRID_GEN_METHOD = \"${GRID_GEN_METHOD}\"
"

  elif [ "${GRID_GEN_METHOD}" = "JPgrid" ]; then

# Values taken from pre-generated files in /scratch4/NCEPDEV/fv3-cam/save/Benjamin.Blake/regional_workflow/fix/fix_sar/hi/C768_grid.tile7.nc
# Longitude and latitude for center of domain
    lon_rgnl_ctr=-157.0
    lat_rgnl_ctr=20.0

# Projected grid spacing in meters...in the static files (e.g. "C768_grid.tile7.nc"), the "dx" is actually the resolution
# of the supergrid, which is HALF of this dx (plus or minus some grid stretch factor)
    delx="3000.0"
    dely="3000.0"

# Number of x and y points for your domain (halo not included)
    nx_T7=880
    ny_T7=736

# Number of halo points for a wide grid (before trimming)...this should almost always be 6 for now
# Within the model we actually have a 4-point halo and a 3-point halo
    nhw_T7=6

# Side note: FV3 is lagrangian and vertical coordinates are dynamically remapped during model integration (!!!)
# 'ksplit' is the factor that determines the timestep for this process (divided

# Physics timestep in seconds, actual dynamics timestep can be a subset of this.
# This is the time step for the largest atmosphere model loop.  It corresponds to the frequency with which the 
# top-level routine in the dynamics is called as well as the frequency with which the physics is called.
#
# Preliminary standard values: 18 for 3-km runs, 90 for 13-km runs per config_defaults.sh

    dt_atmos="18"

#Factors for MPI decomposition. nx_T7 must be divisible by layout_x, ny_T7 must be divisible by layout_y
    layout_x="10"
    layout_y="8"

#Take number of points on a tile (nx/lx*ny/ly), must divide by block size to get an integer.
#This integer must be small enough to fit into a processor's cache, so it is machine-dependent magic
# For Theia, must be ~40 or less
# Check setup.sh for more details
    blocksize="32"

#This section is all for the write component, which you need for output during model integration
    if [ "$QUILTING" = "TRUE" ]; then
#Write component reserves MPI tasks for writing output. The number of "groups" is usually 1, but if you have a case where group 1 is not done writing before the next write step, you need group 2, etc.
      WRTCMP_write_groups="1"
#Number of tasks per write group. Ny must be divisible my this number. layout_y is usually a good value
      WRTCMP_write_tasks_per_group="23"
#lambert_conformal or rotated_latlon. lambert_conformal not well tested and probably doesn't work for our purposes
      WRTCMP_output_grid="lambert_conformal"
#These should always be set the same as compute grid
      WRTCMP_cen_lon="${lon_rgnl_ctr}"
      WRTCMP_cen_lat="${lat_rgnl_ctr}"
      WRTCMP_stdlat1="${lat_rgnl_ctr}"
      WRTCMP_stdlat2="${lat_rgnl_ctr}"
#Write component grid must always be <= compute grid (without haloes)
      WRTCMP_nx="191"
      WRTCMP_ny="97"
#Lower left latlon (southwest corner)
      WRTCMP_lon_lwr_left="-150.587"
      WRTCMP_lat_lwr_left="14.623"
      WRTCMP_dx="$delx"
      WRTCMP_dy="$dely"
    fi

  fi
  ;;

#
#-----------------------------------------------------------------------
#
# EMC's Puerto Rico grid.
#
#-----------------------------------------------------------------------
#
"EMC_PR")

  if [ "${GRID_GEN_METHOD}" = "GFDLgrid" ]; then

    print_err_msg_exit "\
The parameters for a \"${GRID_GEN_METHOD}\" type grid have not yet been specified for this
predefined domain:
  PREDEF_GRID_NAME = \"${PREDEF_GRID_NAME}\"
  GRID_GEN_METHOD = \"${GRID_GEN_METHOD}\"
"

  elif [ "${GRID_GEN_METHOD}" = "JPgrid" ]; then

# Values taken from pre-generated files in /scratch4/NCEPDEV/fv3-cam/save/Benjamin.Blake/regional_workflow/fix/fix_sar/pr/C768_grid.tile7.nc
# Longitude and latitude for center of domain
    lon_rgnl_ctr=-69.0
    lat_rgnl_ctr=18.0

# Projected grid spacing in meters...in the static files (e.g. "C768_grid.tile7.nc"), the "dx" is actually the resolution
# of the supergrid, which is HALF of this dx (plus or minus some grid stretch factor)
    delx="3000.0"
    dely="3000.0"

# Number of x and y points for your domain (halo not included)
    nx_T7=1168
    ny_T7=880

# Number of halo points for a wide grid (before trimming)...this should almost always be 6 for now
# Within the model we actually have a 4-point halo and a 3-point halo
    nhw_T7=6

# Side note: FV3 is lagrangian and vertical coordinates are dynamically remapped during model integration (!!!)
# 'ksplit' is the factor that determines the timestep for this process (divided

# Physics timestep in seconds, actual dynamics timestep can be a subset of this.
# This is the time step for the largest atmosphere model loop.  It corresponds to the frequency with which the 
# top-level routine in the dynamics is called as well as the frequency with which the physics is called.
#
# Preliminary standard values: 18 for 3-km runs, 90 for 13-km runs per config_defaults.sh

    dt_atmos="18"

#Factors for MPI decomposition. nx_T7 must be divisible by layout_x, ny_T7 must be divisible by layout_y
    layout_x="16"
    layout_y="10"

#Take number of points on a tile (nx/lx*ny/ly), must divide by block size to get an integer.
#This integer must be small enough to fit into a processor's cache, so it is machine-dependent magic
# For Theia, must be ~40 or less
# Check setup.sh for more details
    blocksize="32"

#This section is all for the write component, which you need for output during model integration
    if [ "$QUILTING" = "TRUE" ]; then
#Write component reserves MPI tasks for writing output. The number of "groups" is usually 1, but if you have a case where group 1 is not done writing before the next write step, you need group 2, etc.
      WRTCMP_write_groups="1"
#Number of tasks per write group. Ny must be divisible my this number. layout_y is usually a good value
      WRTCMP_write_tasks_per_group="22"
#lambert_conformal or rotated_latlon. lambert_conformal not well tested and probably doesn't work for our purposes
      WRTCMP_output_grid="lambert_conformal"
#These should always be set the same as compute grid
      WRTCMP_cen_lon="${lon_rgnl_ctr}"
      WRTCMP_cen_lat="${lat_rgnl_ctr}"
      WRTCMP_stdlat1="${lat_rgnl_ctr}"
      WRTCMP_stdlat2="${lat_rgnl_ctr}"
#Write component grid must always be <= compute grid (without haloes)
      WRTCMP_nx="191"
      WRTCMP_ny="97"
#Lower left latlon (southwest corner)
      WRTCMP_lon_lwr_left="-77.846"
      WRTCMP_lat_lwr_left="12.341"
      WRTCMP_dx="$delx"
      WRTCMP_dy="$dely"
    fi

  fi
  ;;
#
#-----------------------------------------------------------------------
#
# EMC's Guam grid.
#
#-----------------------------------------------------------------------
#
"EMC_GU")

  if [ "${GRID_GEN_METHOD}" = "GFDLgrid" ]; then

    print_err_msg_exit "\
The parameters for a \"${GRID_GEN_METHOD}\" type grid have not yet been specified for this
predefined domain:
  PREDEF_GRID_NAME = \"${PREDEF_GRID_NAME}\"
  GRID_GEN_METHOD = \"${GRID_GEN_METHOD}\"
"

  elif [ "${GRID_GEN_METHOD}" = "JPgrid" ]; then

# Values taken from pre-generated files in /scratch4/NCEPDEV/fv3-cam/save/Benjamin.Blake/regional_workflow/fix/fix_sar/guam/C768_grid.tile7.nc
# Longitude and latitude for center of domain
    lon_rgnl_ctr=146.0
    lat_rgnl_ctr=15.0

# Projected grid spacing in meters...in the static files (e.g. "C768_grid.tile7.nc"), the "dx" is actually the resolution
# of the supergrid, which is HALF of this dx (plus or minus some grid stretch factor)
    delx="3000.0"
    dely="3000.0"

# Number of x and y points for your domain (halo not included)
    nx_T7=880
    ny_T7=736

# Number of halo points for a wide grid (before trimming)...this should almost always be 6 for now
# Within the model we actually have a 4-point halo and a 3-point halo
    nhw_T7=6

# Side note: FV3 is lagrangian and vertical coordinates are dynamically remapped during model integration (!!!)
# 'ksplit' is the factor that determines the timestep for this process (divided

# Physics timestep in seconds, actual dynamics timestep can be a subset of this.
# This is the time step for the largest atmosphere model loop.  It corresponds to the frequency with which the 
# top-level routine in the dynamics is called as well as the frequency with which the physics is called.
#
# Preliminary standard values: 18 for 3-km runs, 90 for 13-km runs per config_defaults.sh

    dt_atmos="18"

#Factors for MPI decomposition. nx_T7 must be divisible by layout_x, ny_T7 must be divisible by layout_y
    layout_x="16"
    layout_y="10"
#Take number of points on a tile (nx/lx*ny/ly), must divide by block size to get an integer.
#This integer must be small enough to fit into a processor's cache, so it is machine-dependent magic
# For Theia, must be ~40 or less
# Check setup.sh for more details
    blocksize="32"

#This section is all for the write component, which you need for output during model integration
    if [ "$QUILTING" = "TRUE" ]; then
#Write component reserves MPI tasks for writing output. The number of "groups" is usually 1, but if you have a case where group 1 is not done writing before the next write step, you need group 2, etc.
      WRTCMP_write_groups="1"
#Number of tasks per write group. Ny must be divisible my this number. layout_y is usually a good value
      WRTCMP_write_tasks_per_group="23"
#lambert_conformal or rotated_latlon. lambert_conformal not well tested and probably doesn't work for our purposes
      WRTCMP_output_grid="lambert_conformal"
#These should always be set the same as compute grid
      WRTCMP_cen_lon="${lon_rgnl_ctr}"
      WRTCMP_cen_lat="${lat_rgnl_ctr}"
      WRTCMP_stdlat1="${lat_rgnl_ctr}"
      WRTCMP_stdlat2="${lat_rgnl_ctr}"
#Write component grid must always be <= compute grid (without haloes)
      WRTCMP_nx="191"
      WRTCMP_ny="97"
#Lower left latlon (southwest corner)
      WRTCMP_lon_lwr_left="138.941"
      WRTCMP_lat_lwr_left="9.658"
      WRTCMP_dx="$delx"
      WRTCMP_dy="$dely"
    fi

  fi
  ;;

esac
#
#-----------------------------------------------------------------------
#
# Set the name of the template file containing placeholder values for
# write-component parameters (if this file name is not already set).  
# This file will be appended to the model_configure file, and place-
# holder values will be replaced with actual ones.
#
#-----------------------------------------------------------------------
#
if [ "$QUILTING" = "TRUE" ]; then
#
# First, make sure that WRTCMP_output_grid is set to a valid value.
#
  iselementof "$WRTCMP_output_grid" valid_vals_WRTCMP_output_grid || { \
  valid_vals_WRTCMP_output_grid_str=$(printf "\"%s\" " "${valid_vals_WRTCMP_output_grid[@]}");
  print_err_msg_exit "\
The write-component coordinate system specified in WRTCMP_output_grid is 
not supported:
  WRTCMP_output_grid = \"$WRTCMP_output_grid\"
WRTCMP_output_grid must be set to one of the following:
  $valid_vals_WRTCMP_output_grid_str
"; }
#
# Now set the name of the write-component template file.
#
  WRTCMP_PARAMS_TEMPLATE_FN=${WRTCMP_PARAMS_TEMPLATE_FN:-"wrtcmp_${WRTCMP_output_grid}"}

fi

