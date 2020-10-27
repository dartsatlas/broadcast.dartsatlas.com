# Broadcaster's Guide

Darts Atlas provides a number of unique webpages that are designed to be used as _browser sources_ within OBS or similar broadcasting software. This guide lists and describes each of these unique sources, using [the Demo Premier League season](https://www.dartsatlas.com/seasons/demo-league-demo-premier-league) as a reference point. The season has been played into week 2, and the match included in the configuration example is [the in-progress Price vs van Gerwen match](https://www.dartsatlas.com/matches/1xOPQvhLuJh8).

When you are ready for your own production you can replace the Demo season and match URLs with the ones that correspond to your season and match.

## URLs on Darts Atlas

The first step in understanding how Darts Atlas supports broadcasters is to understand how the Darts Atlas URL structure works.

First, all URLs will start with the base URL, `https://www.dartsatlas.com`.

Next come the identifiers for the match or season you want to load. The season used in this demonstration can be found at `/seasons/demo-league-demo-premier-league`. The in-progress match used in this demonstration can be found at `/matches/1xOPQvhLuJh8`. Combined with the base URL, these become the Season and Match URLs:  

```
https://www.dartsatlas.com/seasons/demo-league-demo-premier-league

https://www.dartsatlas.com/matches/1xOPQvhLuJh8
```

Easy enough, right? These are the same URLs you'll see in your browser when you access the season or match directly through the website.

The next step is defining the _context_ you want to load for your season or match. This will be covered in each Source setting defined in the Scenes listed below.


## Scenes

There are 4 standard scenes you will encounter during a standard broadcast of a league match.

1. Season Standings
2. Match Preview
3. In-Match
4. Match Summary

Each of these _Scences_ are comprised of one or more Darts Atlas _Sources_, that is, a special webpage that displays one specific component of the match broadcast experience.

In OBS, each *Source* should be added as a _Browser_. This is the easiest way to configure your program template, control sizing, and transition between matches.

## Sources

Each of the *Sources* listed below are pre-configured in [the Darts Atlas OBS Template Scene Collection](/DA-Scene-Templates.json). Download the linked `.json` file, then import it into OBS as a new Scene Collection. You can also download the following assets and update the corresponding sources. You will need to define the file paths for these assets on your computer in order for OBS to load them into the Scene Collection.

- Blank Background: [blank-background.jpg](/obs_assets/blank-background.jpg)
- Blank Frame: [blank-frame.png](/obs_assets/blank-frame.png)
- Price Preview: [price.jpg](/obs_assets/price.jpg)
- MvG Preview: [vangerwen.jpg](/obs_assets/vangerwen.jpg)

The suggested default settings for a 720x1280 frame are listed with each Source below, but broadcasters are encouraged to modify sizing and placements to achieve their desired configuration.

Once you have your Sources set up for your first broadcast, the only change you need to make for your next match is to change the Match ID for your match-specific sources. Just copy the ID of the new match, and paste it into all of your browser source URLs to replace the existing match ID.

### Scoreboard: Single-Board

Append `/broadcast?mode=tv` to your Match URL to render a webpage that contains a classic TV-styled scoreboard, displaying Player 1 above Player 2.

**URL:** `https://www.dartsatlas.com/matches/1xOPQvhLuJh8/broadcast?mode=tv`  
**Width:** 500  
**Height:** 130  
**FPS:** 30  
**Refresh browser when scene becomes active:** Enabled

### Scoreboard: Dual-Board

Append `/broadcast?mode=dual_cam` to your Match URL to render a webpage that contains a classic TV-styled scoreboard, displaying Player 1 above Player 2.

**URL:** `https://www.dartsatlas.com/matches/1xOPQvhLuJh8/broadcast?mode=dual_cam`  
**Width:** 600  
**Height:** 120  
**FPS:** 30  
**Refresh browser when scene becomes active:** Enabled

### Season Standings

Append `/broadcast` to your Season URL to render a webpage that contains only the season leaderboard.

**URL:** `https://www.dartsatlas.com/seasons/demo-league-demo-premier-league/broadcast`  
**Width:** 740  
**Height:** 510  
**FPS:** 1  
**Refresh browser when scene becomes active:** Enabled

### Match Preview

Append `/broadcast_preview` to your Match URL to render a webpage that contains the season stats for each player.

**URL:** `https://www.dartsatlas.com/matches/1xOPQvhLuJh8/broadcast_preview`  
**Width:** 360  
**Height:** 210  
**FPS:** 1  
**Refresh browser when scene becomes active:** Enabled

### Match Stats

Append `/broadcast?mode=dual_cam_stats` to your Match URL to render a webpage that contains the match stats for each player, updated after each throw.

**URL:** `https://www.dartsatlas.com/matches/1xOPQvhLuJh8/broadcast?mode=dual_cam_stats`  
**Width:** 600  
**Height:** 240  
**FPS:** 1  
**Refresh browser when scene becomes active:** Enabled

### Dart Counts

Append `/broadcast_dart_counts` to your Match URL to render a webpage that contains the match stats for each player, updated after each throw.

**URL:** `https://www.dartsatlas.com/matches/1xOPQvhLuJh8/broadcast_dart_counts`  
**Width:** 210  
**Height:** 460  
**FPS:** 1  
**Refresh browser when scene becomes active:** Enabled

### Match Summary

Append `/broadcast_summary` to your Match URL to render a webpage that contains the final match stats for each player.

**URL:** `https://www.dartsatlas.com/matches/1xOPQvhLuJh8/broadcast_summary`  
**Width:** 600  
**Height:** 240  
**FPS:** 1  
**Refresh browser when scene becomes active:** Enabled

## Broadcast Booth

The broadcast booth is not designed to be used as a Source, though you are welcome to use it however you want.

Append `/broadcast_booth` to your Match URL to render a webpage intended be used as a second-screen beside your video feed. Load the page in a full-screen browser.

[https://www.dartsatlas.com/matches/1xOPQvhLuJh8/broadcast_booth](https://www.dartsatlas.com/matches/1xOPQvhLuJh8/broadcast_booth)

