obs = obslua
match_hash_id = "#########"
base_url = "https://www.dartsatlas.com/matches/"

function activate(activating)
  if activated == activating then
    return
  end
  activated = activating
end

function reset(pressed)
  if not pressed then
    return
  end

  local match_scoreboard = obs.obs_get_source_by_name("Scoreboard")
  local match_stats = obs.obs_get_source_by_name("Stats")
  local match_dart_counts = obs.obs_get_source_by_name("Dart Counts")
  local match_preview = obs.obs_get_source_by_name("Preview Screen")
  local match_summary = obs.obs_get_source_by_name("Summary Screen")

  local match_scoreboard_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast?mode=dual_cam")
  local match_stats_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast?mode=dual_cam_stats")
  local match_dart_counts_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_dart_counts")
  local match_summary_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_summary")
  local match_preview_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_preview")

  local settings = obs.obs_data_create()

  -- Scoreboard
  obs.obs_data_set_string(settings, "url", match_scoreboard_url)
  obs.obs_source_update(match_scoreboard, settings)
  obs.obs_source_release(match_scoreboard)

  -- Match Stats
  obs.obs_data_set_string(settings, "url", match_stats_url)
  obs.obs_source_update(match_stats, settings)
  obs.obs_source_release(match_stats)

  -- Match Dart Counts
  obs.obs_data_set_string(settings, "url", match_dart_counts_url)
  obs.obs_source_update(match_dart_counts, settings)
  obs.obs_source_release(match_dart_counts)

  -- Match Preview
  obs.obs_data_set_string(settings, "url", match_preview_url)
  obs.obs_source_update(match_preview, settings)
  obs.obs_source_release(match_preview)

  -- Match Summary
  obs.obs_data_set_string(settings, "url", match_summary_url)
  obs.obs_source_update(match_summary, settings)
  obs.obs_source_release(match_summary)

  obs.obs_data_release(settings)
end

function reset_button_clicked(props, p)
  reset(true)
  return false
end

function script_properties()
  local props = obs.obs_properties_create()
  obs.obs_properties_add_text(props, "match_hash_id", "Match Hash ID", obs.OBS_TEXT_DEFAULT)
  obs.obs_properties_add_button(props, "reset_button", "Reset Match", reset_button_clicked)
  return props
end

function script_description()
  return "Sets all relevant browser sources. \nMade by Darts Atlas"
end

function script_update(settings)
  activate(false)
  match_hash_id = obs.obs_data_get_string(settings, "match_hash_id")
  reset(true)
end
