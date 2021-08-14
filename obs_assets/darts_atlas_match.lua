obs = obslua
base_url = "https://www.dartsatlas.com/matches/"

function updateMatch()
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
--  local match_calendar = obs.obs_get_source_by_name("[DA] Calendar")
  local match_dart_counts = obs.obs_get_source_by_name("[DA] Dart Counts")
  local match_dart_counts_stacked_page_1 = obs.obs_get_source_by_name("[DA] Dart Counts - Stacked - Page 1")
  local match_dart_counts_stacked_page_2 = obs.obs_get_source_by_name("[DA] Dart Counts - Stacked - Page 2")
  local match_dart_counts_stacked_page_3 = obs.obs_get_source_by_name("[DA] Dart Counts - Stacked - Page 3")
  local match_location_p1 = obs.obs_get_source_by_name("[DA] Location - P1")
  local match_location_p2 = obs.obs_get_source_by_name("[DA] Location - P2")
  local match_preview = obs.obs_get_source_by_name("[DA] Match Preview")
  local match_stats = obs.obs_get_source_by_name("[DA] Match Stats")
  local match_stats_stacked = obs.obs_get_source_by_name("[DA] Match Stats - Stacked")
  local match_summary = obs.obs_get_source_by_name("[DA] Match Summary")
  local match_name_p1 = obs.obs_get_source_by_name("[DA] Name - P1")
  local match_name_p2 = obs.obs_get_source_by_name("[DA] Name - P2")
  local match_nationality_p1 = obs.obs_get_source_by_name("[DA] Nationality - P1")
  local match_nationality_p2 = obs.obs_get_source_by_name("[DA] Nationality - P2")
  local match_nickname_p1 = obs.obs_get_source_by_name("[DA] Nickname - P1")
  local match_nickname_p2 = obs.obs_get_source_by_name("[DA] Nickname - P2")
--[[
  local match_photo_p1 = obs.obs_get_source_by_name("[DA] Photo - P1")
  local match_photo_p2 = obs.obs_get_source_by_name("[DA] Photo - P2")
--]]
  local match_scoreboard = obs.obs_get_source_by_name("[DA] Scoreboard")
  local match_scoreboard_stacked = obs.obs_get_source_by_name("[DA] Scoreboard - Stacked")
  local match_standings = obs.obs_get_source_by_name("[DA] Standings")

  local match_best_of_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_best_of")
  local match_bracket_url = (tostring(base_url) .. tostring(match_hash_id) .. "/bracket?theme_color=" .. tostring(da_theme_color) .. "&text_color=" .. tostring(da_text_color))
--  local match_calendar_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_calendar")
  local match_dart_counts_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_dart_counts?theme_color=" .. tostring(da_theme_color) .. "&text_color=" .. tostring(da_text_color))
  local match_dart_counts_stacked_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_tv_dart_counts?theme_color=" .. tostring(da_theme_color) .. "&text_color=" .. tostring(da_text_color))
  local match_location_p1_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_location?player=1")
  local match_location_p2_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_location?player=2")
  local match_preview_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_preview?theme_color=" .. tostring(da_theme_color) .. "&text_color=" .. tostring(da_text_color))
  local match_stats_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_stats?theme_color=" .. tostring(da_theme_color) .. "&text_color=" .. tostring(da_text_color))
  local match_stats_stacked_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_tv_stats?theme_color=" .. tostring(da_theme_color) .. "&text_color=" .. tostring(da_text_color))
  local match_summary_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_summary?theme_color=" .. tostring(da_theme_color) .. "&text_color=" .. tostring(da_text_color))
  local match_name_p1_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_name?player=1")
  local match_name_p2_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_name?player=2")
  local match_nationality_p1_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_nationality?player=1")
  local match_nationality_p2_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_nationality?player=2")
  local match_nickname_p1_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_nickname?player=1")
  local match_nickname_p2_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_nickname?player=2")
