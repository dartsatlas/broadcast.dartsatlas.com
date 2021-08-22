# Darts Atlas + City League + OBS

Send questions to [matt@dartsatlas.com](mailto:matt@dartsatlas.com). Check out the [City League YouTube Channel](https://www.youtube.com/cityleaguedarts) to see all of the concepts below come together in a live production.

### Setting up OBS

1. Download [city_league_obs.zip](/templates/city_league_obs.zip). Extract the directory and place it wherever you store your livestreaming files.
2. Launch OBS. Make sure your Video settings (Output & Canvas) are both set to 1280x720. If you stream other content in 1080 then you should create a new OBS _Profile_ with these lower-resolution video settings, and use that for your City League streams.
3. In OBS, select Import in the _Scene Collection_ menu and import `city-league-obs-template.json`. You'll get some errors about missing files.
4. Update file paths for missing Image Sources:  
   1. Venue Logo
   2. Darts Atlas Logo
   3. City League Logo
5. Update file paths for missing Scripts (in _Tools_ menu)
   1. `darts_atlas_obs.lua`
   2. `countdown.lua`
6. Test your setup by entering this Match ID in the Darts Atlas OBS Script, and clicking _Apply_.  
    `jeZhOoBGBGQl`  
    Your `[DA] ...` browser sources should now display a league match between Seth Wilkerson and Christopher Hoebel.
7. Explore the different Scenes and Sources. Remember that some Sources are hidden by default, and that Show/Hide Transitions have been applied to a number of them to improve the production quality of your livestream.

Make sure that all of the Source names that start with `[DA]` are never changed. You can move and resize those sources, or add/remove them from different Scenes, but their names must remain the same for them to be updated automatically for each new match.

If a Nickname or Location aren't displayed for a player then they have not set that field in their Darts Atlas profile.

### Customization

- Customize the Darts Atlas widget colors using the Darts Atlas OBS Script. Enter a [6-character HEX color code](https://htmlcolorcodes.com) for the theme color and a contrasting text color.
- Change the color of the Ticket, Preview, and Summary background blocks.
- Replace the default Venue logo with the logo from your own home venue.
- Update the Ticker text.
- Add a sponsor slideshow with royalty-free background music to loop between matches or during your Preroll.
- Add a _Broadcast Booth_ Scene to provide a camera view of the commentary team, or to provide photos of the commentators.
