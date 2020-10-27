set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

cmake_minimum_required(VERSION 3.16) 

project(Webhooks VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(TEST_SOURCES main.cpp boost/ut.hpp)
set(TESTS webhooks_test.cpp)
set(SOURCES ContextVariables.h)

add_executable(Webhooks ${SOURCES} ${TESTS} ${TEST_SOURCES})

configure_file(WebhooksConfig.h.in WebhooksConfig.h)

target_include_directories(
	Webhooks PUBLIC "${PROJECT_BINARY_DIR}"
	Webhooks PUBLIC "${PROJECT_SOURCE_DIR}"
	)
