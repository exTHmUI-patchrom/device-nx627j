.class public abstract Landroid/media/MediaSession2$SessionCallback;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingStateChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlayerBase;Landroid/media/MediaItem2;I)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "player"    # Landroid/media/MediaPlayerBase;
    .param p3, "item"    # Landroid/media/MediaItem2;
    .param p4, "state"    # I

    .line 454
    return-void
.end method

.method public onCommandRequest(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/SessionCommand2;)Z
    .locals 1
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "command"    # Landroid/media/SessionCommand2;

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public onConnect(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;)Landroid/media/SessionCommandGroup2;
    .locals 1
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "controller"    # Landroid/media/MediaSession2$ControllerInfo;

    .line 208
    new-instance v0, Landroid/media/SessionCommandGroup2;

    invoke-direct {v0}, Landroid/media/SessionCommandGroup2;-><init>()V

    .line 209
    .local v0, "commands":Landroid/media/SessionCommandGroup2;
    invoke-virtual {v0}, Landroid/media/SessionCommandGroup2;->addAllPredefinedCommands()V

    .line 210
    return-object v0
.end method

.method public onCurrentMediaItemChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlayerBase;Landroid/media/MediaItem2;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "player"    # Landroid/media/MediaPlayerBase;
    .param p3, "item"    # Landroid/media/MediaItem2;

    .line 423
    return-void
.end method

.method public onCustomCommand(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "customCommand"    # Landroid/media/SessionCommand2;
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "cb"    # Landroid/os/ResultReceiver;

    .line 279
    return-void
.end method

.method public onDisconnected(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "controller"    # Landroid/media/MediaSession2$ControllerInfo;

    .line 220
    return-void
.end method

.method public onFastForward(Landroid/media/MediaSession2;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;

    .line 402
    return-void
.end method

.method public onMediaPrepared(Landroid/media/MediaSession2;Landroid/media/MediaPlayerBase;Landroid/media/MediaItem2;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "player"    # Landroid/media/MediaPlayerBase;
    .param p3, "item"    # Landroid/media/MediaItem2;

    .line 433
    return-void
.end method

.method public onPlayFromMediaId(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 293
    return-void
.end method

.method public onPlayFromSearch(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 310
    return-void
.end method

.method public onPlayFromUri(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 324
    return-void
.end method

.method public onPlaybackSpeedChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlayerBase;F)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "player"    # Landroid/media/MediaPlayerBase;
    .param p3, "speed"    # F

    .line 463
    return-void
.end method

.method public onPlayerStateChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlayerBase;I)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "player"    # Landroid/media/MediaPlayerBase;
    .param p3, "state"    # I

    .line 443
    return-void
.end method

.method public onPlaylistChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlaylistAgent;Ljava/util/List;Landroid/media/MediaMetadata2;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "playlistAgent"    # Landroid/media/MediaPlaylistAgent;
    .param p4, "metadata"    # Landroid/media/MediaMetadata2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaSession2;",
            "Landroid/media/MediaPlaylistAgent;",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;",
            "Landroid/media/MediaMetadata2;",
            ")V"
        }
    .end annotation

    .line 490
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaItem2;>;"
    return-void
.end method

.method public onPlaylistMetadataChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlaylistAgent;Landroid/media/MediaMetadata2;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "playlistAgent"    # Landroid/media/MediaPlaylistAgent;
    .param p3, "metadata"    # Landroid/media/MediaMetadata2;

    .line 500
    return-void
.end method

.method public onPrepareFromMediaId(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 348
    return-void
.end method

.method public onPrepareFromSearch(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 372
    return-void
.end method

.method public onPrepareFromUri(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 395
    return-void
.end method

.method public onRepeatModeChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlaylistAgent;I)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "playlistAgent"    # Landroid/media/MediaPlaylistAgent;
    .param p3, "repeatMode"    # I

    .line 529
    return-void
.end method

.method public onRewind(Landroid/media/MediaSession2;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;

    .line 409
    return-void
.end method

.method public onSeekCompleted(Landroid/media/MediaSession2;Landroid/media/MediaPlayerBase;J)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "mpb"    # Landroid/media/MediaPlayerBase;
    .param p3, "position"    # J

    .line 474
    return-void
.end method

.method public onSetRating(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/media/Rating2;)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "rating"    # Landroid/media/Rating2;

    .line 265
    return-void
.end method

.method public onShuffleModeChanged(Landroid/media/MediaSession2;Landroid/media/MediaPlaylistAgent;I)V
    .locals 0
    .param p1, "session"    # Landroid/media/MediaSession2;
    .param p2, "playlistAgent"    # Landroid/media/MediaPlaylistAgent;
    .param p3, "shuffleMode"    # I

    .line 514
    return-void
.end method
