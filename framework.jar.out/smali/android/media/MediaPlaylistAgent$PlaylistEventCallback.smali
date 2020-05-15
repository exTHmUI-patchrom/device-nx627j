.class public abstract Landroid/media/MediaPlaylistAgent$PlaylistEventCallback;
.super Ljava/lang/Object;
.source "MediaPlaylistAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlaylistAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlaylistEventCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaylistChanged(Landroid/media/MediaPlaylistAgent;Ljava/util/List;Landroid/media/MediaMetadata2;)V
    .locals 0
    .param p1, "playlistAgent"    # Landroid/media/MediaPlaylistAgent;
    .param p3, "metadata"    # Landroid/media/MediaMetadata2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaPlaylistAgent;",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;",
            "Landroid/media/MediaMetadata2;",
            ")V"
        }
    .end annotation

    .line 113
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaItem2;>;"
    return-void
.end method

.method public onPlaylistMetadataChanged(Landroid/media/MediaPlaylistAgent;Landroid/media/MediaMetadata2;)V
    .locals 0
    .param p1, "playlistAgent"    # Landroid/media/MediaPlaylistAgent;
    .param p2, "metadata"    # Landroid/media/MediaMetadata2;

    .line 122
    return-void
.end method

.method public onRepeatModeChanged(Landroid/media/MediaPlaylistAgent;I)V
    .locals 0
    .param p1, "playlistAgent"    # Landroid/media/MediaPlaylistAgent;
    .param p2, "repeatMode"    # I

    .line 147
    return-void
.end method

.method public onShuffleModeChanged(Landroid/media/MediaPlaylistAgent;I)V
    .locals 0
    .param p1, "playlistAgent"    # Landroid/media/MediaPlaylistAgent;
    .param p2, "shuffleMode"    # I

    .line 134
    return-void
.end method
