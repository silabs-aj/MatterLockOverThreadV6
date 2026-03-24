"# MatterLockOverThreadV6" 

# Add debug em2 with OnEntryModeTransition 
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


# add em2 event in app_init
void app_init(void)
{
    sl_power_manager_subscribe_em_transition_event(&sEnergyModeEventHandle, &sEnergyModeEventInfo);
    SILABS_TRACE_END(chip::Tracing::Silabs::TimeTraceOperation::kSilabsInit);
    SILABS_TRACE_BEGIN(chip::Tracing::Silabs::TimeTraceOperation::kMatterInit);
    // Initialize the matter application. For example, create periodic timer(s) or
    // task(s).
    SilabsMatterConfig::AppInit();
}