--[[
  local match_photo_p1_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_photo?player=1")
  local match_photo_p2_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_photo?player=2")
--]]
--   local match_schedule_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_schedule")
  local match_scoreboard_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast_dual_cam?theme_color=" .. tostring(da_theme_color) .. "&text_color=" .. tostring(da_text_color))
  local match_scoreboard_stacked_url = (tostring(base_url) .. tostring(match_hash_id) .. "/broadcast?mode=tv&theme_color=" .. tostring(da_theme_color) .. "&text_color=" .. tostring(da_text_color))
  local match_standings_url = (tostring(base_url) .. tostring(match_hash_id) .. "/season_standings?theme_color=" .. tostring(da_theme_color) .. "&text_color=" .. tostring(da_text_color))

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
--  obs.obs_data_set_string(settings, "url", match_calendar_url)
--  obs.obs_source_update(match_calendar, settings)
--  obs.obs_source_release(match_calendar)

  -- Dart Counts
  obs.obs_data_set_string(settings, "url", match_dart_counts_url)
  obs.obs_source_update(match_dart_counts, settings)
  obs.obs_source_release(match_dart_counts)

  obs.obs_data_set_string(settings, "url", (tostring(match_dart_counts_stacked_url) .. "&page=1"))
  obs.obs_source_update(match_dart_counts_stacked_page_1, settings)
  obs.obs_source_release(match_dart_counts_stacked_page_1)
  
  obs.obs_data_set_string(settings, "url", (tostring(match_dart_counts_stacked_url) .. "&page=2"))
  obs.obs_source_update(match_dart_counts_stacked_page_2, settings)
  obs.obs_source_release(match_dart_counts_stacked_page_2)
  
  obs.obs_data_set_string(settings, "url", (tostring(match_dart_counts_stacked_url) .. "&page=3"))
  obs.obs_source_update(match_dart_counts_stacked_page_3, settings)
  obs.obs_source_release(match_dart_counts_stacked_page_3)

  -- Locations
  obs.obs_data_set_string(settings, "url", match_location_p1_url)
  obs.obs_source_update(match_location_p1, settings)
  obs.obs_source_release(match_location_p1)

  obs.obs_data_set_string(settings, "url", match_location_p2_url)
  obs.obs_source_update(match_location_p2, settings)
  obs.obs_source_release(match_location_p2)

  -- Match Preview
  obs.obs_data_set_string(settings, "url", match_preview_url)
  obs.obs_source_update(match_preview, settings)
  obs.obs_source_release(match_preview)

  -- Match Stats
  obs.obs_data_set_string(settings, "url", match_stats_url)
  obs.obs_source_update(match_stats, settings)
  obs.obs_source_release(match_stats)

  obs.obs_data_set_string(settings, "url", match_stats_stacked_url)
  obs.obs_source_update(match_stats_stacked, settings)
  obs.obs_source_release(match_stats_stacked)

  -- Match Summary
  obs.obs_data_set_string(settings, "url", match_summary_url)
  obs.obs_source_update(match_summary, settings)
  obs.obs_source_release(match_summar)

  -- Names
  obs.obs_data_set_string(settings, "url", match_name_p1_url)
  obs.obs_source_update(match_name_p1, settings)
  obs.obs_source_release(match_name_p1)
  obs.obs_data_set_string(settings, "url", match_name_p2_url)
  obs.obs_source_update(match_name_p2, settings)
  obs.obs_source_release(match_name_p2)

  -- Nationalities
  obs.obs_data_set_string(settings, "url", match_nationality_p1_url)
  obs.obs_source_update(match_nationality_p1, settings)
  obs.obs_source_release(match_nationality_p1)
  obs.obs_data_set_string(settings, "url", match_nationality_p2_url)
  obs.obs_source_update(match_nationality_p2, settings)
  obs.obs_source_release(match_nationality_p2)

  -- Nicknames
  obs.obs_data_set_string(settings, "url", match_nickname_p1_url)
  obs.obs_source_update(match_nickname_p1, settings)
  obs.obs_source_release(match_nickname_p1)
  obs.obs_data_set_string(settings, "url", match_nickname_p2_url)
  obs.obs_source_update(match_nickname_p2, settings)
  obs.obs_source_release(match_nickname_p2)

  -- Photos
--[[
  obs.obs_data_set_string(settings, "url", match_photo_p1_url)
  obs.obs_source_update(match_photo_p1, settings)
  obs.obs_source_release(match_photo_p1)
  obs.obs_data_set_string(settings, "url", match_photo_p2_url)
  obs.obs_source_update(match_photo_p2, settings)
  obs.obs_source_release(match_photo_p2)
--]]

  -- Schedule
--[[
  obs.obs_data_set_string(settings, "url", match_schedule_url)
  obs.obs_source_update(match_schedule, settings)
  obs.obs_source_release(match_schedule)
--]]

  -- Scoreboard
  obs.obs_data_set_string(settings, "url", match_scoreboard_url)
  obs.obs_source_update(match_scoreboard, settings)
  obs.obs_source_release(match_scoreboard)

  obs.obs_data_set_string(settings, "url", match_scoreboard_stacked_url)
  obs.obs_source_update(match_scoreboard_stacked, settings)
  obs.obs_source_release(match_scoreboard_stacked)

  -- Standings
  obs.obs_data_set_string(settings, "url", match_standings_url)
  obs.obs_source_update(match_standings, settings)
  obs.obs_source_release(match_standings)

  obs.obs_data_release(settings)
end

function reset_button_clicked(props, p, settings)
  updateMatch(settings)
end

function script_properties()
  local properties = obs.obs_properties_create()
  obs.obs_properties_add_text(properties, "match_hash_id", "Match Hash ID", obs.OBS_TEXT_DEFAULT)
  obs.obs_properties_add_text(properties, "da_theme_color", "Theme Color", obs.OBS_TEXT_DEFAULT)
  obs.obs_properties_add_text(properties, "da_text_color", "Text Color", obs.OBS_TEXT_DEFAULT)
  obs.obs_properties_add_button(properties, "reset_button", "Apply", reset_button_clicked)
  return properties
end

function script_description()
  return "Sets all relevant browser sources. \nMade by Darts Atlas"
end

function script_update(settings)
  match_hash_id = obs.obs_data_get_string(settings, "match_hash_id")
  da_theme_color = obs.obs_data_get_string(settings, "da_theme_color")
  da_text_color = obs.obs_data_get_string(settings, "da_text_color")
end
