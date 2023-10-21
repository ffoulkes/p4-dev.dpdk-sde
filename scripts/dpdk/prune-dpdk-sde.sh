# Copyright 2023 Intel Corporation
# SPDX-License-Identifier: Apache 2.0
#
# Removes stuff from the DPDK SDE that we don't need in order to
# build against the SDE.
#
# The SDE_INSTALL environment variable specifies the SDE install prefix
# (the base directory into which the SDE is installed).
#

# Abort on error.
set -e

# Error check.
if [ -z "${SDE_INSTALL}" ]; then
    echo "SDE_INSTALL not defined!"
    exit 1
fi

SDE_BIN_DIR=${SDE_INSTALL}/bin
SDE_INCLUDE_DIR=${SDE_INSTALL}/include
SDE_LIB_DIR=${SDE_INSTALL}/lib
SDE_SHARE_DIR=${SDE_INSTALL}/share

# Remove unwanted files.
rm -f ${SDE_BIN_DIR}/dpdk-test*
rm -fr ${SDE_INCLUDE_DIR}/gmock
rm -fr ${SDE_INCLUDE_DIR}/gtest
rm -fr ${SDE_INCLUDE_DIR}/python3.10
rm -fr ${SDE_LIB_DIR}/cmake
rm -fr ${SDE_LIB_DIR}/python3.10
rm -fr ${SDE_SHARE_DIR}/dpdk/examples
rm -fr ${SDE_SHARE_DIR}/man

