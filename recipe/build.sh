mkdir build
pushd build

cmake ${CMAKE_ARGS} $SRC_DIR \
  -GNinja \
  -DWITH_PYTHON=ON \
  -DWITH_PYTHON3=ON \
  -DWITH_LAPACK=ON \
  -DWITH_IPOPT=ON \
  -DWITH_JSON=ON \
  -DWITH_THREAD=ON \
  -DWITH_OSQP=ON \
  -DWITH_BUILD_OSQP=OFF \
  -DWITH_QPOASES=ON \
  -DWITH_PROXQP=OFF \
  -DWITH_BUILD_PROXQP=OFF \
  -DWITH_TINYXML=ON \
  -DWITH_BUILD_TINYXML=OFF \
  -DSWIG_IMPORT=ON \
  -DWITH_KNITRO=ON \
  -DWITH_MOCKUP_KNITRO=ON \
  -DWITH_CPLEX=ON \
  -DWITH_MOCKUP_CPLEX=ON \
  -DWITH_GUROBI=ON \
  -DWITH_MOCKUP_GUROBI=ON \
  -DWITH_HSL=ON \
  -DWITH_MOCKUP_HSL=ON \
  -DWITH_WORHP=ON \
  -DWITH_MOCKUP_WORHP=ON \
  -DPYTHON_PREFIX=${SP_DIR} \
  -DCASADI_PYTHON_PIP_METADATA_INSTALL=ON \
  -DCASADI_PYTHON_PIP_METADATA_INSTALLER:STRING="conda" \
  
ninja install
