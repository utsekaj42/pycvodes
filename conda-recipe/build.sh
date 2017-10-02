#!/bin/bash
sed -i -E -e 's/lapack/openblas/' pycvodes/_config.py
PYCVODES_LAPACK=openblas CPLUS_INCLUDE_PATH=${PREFIX}/include ${PYTHON} setup.py build
${PYTHON} setup.py install --single-version-externally-managed --record record.txt