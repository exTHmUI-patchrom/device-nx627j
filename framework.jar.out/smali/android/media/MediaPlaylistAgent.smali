.class public abstract Landroid/media/MediaPlaylistAgent;
.super Ljava/lang/Object;
.source "MediaPlaylistAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;,
        Landroid/media/MediaPlaylistAgent$ShuffleMode;,
        Landroid/media/MediaPlaylistAgent$RepeatMode;
    }
.end annotation


# static fields
.field public static final REPEAT_MODE_ALL:I = 0x2

.field public static final REPEAT_MODE_GROUP:I = 0x3

.field public static final REPEAT_MODE_NONE:I = 0x0

.field public static final REPEAT_MODE_ONE:I = 0x1

.field public static final SHUFFLE_MODE_ALL:I = 0x1

.field public static final SHUFFLE_MODE_GROUP:I = 0x2

.field public static final SHUFFLE_MODE_NONE:I


# instance fields
.field private final mProvider:Landroid/media/update/MediaPlaylistAgentProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->createMediaPlaylistAgent(Landroid/media/MediaPlaylistAgent;)Landroid/media/update/MediaPlaylistAgentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    .line 152
    return-void
.end method


# virtual methods
.method public addPlaylistItem(ILandroid/media/MediaItem2;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Landroid/media/MediaItem2;

    .line 242
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaPlaylistAgentProvider;->addPlaylistItem_impl(ILandroid/media/MediaItem2;)V

    .line 243
    return-void
.end method

.method public getMediaItem(Landroid/media/DataSourceDesc;)Landroid/media/MediaItem2;
    .locals 1
    .param p1, "dsd"    # Landroid/media/DataSourceDesc;

    .line 355
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaPlaylistAgentProvider;->getMediaItem_impl(Landroid/media/DataSourceDesc;)Landroid/media/MediaItem2;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->getPlaylist_impl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Landroid/media/MediaMetadata2;
    .locals 1

    .line 218
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->getPlaylistMetadata_impl()Landroid/media/MediaMetadata2;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->getRepeatMode_impl()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->getShuffleMode_impl()I

    move-result v0

    return v0
.end method

.method public final notifyPlaylistChanged()V
    .locals 1

    .line 178
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->notifyPlaylistChanged_impl()V

    .line 179
    return-void
.end method

.method public final notifyPlaylistMetadataChanged()V
    .locals 1

    .line 182
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->notifyPlaylistMetadataChanged_impl()V

    .line 183
    return-void
.end method

.method public final notifyRepeatModeChanged()V
    .locals 1

    .line 190
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->notifyRepeatModeChanged_impl()V

    .line 191
    return-void
.end method

.method public final notifyShuffleModeChanged()V
    .locals 1

    .line 186
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->notifyShuffleModeChanged_impl()V

    .line 187
    return-void
.end method

.method public final registerPlaylistEventCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;

    .line 164
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaPlaylistAgentProvider;->registerPlaylistEventCallback_impl(Ljava/util/concurrent/Executor;Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;)V

    .line 165
    return-void
.end method

.method public removePlaylistItem(Landroid/media/MediaItem2;)V
    .locals 1
    .param p1, "item"    # Landroid/media/MediaItem2;

    .line 251
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaPlaylistAgentProvider;->removePlaylistItem_impl(Landroid/media/MediaItem2;)V

    .line 252
    return-void
.end method

.method public replacePlaylistItem(ILandroid/media/MediaItem2;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Landroid/media/MediaItem2;

    .line 262
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaPlaylistAgentProvider;->replacePlaylistItem_impl(ILandroid/media/MediaItem2;)V

    .line 263
    return-void
.end method

.method public setPlaylist(Ljava/util/List;Landroid/media/MediaMetadata2;)V
    .locals 1
    .param p2, "metadata"    # Landroid/media/MediaMetadata2;
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

    .line 209
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaItem2;>;"
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaPlaylistAgentProvider;->setPlaylist_impl(Ljava/util/List;Landroid/media/MediaMetadata2;)V

    .line 210
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .line 311
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaPlaylistAgentProvider;->setRepeatMode_impl(I)V

    .line 312
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .param p1, "shuffleMode"    # I

    .line 335
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaPlaylistAgentProvider;->setShuffleMode_impl(I)V

    .line 336
    return-void
.end method

.method public skipToNextItem()V
    .locals 1

    .line 285
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->skipToNextItem_impl()V

    .line 286
    return-void
.end method

.method public skipToPlaylistItem(Landroid/media/MediaItem2;)V
    .locals 1
    .param p1, "item"    # Landroid/media/MediaItem2;

    .line 271
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaPlaylistAgentProvider;->skipToPlaylistItem_impl(Landroid/media/MediaItem2;)V

    .line 272
    return-void
.end method

.method public skipToPreviousItem()V
    .locals 1

    .line 278
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0}, Landroid/media/update/MediaPlaylistAgentProvider;->skipToPreviousItem_impl()V

    .line 279
    return-void
.end method

.method public final unregisterPlaylistEventCallback(Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;

    .line 174
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaPlaylistAgentProvider;->unregisterPlaylistEventCallback_impl(Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;)V

    .line 175
    return-void
.end method

.method public updatePlaylistMetadata(Landroid/media/MediaMetadata2;)V
    .locals 1
    .param p1, "metadata"    # Landroid/media/MediaMetadata2;

    .line 227
    iget-object v0, p0, Landroid/media/MediaPlaylistAgent;->mProvider:Landroid/media/update/MediaPlaylistAgentProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaPlaylistAgentProvider;->updatePlaylistMetadata_impl(Landroid/media/MediaMetadata2;)V

    .line 228
    return-void
.end method
