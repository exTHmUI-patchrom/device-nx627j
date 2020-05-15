.class public interface abstract Landroid/media/update/MediaPlaylistAgentProvider;
.super Ljava/lang/Object;
.source "MediaPlaylistAgentProvider.java"


# virtual methods
.method public abstract addPlaylistItem_impl(ILandroid/media/MediaItem2;)V
.end method

.method public abstract getMediaItem_impl(Landroid/media/DataSourceDesc;)Landroid/media/MediaItem2;
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

.method public abstract getRepeatMode_impl()I
.end method

.method public abstract getShuffleMode_impl()I
.end method

.method public abstract notifyPlaylistChanged_impl()V
.end method

.method public abstract notifyPlaylistMetadataChanged_impl()V
.end method

.method public abstract notifyRepeatModeChanged_impl()V
.end method

.method public abstract notifyShuffleModeChanged_impl()V
.end method

.method public abstract registerPlaylistEventCallback_impl(Ljava/util/concurrent/Executor;Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;)V
.end method

.method public abstract removePlaylistItem_impl(Landroid/media/MediaItem2;)V
.end method

.method public abstract replacePlaylistItem_impl(ILandroid/media/MediaItem2;)V
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

.method public abstract setRepeatMode_impl(I)V
.end method

.method public abstract setShuffleMode_impl(I)V
.end method

.method public abstract skipToNextItem_impl()V
.end method

.method public abstract skipToPlaylistItem_impl(Landroid/media/MediaItem2;)V
.end method

.method public abstract skipToPreviousItem_impl()V
.end method

.method public abstract unregisterPlaylistEventCallback_impl(Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;)V
.end method

.method public abstract updatePlaylistMetadata_impl(Landroid/media/MediaMetadata2;)V
.end method
