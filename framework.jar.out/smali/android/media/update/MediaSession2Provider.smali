.class public interface abstract Landroid/media/update/MediaSession2Provider;
.super Ljava/lang/Object;
.source "MediaSession2Provider.java"

# interfaces
.implements Landroid/media/update/TransportControlProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;,
        Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;,
        Landroid/media/update/MediaSession2Provider$CommandButtonProvider;,
        Landroid/media/update/MediaSession2Provider$CommandGroupProvider;,
        Landroid/media/update/MediaSession2Provider$CommandProvider;
    }
.end annotation


# virtual methods
.method public abstract addPlaylistItem_impl(ILandroid/media/MediaItem2;)V
.end method

.method public abstract clearOnDataSourceMissingHelper_impl()V
.end method

.method public abstract close_impl()V
.end method

.method public abstract getBufferedPosition_impl()J
.end method

.method public abstract getConnectedControllers_impl()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaSession2$ControllerInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentPlaylistItem_impl()Landroid/media/MediaItem2;
.end method

.method public abstract getCurrentPosition_impl()J
.end method

.method public abstract getPlayerState_impl()I
.end method

.method public abstract getPlayer_impl()Landroid/media/MediaPlayerBase;
.end method

.method public abstract getPlaylistAgent_impl()Landroid/media/MediaPlaylistAgent;
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

.method public abstract getToken_impl()Landroid/media/SessionToken2;
.end method

.method public abstract getVolumeProvider_impl()Landroid/media/VolumeProvider2;
.end method

.method public abstract notifyError_impl(ILandroid/os/Bundle;)V
.end method

.method public abstract removePlaylistItem_impl(Landroid/media/MediaItem2;)V
.end method

.method public abstract replacePlaylistItem_impl(ILandroid/media/MediaItem2;)V
.end method

.method public abstract sendCustomCommand_impl(Landroid/media/MediaSession2$ControllerInfo;Landroid/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.end method

.method public abstract sendCustomCommand_impl(Landroid/media/SessionCommand2;Landroid/os/Bundle;)V
.end method

.method public abstract setAllowedCommands_impl(Landroid/media/MediaSession2$ControllerInfo;Landroid/media/SessionCommandGroup2;)V
.end method

.method public abstract setAudioFocusRequest_impl(Landroid/media/AudioFocusRequest;)V
.end method

.method public abstract setCustomLayout_impl(Landroid/media/MediaSession2$ControllerInfo;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaSession2$ControllerInfo;",
            "Ljava/util/List<",
            "Landroid/media/MediaSession2$CommandButton;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOnDataSourceMissingHelper_impl(Landroid/media/MediaSession2$OnDataSourceMissingHelper;)V
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

.method public abstract updatePlayer_impl(Landroid/media/MediaPlayerBase;Landroid/media/MediaPlaylistAgent;Landroid/media/VolumeProvider2;)V
.end method

.method public abstract updatePlaylistMetadata_impl(Landroid/media/MediaMetadata2;)V
.end method
