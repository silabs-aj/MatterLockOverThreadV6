/*
 *
 *    Copyright (c) 2020 Project CHIP Authors
 *    Copyright (c) 2019 Google LLC.
 *    All rights reserved.
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */

#include "sl_component_catalog.h"
#include "sl_power_manager.h"
#include "sl_power_manager_debug.h"
// Use sl_system for projects upgraded to 2025.6, identified by the presence of SL_CATALOG_CUSTOM_MAIN_PRESENT
#if defined(SL_CATALOG_CUSTOM_MAIN_PRESENT)
#include "sl_system_init.h"
#else
#include "sl_main_init.h"
#endif
#include <MatterConfig.h>
#include <lib/support/logging/CHIPLogging.h>
#include <platform/silabs/tracing/SilabsTracingMacros.h>

using TimeTraceOperation = chip::Tracing::Silabs::TimeTraceOperation;

namespace {

const char * EnergyModeToString(sl_power_manager_em_t em)
{
    switch (em)
    {
    case SL_POWER_MANAGER_EM0:
        return "EM0";
    case SL_POWER_MANAGER_EM1:
        return "EM1";
    case SL_POWER_MANAGER_EM2:
        return "EM2";
    case SL_POWER_MANAGER_EM3:
        return "EM3";
    case SL_POWER_MANAGER_EM4:
        return "EM4";
    default:
        return "UNKNOWN";
    }
}

void OnEnergyModeTransition(sl_power_manager_em_t from, sl_power_manager_em_t to)
{
    ChipLogProgress(DeviceLayer, "Power transition: %s -> %s", EnergyModeToString(from), EnergyModeToString(to));
//    SILABS_LOG("Power transition: %s -> %s", EnergyModeToString(from), EnergyModeToString(to));
    sl_power_manager_debug_print_em_requirements();
}

sl_power_manager_em_transition_event_handle_t sEnergyModeEventHandle;
const sl_power_manager_em_transition_event_info_t sEnergyModeEventInfo = {
    .event_mask = SL_POWER_MANAGER_EVENT_TRANSITION_ENTERING_EM2 | SL_POWER_MANAGER_EVENT_TRANSITION_LEAVING_EM2,
    .on_event   = OnEnergyModeTransition,
};

} // namespace


// This is a User definable function in sl_main context, called by sl_main_init before the kernel is started
void app_init_early(void)
{
    SILABS_TRACE_BEGIN(chip::Tracing::Silabs::TimeTraceOperation::kBootup);
    SILABS_TRACE_BEGIN(chip::Tracing::Silabs::TimeTraceOperation::kSilabsInit);
}

// This is a User definable function, in sl_main context, called by start_task_handler once the silabs platform is fully
// initialized.
void app_init(void)
{
    sl_power_manager_subscribe_em_transition_event(&sEnergyModeEventHandle, &sEnergyModeEventInfo);
    SILABS_TRACE_END(chip::Tracing::Silabs::TimeTraceOperation::kSilabsInit);
    SILABS_TRACE_BEGIN(chip::Tracing::Silabs::TimeTraceOperation::kMatterInit);
    // Initialize the matter application. For example, create periodic timer(s) or
    // task(s).
    SilabsMatterConfig::AppInit();
}

#if defined(SL_CATALOG_CUSTOM_MAIN_PRESENT)
int main(void)
{
    app_init_early();
    sl_system_init();
    app_init();
}
#endif
