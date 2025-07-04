{ unstable, ... }:
{
  stylix.targets = {
    nixcord.enable = false;
    vesktop.enable = false;
    vencord.enable = false;
  };

  programs.nixcord = {
    enable = true;
    discord = {
      enable = unstable.stdenv.isDarwin;
      # package = unstable.discord;
    };

    vesktop = {
      enable = unstable.stdenv.isLinux;
      package = unstable.vesktop;
    };
    quickCss = builtins.readFile ./quick.css;
    config = {
      useQuickCss = true;
      themeLinks = [ ];
      frameless = true;
      plugins = {
        betterSettings.enable = true;
        callTimer.enable = true;
        crashHandler.enable = true;
        fixSpotifyEmbeds = {
          enable = true;
          volume = 9.0;
        };
        fixYoutubeEmbeds.enable = true;
        imageZoom.enable = true;
        noF1.enable = true;
        onePingPerDM.enable = true;
        openInApp.enable = true;
        quickReply.enable = true;
        spotifyControls.enable = true;
        spotifyCrack.enable = true;
        spotifyShareCommands.enable = true;
        voiceChatDoubleClick.enable = true;
        voiceDownload.enable = true;
        voiceMessages.enable = true;
        volumeBooster = {
          enable = true;
          multiplier = 5;
        };
        shikiCodeblocks = {
        enable = true;  
        };
        showHiddenChannels = {
        enable = true;
        showMode = "plain";
        };
        serverInfo.enable = true;
        viewIcons.enable = true;
        viewRaw.enable = true;
        pinDMs.enable = true;
        userVoiceShow.enable = true;
        messageClickActions.enable = true;
        validUser.enable = true;
        readAllNotificationsButton.enable = true;
        messageLogger.enable = true;
        webKeybinds.enable = true;
        webScreenShareFixes.enable = true;
        youtubeAdblock.enable = true;
      };
    };
  };
}
