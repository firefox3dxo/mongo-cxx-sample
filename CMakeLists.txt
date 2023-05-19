cmake_minimum_required(VERSION 3.20.0)
# if(MSVC)
    # set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /MTd")
# endif()
set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDLL")
add_compile_options("/MD")

project(mongo-sample VERSION 0.1.0 )



include_directories("C:/mongo-c-driver/include")
include_directories("C:/mongo-cxx-driver/include/bsoncxx/v_noabi")
include_directories("C:/mongo-cxx-driver/include/mongocxx/v_noabi")
include_directories("d:/dev/mogodb/cpp/3rd/boost-1.82.0")
include_directories("C:/googletest-distribution/include")

link_directories("C:/mongo-cxx-driver/lib")
link_directories("C:/mongo-c-driver/lib")
link_directories("C:/googletest-distribution/lib")

# # 查找MongoDB C++ Driver库
# # find_package(bson-1.0 REQUIRED)
# # find_package(mongoc-1.0 REQUIRED )
# find_package(bsoncxx REQUIRED)
# message("bsoncxx_FOUND: ${bsoncxx_FOUND} INCLUDE DIR : ${bsoncxx_INCLUDE_DIRS} ${LIBBSONCXX_STATIC_INCLUDE_DIRS}")
# find_package(mongocxx REQUIRED)
# message("mongocxx_FOUND:" ${bsoncxx_FOUND} )






# include_directories(${LIBBSONCXX_INCLUDE_DIRS})
# message(status ${LIBBSONCXX_INCLUDE_DIRS})
# include_directories(${LIBMONGOCXX_INCLUDE_DIRS})

# AUX_SOURCE_DIRECTORY(test/ TEST)

# add_executable(test_c test/test_c_connection.cpp)
# target_link_libraries(test_c 
#     # bson-static-1.0.lib
#     # mongoc-static-1.0.lib
#     # bsoncxx-static.lib
#     # mongocxx-static.lib
#     bson-1.0.lib
#     mongoc-1.0.lib
#     bsoncxx.lib
#     mongocxx.lib    
# )

add_executable(test_cxx test/test_cxx_connection.cpp)
target_link_libraries(test_cxx 

    bson-1.0.lib
    mongoc-1.0.lib
    bsoncxx.lib
    mongocxx.lib    


)


# # 设置MT/MTd
# set_property(TARGET ${PROJECT_NAME}  PROPERTY
#   MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")

# set(CPACK_PROJECT_NAME ${PROJECT_NAME})
# set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
# include(CPack)
