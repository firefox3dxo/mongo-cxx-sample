
# install
    1. download  https://github.com/mongodb/mongo-c-driver/releases/download/1.23.4/mongo-c-driver-1.23.4.tar.gz
    
    2. tar xzf mongo-c-driver-1.23.4.tar.gz
   
    3. cd mongo-c-driver-1.23.4    
   
    4. cmake -DENABLE_AUTOMATIC_INIT_AND_CLEANUP=OFF -DCMAKE_BUILD_TYPE=Release  "-DCMAKE_INSTALL_PREFIX=C:\mongo-c-driver" "-DCMAKE_PREFIX_PATH=C:\mongo-c-driver"  -B cmake-build
   
    5. cd cmake-build
   
    6. cmake --build . --config RelWithDebInfo --target install


# uninstall
    C:\mongo-c-driver\share\mongo-c-driver\uninstall.bat