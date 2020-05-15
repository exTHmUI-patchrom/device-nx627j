.class public abstract Landroid/media/MediaPlayerBase$PlayerEventCallback;
.super Ljava/lang/Object;
.source "MediaPlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlayerEventCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingStateChanged(Landroid/media/MediaPlayerBase;Landroid/media/DataSourceDesc;I)V
    .locals 0
    .param p1, "mpb"    # Landroid/media/MediaPlayerBase;
    .param p2, "dsd"    # Landroid/media/DataSourceDesc;
    .param p3, "state"    # I

    .line 312
    return-void
.end method

.method public onCurrentDataSourceChanged(Landroid/media/MediaPlayerBase;Landroid/media/DataSourceDesc;)V
    .locals 0
    .param p1, "mpb"    # Landroid/media/MediaPlayerBase;
    .param p2, "dsd"    # Landroid/media/DataSourceDesc;

    .line 288
    return-void
.end method

.method public onMediaPrepared(Landroid/media/MediaPlayerBase;Landroid/media/DataSourceDesc;)V
    .locals 0
    .param p1, "mpb"    # Landroid/media/MediaPlayerBase;
    .param p2, "dsd"    # Landroid/media/DataSourceDesc;

    .line 295
    return-void
.end method

.method public onPlaybackSpeedChanged(Landroid/media/MediaPlayerBase;F)V
    .locals 0
    .param p1, "mpb"    # Landroid/media/MediaPlayerBase;
    .param p2, "speed"    # F

    .line 319
    return-void
.end method

.method public onPlayerStateChanged(Landroid/media/MediaPlayerBase;I)V
    .locals 0
    .param p1, "mpb"    # Landroid/media/MediaPlayerBase;
    .param p2, "state"    # I

    .line 303
    return-void
.end method

.method public onSeekCompleted(Landroid/media/MediaPlayerBase;J)V
    .locals 0
    .param p1, "mpb"    # Landroid/media/MediaPlayerBase;
    .param p2, "position"    # J

    .line 328
    return-void
.end method
