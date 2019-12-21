#
# Copyright (2017) Baidu Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# Build for device status
#
include $(CLEAR_VAR)

MODULE_PATH := $(BASE_DIR)/modules/device_status

LOCAL_MODULE := device_status

LOCAL_STATIC_LIBRARIES := framework coap platform

LOCAL_SRC_FILES := $(wildcard $(MODULE_PATH)/*.c)

LOCAL_INCLUDES += $(MODULE_PATH) \
                  $(BASE_DIR)/modules/connagent \
                  $(BASE_DIR)/external/baidu_json \

include $(BUILD_STATIC_LIB)