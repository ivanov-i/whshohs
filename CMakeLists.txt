set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

cmake_minimum_required(VERSION 3.16) 

project(Webhooks VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(Webhooks main.cpp)

configure_file(WebhooksConfig.h.in WebhooksConfig.h)

target_include_directories(
	Webhooks PUBLIC "${PROJECT_BINARY_DIR}"
	)
