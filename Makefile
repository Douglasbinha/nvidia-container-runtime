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
LIB_VERSION := 3.5.1
LIB_TAG ?= rc.1

# Note: This should be the previous full release of nvidia-container-toolkit to ensure
# that release candidate (e.g. rc.1) work as expected.
TOOLKIT_VERSION := 1.5.1

# By default run all native docker-based targets
docker-native:
include $(CURDIR)/docker/docker.mk
