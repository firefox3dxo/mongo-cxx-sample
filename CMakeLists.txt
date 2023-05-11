cmake_minimum_required(VERSION 3.20.0)
if (POLICY CMP0091)
  cmake_policy(SET CMP0091 NEW)
endif (POLICY CMP0091)
project(mongo-sample VERSION 0.1.0 )



# set(CMAKE_BUILD_TYPE Release)






# find_package(GTest REQUIRED "C:/Program Files (x86)/googletest-distribution/")

link_directories(3rd/mongo-c-driver-1.23.3/lib)
link_directories("C:/Program Files (x86)/googletest-distribution/lib/")


include_directories(3rd/mongo-c-driver-1.23.3/include)
include_directories("C:/Program Files (x86)/googletest-distribution/include/")


AUX_SOURCE_DIRECTORY(test/ TEST)

add_executable(${PROJECT_NAME} ${TEST})
target_link_libraries(${PROJECT_NAME} 
    bson-1.0 
    mongoc-1.0
    gtest 
    gtest_main
)

# 设置MT/MTd
set_property(TARGET ${PROJECT_NAME}  PROPERTY
  MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")

# set(CPACK_PROJECT_NAME ${PROJECT_NAME})
# set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
# include(CPack)
