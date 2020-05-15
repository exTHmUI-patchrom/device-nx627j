.class public abstract Landroid/media/MediaController2$ControllerCallback;
.super Ljava/lang/Object;
.source "MediaController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ControllerCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllowedCommandsChanged(Landroid/media/MediaController2;Landroid/media/SessionCommandGroup2;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "commands"    # Landroid/media/SessionCommandGroup2;

    .line 128
    return-void
.end method

.method public onBufferingStateChanged(Landroid/media/MediaController2;Landroid/media/MediaItem2;I)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "item"    # Landroid/media/MediaItem2;
    .param p3, "state"    # I

    .line 169
    return-void
.end method

.method public onConnected(Landroid/media/MediaController2;Landroid/media/SessionCommandGroup2;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "allowedCommands"    # Landroid/media/SessionCommandGroup2;

    .line 84
    return-void
.end method

.method public onCurrentMediaItemChanged(Landroid/media/MediaController2;Landroid/media/MediaItem2;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "item"    # Landroid/media/MediaItem2;

    .line 201
    return-void
.end method

.method public onCustomCommand(Landroid/media/MediaController2;Landroid/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "command"    # Landroid/media/SessionCommand2;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "receiver"    # Landroid/os/ResultReceiver;

    .line 140
    return-void
.end method

.method public onCustomLayoutChanged(Landroid/media/MediaController2;Ljava/util/List;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaController2;",
            "Ljava/util/List<",
            "Landroid/media/MediaSession2$CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaSession2$CommandButton;>;"
    return-void
.end method

.method public onDisconnected(Landroid/media/MediaController2;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;

    .line 97
    return-void
.end method

.method public onError(Landroid/media/MediaController2;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "errorCode"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 187
    return-void
.end method

.method public onPlaybackInfoChanged(Landroid/media/MediaController2;Landroid/media/MediaController2$PlaybackInfo;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "info"    # Landroid/media/MediaController2$PlaybackInfo;

    .line 119
    return-void
.end method

.method public onPlaybackSpeedChanged(Landroid/media/MediaController2;F)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "speed"    # F

    .line 157
    return-void
.end method

.method public onPlayerStateChanged(Landroid/media/MediaController2;I)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "state"    # I

    .line 148
    return-void
.end method

.method public onPlaylistChanged(Landroid/media/MediaController2;Ljava/util/List;Landroid/media/MediaMetadata2;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p3, "metadata"    # Landroid/media/MediaMetadata2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaController2;",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;",
            "Landroid/media/MediaMetadata2;",
            ")V"
        }
    .end annotation

    .line 211
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaItem2;>;"
    return-void
.end method

.method public onPlaylistMetadataChanged(Landroid/media/MediaController2;Landroid/media/MediaMetadata2;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "metadata"    # Landroid/media/MediaMetadata2;

    .line 220
    return-void
.end method

.method public onRepeatModeChanged(Landroid/media/MediaController2;I)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "repeatMode"    # I

    .line 245
    return-void
.end method

.method public onSeekCompleted(Landroid/media/MediaController2;J)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "position"    # J

    .line 177
    return-void
.end method

.method public onShuffleModeChanged(Landroid/media/MediaController2;I)V
    .locals 0
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "shuffleMode"    # I

    .line 232
    return-void
.end method
