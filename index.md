# Darts Atlas for Broadcasters

⚠️ The Broadcasting Guide is being re-developed following significant additions to the broadcasting suite.

🎯 Darts Atlas ([dartsatlas.com](https://www.dartsatlas.com)) provides a full-service digital scoreboard for broadcasting steel-tip darts. A single platform provides simple match setup, scorekeeping, stat tracking, public scoreboards, and a suite of broadcasting tools to bring you everything you need as a producer.

📂 [Download the Quickstart Guide](/darts-atlas-producer-quickstart.zip) and begin exploring all the ways you can create engaging, interactive, and fully-branded productions.

📺 See the Darts Atlas broadcast experience in-action on the City League Darts YouTube channel at [youtube.com/CityLeagueDarts](https://youtube.com/cityleaguedarts).

## Contact Darts Atlas

- [hello@dartsatlas.com](mailto:hello@dartsatlas.com)
- [twitter.com/dartsatlas](https://www.twitter.com/dartsatlas)
- [facebook.com/dartsatlas](https://www.facebook.com/dartsatlas)

# **New to Livestreaming?**

1. **[Download and install the latest version of OBS Studio](https://obsproject.com)**
1. **[Follow along with this 28-minute OBS tutorial on YouTube](https://www.youtube.com/watch?v=-puA85ciDEM)**

---

# **Getting Started**

These instructions reference files in the Quickstart Guide (download link above).

Full widget inventory and default source settings available at **[broadcast-widgets.dartsatlas.com](http://broadcast-widgets.dartsatlas.com)**.

### 1. Confirm your OBS Settings

Make sure that both Resolutions in your OBS Video settings are set to your desired output. If you are unsure of your computer's performance or of your network bandwidth then start with the lowest resolution for your first few months of streaming.

- 1280x720 (Standard)
- 1920x1080 (HD)
- 3840x2160 (4k)

### 2. Import Scene Collection

From the "Scene Collection" OBS menu select "Import", then find and select the file from this folder named `darts-atlas-720.json` (or `...-1080.json` or `...-4k.json` if using those higher resolutions).

Some of the scenes and sources may be relevant to your streams. Others may not. Some are specific to a round-robin season or group-stage tournament, while others are

### 3. Add the Darts Atlas OBS Script

The script allows for 1-click transition between matches, automatically updating all Darts Atlas-powered Browser Sources in your OBS Scene Collection.

1. Select "Scripts" from the "Tools" OBS menu
1. Click the "+" Sign
1. Select the file from this folder called `darts-atlas-obs.lua`

Keep in mind that this script is attached to your current OBS *Profile*. If you change Profiles or create a new one you will need to re-import the script for that Profile.

### 5. Apply Script Settings

1. **Match ID**: The Darts Atlas ID of any match (found via the match URL).   
   Match URL: https://www.dartsatlas.com/matches/bqKzYpuzuS0w   
   Match ID: `bqKzYpuzuS0w`
2. **Theme Color**: `FF0000` (any valid [6-character HEX Code](https://htmlcolorcodes.com/color-picker/))
3. **Text Color**: `FFFFFF` (any valid [6-character HEX Code](https://htmlcolorcodes.com/color-picker/))
4. Click *Apply*

### 7. Add a Scrolling Ticker

Follow the instructions: **[darts-atlas-ticker.pdf](http://broadcast.dartsatlas.com/darts-atlas-ticker.pdf)**

### 6. Explore

Expand and toggle your Source Groups and Sources to see how each is related to your match.

---

### **Other Considerations**

#### Scoreboard X-Axis Position

The Stacked Scoreboard widget has a blank space on its left side which is used to display a player's last score via a fade-in/fade-out animation. The width of that space is equal to 80% of the height of your scoreboard widget. For example, if you set the standard scoreboard height in HD to the recommended 165px then your left offset will be 132px (165 x 0.8).

Use that number to calculate the appropriate position for the widget on the X-Axis to align it with the middle seam. On a 1080 HD screen, the X-Axis value of the scoreboard should be ((1080 / 2) - 132), which gives you a position of 408px from the left edge of the screen.

#### Network Bandwidth

A successful stream requires a stable and predictable internet connection. An ethernet cable is preferable to a wireless signal, and the upload speed you achieve *on the streaming computer* will determine your maximum possible resolution.

Do not assume that your venue can provide adequate signal strength or bandwidth for your streaming needs. We recommend conducting at least 3 full-resolution, uninterrupted livestreams of at least 2 hours each at a venue before considering it stable enough for your streaming needs.

#### Cameras

Your cameras may be the limiting factor in your stream resolution. If the camera itself only delivers a 720 signal then streaming at a higher resolution will significantly degrade the quality due to upscaling.

#### iPhones as Cameras

We have had great success using iPhones as camera sources using a video protocol called NDI. This same technology allows lossless and low-latency data delivery from Skype and Microsoft Teams directly to an OBS video source. Initial setup, however, requires an advanced understanding of development documentation, installation processes, and troubleshooting. Darts Atlas is unable to provide support for camera or video source integrations.

Proceed at your own risk.

1. Refer to **[the OBS Camera compatibility guide](https://obs.camera/docs/faqs/#What-iOS-hardware-do-I-need)** to confirm your devices are compatible
2. Download and install the latest *obs-ndi* binary for your Operating System from **[the Releases list](https://github.com/Palakis/obs-ndi/releases)**
3. Download **[the OBS Camera app](https://obs.camera)** onto your phone(s) (Purchase required - Use the same purchase across all phones using the same iTunes account)
4. Follow **[the OBS Camera instructions](https://obs.camera/docs/getting-started/ios-camera-plugin-usb/)** for installing the iOS Camera Plugin for OBS Studio onto your computer

#### Streaming Platforms

For too many reasons to get into in this guide, Darts Atlas strongly recommends YouTube over other platforms.

Darts Atlas is working on a number of powerful features that leverage a direct connection between your YouTube Channel and your Darts Atlas account.

**[Send us an email](mailto:hello@dartsatlas.com)** with a link to your YouTube channel if you are streaming there. We like to showcase Darts Atlas-powered streams **[on our own channel](https://www.youtube.com/channel/UCiNdSmt46X1XhwMdrrJbQaw)** and on our social accounts. We do not have plans to showcase or promote livestreams hosted on Twitch or Facebook.

#### Production Network

There is significant demand from audiences, sponsors, and industry stakeholders for more local amateur livestreams.

If you are able to produce consistent dual-cam streams with basic scoreboard integrations then we can connect you with venues and organisers in your area who will pay for your services, or who can provide audiences that you can sell to in the form of sponsorship and advertising.

If you are producing high-quality weekly streams with live commentary then we will help promote your productions through paid advertisements, sponsor relationships, audience cross-promotion, and more.

#### Streamlabs, vMix, etc...

Ignore this section if you're not already using production software other than OBS Studio.

All of the Darts Atlas livestream integrations come in the form of browser sources, which are supported by almost all livestream production software. The only difference for Darts Atlas integration is the OBS Script that automates match transitions. If we see enough non-OBS demand then we will consider building comparable plugins for those products.

---

Updated 22-June, 2022
