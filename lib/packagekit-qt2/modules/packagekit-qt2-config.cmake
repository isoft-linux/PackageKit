# - Config information for PackageKit-Qt2
# This file defines:
#
#  PACKAGEKIT_QT2_INCLUDE_DIR - the PackageKitQt2 include directory
#  PACKAGEKIT_QT2_LIBRARIES - Link these to use PackageKitQt2

SET(prefix "/home/hughsie/.root")
SET(exec_prefix "${prefix}")
SET(PACKAGEKIT_QT2_LIBRARIES "${exec_prefix}/lib/libpackagekit-qt2.so" CACHE FILEPATH "Libraries for PackageKit-Qt2")
SET(PACKAGEKIT_QT2_INCLUDE_DIR "${prefix}/include/PackageKit/packagekit-qt2" CACHE PATH "Include path for PackageKit-Qt2")
SET(PACKAGEKIT_QT2_FOUND "TRUE")
