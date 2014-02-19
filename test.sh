# Test the run.sh script

# Activate debugging from here
set -x

# Default PIP command
export WERCKER_PIP_INSTALL_PIP_COMMAND="pip"

# Test unverified settings example from README
export WERCKER_PIP_INSTALL_ALLOW_UNVERIFIED="PIL py_w3c"

# Don't use a requirements file for testing
export WERCKER_PIP_INSTALL_REQUIREMENTS_FILE=""

# Specify a nice and an ugly package
export WERCKER_PIP_INSTALL_PACKAGES_LIST="mock py_w3c"

# Run the script with several options
export WERCKER_PIP_INSTALL_CLEANUP_WHEEL_CACHE="false"
export WERCKER_PIP_INSTALL_AUTO_RUN_WHEEL="true"
source run.sh

export WERCKER_PIP_INSTALL_CLEANUP_WHEEL_CACHE="true"
export WERCKER_PIP_INSTALL_AUTO_RUN_WHEEL="true"
source run.sh

export WERCKER_PIP_INSTALL_CLEANUP_WHEEL_CACHE="true"
export WERCKER_PIP_INSTALL_AUTO_RUN_WHEEL="false"
source run.sh

export WERCKER_PIP_INSTALL_CLEANUP_WHEEL_CACHE="false"
export WERCKER_PIP_INSTALL_AUTO_RUN_WHEEL="false"
source run.sh

# Disable debugging
set +x
