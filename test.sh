# Test the run.sh script

# Default PIP command
export WERCKER_PIP_INSTALL_PIP_COMMAND="pip"

# Test unverified settings example from README
export WERCKER_PIP_INSTALL_ALLOW_UNVERIFIED="PIL py_w3c"

# Don't use a requirements file for testing
export WERCKER_PIP_INSTALL_REQUIREMENTS_FILE=""

# Specify a nice and an ugly package
export WERCKER_PIP_INSTALL_PACKAGES_LIST="mock PIL"

# Run the script with several options
env WERCKER_PIP_INSTALL_CLEANUP_WHEEL_CACHE="false" \
    WERCKER_PIP_INSTALL_AUTO_RUN_WHEEL="true" \
    source "$WERCKER_STEP_ROOT/run.sh"

env WERCKER_PIP_INSTALL_CLEANUP_WHEEL_CACHE="true" \
    WERCKER_PIP_INSTALL_AUTO_RUN_WHEEL="true" \
    source "$WERCKER_STEP_ROOT/run.sh"

env WERCKER_PIP_INSTALL_CLEANUP_WHEEL_CACHE="true" \
    WERCKER_PIP_INSTALL_AUTO_RUN_WHEEL="false" \
    source "$WERCKER_STEP_ROOT/run.sh"

env WERCKER_PIP_INSTALL_CLEANUP_WHEEL_CACHE="false" \
    WERCKER_PIP_INSTALL_AUTO_RUN_WHEEL="false" \
    source "$WERCKER_STEP_ROOT/run.sh"
