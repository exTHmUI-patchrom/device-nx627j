.class public interface abstract Landroid/media/update/MediaController2Provider;
.super Ljava/lang/Object;
.source "MediaController2Provider.java"

# interfaces
.implements Landroid/media/update/TransportControlProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;
    }
.end annotation


# virtual methods
.method public abstract addPlaylistItem_impl(ILandroid/media/MediaItem2;)V
.end method

.method public abstract adjustVolume_impl(II)V
.end method

.method public abstract close_impl()V
.end method

.method public abstract fastForward_impl()V
.end method

.method public abstract getBufferedPosition_impl()J
.end method

.method public abstract getCurrentMediaItem_impl()Landroid/media/MediaItem2;
.end method

.method public abstract getCurrentPosition_impl()J
.end method

.method public abstract getPlaybackInfo_impl()Landroid/media/MediaController2$PlaybackInfo;
.end method

.method public abstract getPlaybackSpeed_impl()F
.end method

.method public abstract getPlayerState_impl()I
.end method

.method public abstract getPlaylistMetadata_impl()Landroid/media/MediaMetadata2;
.end method

.method public abstract getPlaylist_impl()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionActivity_impl()Landroid/app/PendingIntent;
.end method

.method public abstract getSessionToken_impl()Landroid/media/SessionToken2;
.end method

.method public abstract initialize()V
.end method

.method public abstract isConnected_impl()Z
.end method

.method public abstract playFromMediaId_impl(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract playFromSearch_impl(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract playFromUri_impl(Landroid/net/Uri;Landroid/os/Bundle;)V
.end method

.method public abstract prepareFromMediaId_impl(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract prepareFromSearch_impl(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract prepareFromUri_impl(Landroid/net/Uri;Landroid/os/Bundle;)V
.end method

.method public abstract removePlaylistItem_impl(Landroid/media/MediaItem2;)V
.end method

.method public abstract replacePlaylistItem_impl(ILandroid/media/MediaItem2;)V
.end method

.method public abstract rewind_impl()V
.end method

.method public abstract sendCustomCommand_impl(Landroid/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.end method

.method public abstract setPlaylist_impl(Ljava/util/List;Landroid/media/MediaMetadata2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;",
            "Landroid/media/MediaMetadata2;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setRating_impl(Ljava/lang/String;Landroid/media/Rating2;)V
.end method

.method public abstract setVolumeTo_impl(II)V
.end method

.method public abstract updatePlaylistMetadata_impl(Landroid/media/MediaMetadata2;)V
.end method
