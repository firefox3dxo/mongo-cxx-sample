
# preinstall
    1. download boost
    2. bootstrap.bat
    3. ./b2
# install
    1. download  https://github.com/mongodb/mongo-c-driver/releases/download/1.23.4/mongo-c-driver-1.23.4.tar.gz        
    2. 修改 CMakeLists.txt # add_subdirectory(examples EXCLUDE_FROM_ALL)  add_subdirectory(examples )
    3. cmake -DENABLE_AUTOMATIC_INIT_AND_CLEANUP=OFF -DCMAKE_BUILD_TYPE=Release  "-DCMAKE_INSTALL_PREFIX=C:\mongo-cxx-driver" "-DCMAKE_PREFIX_PATH=C:\mongo-c-driver" -DBOOST_ROOT=D:\dev\mogodb\cpp\3rd\boost-1.82.0 -DBUILD_SHARED_AND_STATIC_LIBS=ON -DENABLE_TESTS=OFF  -B cmake-build   
    4. cd cmake-build   
    5. cmake --build . --config RelWithDebInfo --target install


# uninstall
    C:\mongo-c-driver\share\mongo-c-driver\uninstall.bat