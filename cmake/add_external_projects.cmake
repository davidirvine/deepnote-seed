include(ExternalProject)

find_program(MAKE_CMD NAMES gmake nmake make)

ExternalProject_add(libDaisy 
    GIT_REPOSITORY "https://github.com/electro-smith/libDaisy.git"
    GIT_TAG "origin/master"
    GIT_SHALLOW TRUE
    GIT_PROGRESS TRUE
    GIT_REMOTE_UPDATE_STRATEGY CHECKOUT
    GIT_SUBMODULES_RECURSE TRUE

    SOURCE_DIR ${LIBDAISY_DIR}

    CONFIGURE_COMMAND ""
    BUILD_COMMAND cd ${LIBDAISY_DIR} && ${MAKE_CMD}
    INSTALL_COMMAND ""
    TEST_COMMAND ""
)

ExternalProject_add(DaisySP 
    GIT_REPOSITORY "https://github.com/electro-smith/DaisySP.git"
    GIT_TAG "origin/master"
    GIT_SHALLOW TRUE
    GIT_PROGRESS TRUE
    GIT_REMOTE_UPDATE_STRATEGY CHECKOUT
    GIT_SUBMODULES_RECURSE TRUE
    
    SOURCE_DIR ${DAISYSP_DIR}

    CONFIGURE_COMMAND ""
    BUILD_COMMAND cd ${DAISYSP_DIR} && ${MAKE_CMD}
    INSTALL_COMMAND ""
    TEST_COMMAND ""
)

externalProject_add(Deepnote 
    GIT_REPOSITORY "https://github.com/davidirvine/deepnote.git"
    GIT_TAG "origin/develop"
    GIT_SHALLOW TRUE
    GIT_PROGRESS TRUE
    GIT_REMOTE_UPDATE_STRATEGY CHECKOUT
    GIT_SUBMODULES_RECURSE FALSE
    
    SOURCE_DIR ${DEEPNOTE_DIR}

    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND ""
    TEST_COMMAND ""
)
