obs = obslua
match_hash_id = "#########"
base_url = "https://www.dartsatlas.com/matches/"
-- base_url = "https://dartsatlas.ngrok.io/matches/"

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

-- Bracket
-- Calendar
-- Dart Counts
-- Locations
-- Match Preview
-- Match Stats
-- Match Summary
-- Names
-- Photos
-- Scoreboard
-- Standings

  local match_best_of = obs.obs_get_source_by_name("[DA] Best Of")
  local match_bracket = obs.obs_get_source_by_name("[DA] Bracket")
  local match_calendar = obs.obs_get_source_by_name("[DA] Calendar")
  local match_dart_counts = obs.obs_get_source_by_name("[DA] Dart Counts")
  local match_locations = obs.obs_get_source_by_name("[DA] Locations")
  local match_preview = obs.obs_get_source_by_name("[DA] Match Preview")
  local match_stats = obs.obs_get_source_by_name("[DA] Match Stats")
  local match_summary = obs.obs_get_source_by_name("[DA] Match Summary")
  local match_names = obs.obs_get_source_by_name("[DA] Names")
  local match_photos = obs.obs_get_source_by_name("[DA] Photos")
  local match_scoreboard = obs.obs_get_source_by_name("[DA] Scoreboard")
  local match_standings = obs.obs_get_source_by_name("[DA] Standings")

  local match_best_of_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_best_of")
  local match_bracket_url = (tostring(base_url) .. tostring(match_hash_id) .. "/bracket")
  local match_calendar_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_calendar")
  local match_dart_counts_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_dart_counts")
  local match_locations_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_locations")
  local match_preview_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_preview")
  local match_stats_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_stats")
  local match_summary_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_summary")
  local match_names_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_names")
  local match_photos_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_photos")
  local match_schedule_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_schedule")
  local match_scoreboard_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_dual_cam")
  local match_standings_url = (tostring(base_url) .. tostring(match_hash_id) .. "/season_standings")

  local settings = obs.obs_data_create()

  -- Best Of
  obs.obs_data_set_string(settings, "url", match_best_of_url)
  obs.obs_source_update(match_best_of, settings)
  obs.obs_source_release(match_best_of)

  -- Bracket
  obs.obs_data_set_string(settings, "url", match_bracket_url)
  obs.obs_source_update(match_bracket, settings)
  obs.obs_source_release(match_bracket)

  -- Calendar
  obs.obs_data_set_string(settings, "url", match_calendar_url)
  obs.obs_source_update(match_calendar, settings)
  obs.obs_source_release(match_calendar)

  -- Dart Counts
  obs.obs_data_set_string(settings, "url", match_dart_counts_url)
  obs.obs_source_update(match_dart_counts, settings)
  obs.obs_source_release(match_dart_counts)

  -- Locations
  obs.obs_data_set_string(settings, "url", match_locations_url)
  obs.obs_source_update(match_locations, settings)
  obs.obs_source_release(match_locations)

  -- Match Preview
  obs.obs_data_set_string(settings, "url", match_preview_url)
  obs.obs_source_update(match_preview, settings)
  obs.obs_source_release(match_preview)

  -- Match Stats
  obs.obs_data_set_string(settings, "url", match_stats_url)
  obs.obs_source_update(match_stats, settings)
  obs.obs_source_release(match_stats)

  -- Match Summary
  obs.obs_data_set_string(settings, "url", match_summary_url)
  obs.obs_source_update(match_summary, settings)
  obs.obs_source_release(match_summar)

  -- Names
  obs.obs_data_set_string(settings, "url", match_names_url)
  obs.obs_source_update(match_names, settings)
  obs.obs_source_release(match_names)

  -- Photos
  obs.obs_data_set_string(settings, "url", match_photos_url)
  obs.obs_source_update(match_photos, settings)
  obs.obs_source_release(match_photos)

  -- Schedule
  obs.obs_data_set_string(settings, "url", match_schedule_url)
  obs.obs_source_update(match_schedule, settings)
  obs.obs_source_release(match_schedule)

  -- Scoreboard
  obs.obs_data_set_string(settings, "url", match_scoreboard_url)
  obs.obs_source_update(match_scoreboard, settings)
  obs.obs_source_release(match_scoreboard)

  -- Standings
  obs.obs_data_set_string(settings, "url", match_standings_url)
  obs.obs_source_update(match_standings, settings)
  obs.obs_source_release(match_standings)

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
