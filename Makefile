# Copyright (c) 2017-2021, NVIDIA CORPORATION.  All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LIB_NAME := nvidia-container-runtime
LIB_VERSION := 3.7.0
LIB_TAG ?= rc.1

# Define the nvidia-container-toolkit version on which the nvidia-docker2
# package depends. It is recommended that the TOOLKIT_TAG and the LIB_TAG match.
TOOLKIT_VERSION ?= # Set by CI
TOOLKIT_TAG ?= # Set by CI

ifeq ($(strip $(TOOLKIT_VERSION)),)
$(error TOOLKIT_VERSION must be specified)
endif

ifneq ($(TOOLKIT_TAG),$(LIB_TAG))
$(warning TOOLKIT_TAG=$(TOOLKIT_TAG) and LIB_TAG=$(LIB_TAG) do not match)
endif

# By default run all native docker-based targets
docker-native:
include $(CURDIR)/docker/docker.mk
