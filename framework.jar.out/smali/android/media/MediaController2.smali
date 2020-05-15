.class public Landroid/media/MediaController2;
.super Ljava/lang/Object;
.source "MediaController2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaController2$PlaybackInfo;,
        Landroid/media/MediaController2$ControllerCallback;
    }
.end annotation


# instance fields
.field private final mProvider:Landroid/media/update/MediaController2Provider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/media/SessionToken2;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/media/MediaController2$ControllerCallback;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaController2;->createProvider(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/update/MediaController2Provider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    .line 358
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->initialize()V

    .line 359
    return-void
.end method


# virtual methods
.method public addPlaylistItem(ILandroid/media/MediaItem2;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Landroid/media/MediaItem2;

    .line 755
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaController2Provider;->addPlaylistItem_impl(ILandroid/media/MediaItem2;)V

    .line 756
    return-void
.end method

.method public adjustVolume(II)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .line 580
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaController2Provider;->adjustVolume_impl(II)V

    .line 581
    return-void
.end method

.method public close()V
    .locals 1

    .line 374
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->close_impl()V

    .line 375
    return-void
.end method

.method createProvider(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/update/MediaController2Provider;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/media/SessionToken2;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/media/MediaController2$ControllerCallback;

    .line 364
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/media/update/StaticProvider;->createMediaController2(Landroid/content/Context;Landroid/media/MediaController2;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/update/MediaController2Provider;

    move-result-object v0

    return-object v0
.end method

.method public fastForward()V
    .locals 1

    .line 425
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->fastForward_impl()V

    .line 426
    return-void
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 651
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->getBufferedPosition_impl()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferingState()I
    .locals 1

    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentMediaItem()Landroid/media/MediaItem2;
    .locals 1

    .line 788
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->getCurrentMediaItem_impl()Landroid/media/MediaItem2;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 611
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->getCurrentPosition_impl()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackInfo()Landroid/media/MediaController2$PlaybackInfo;
    .locals 1

    .line 660
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->getPlaybackInfo_impl()Landroid/media/MediaController2$PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 621
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->getPlaybackSpeed_impl()F

    move-result v0

    return v0
.end method

.method public getPlayerState()I
    .locals 1

    .line 599
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->getPlayerState_impl()I

    move-result v0

    return v0
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

    .line 703
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->getPlaylist_impl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Landroid/media/MediaMetadata2;
    .locals 1

    .line 739
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->getPlaylistMetadata_impl()Landroid/media/MediaMetadata2;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Landroid/media/update/MediaController2Provider;
    .locals 1

    .line 381
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 831
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->getRepeatMode_impl()I

    move-result v0

    return v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    .line 589
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->getSessionActivity_impl()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroid/media/SessionToken2;
    .locals 1

    .line 388
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->getSessionToken_impl()Landroid/media/SessionToken2;

    move-result-object v0

    return-object v0
.end method

.method public getShuffleMode()I
    .locals 1

    .line 857
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->getShuffleMode_impl()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 395
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->isConnected_impl()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 403
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->pause_impl()V

    .line 404
    return-void
.end method

.method public play()V
    .locals 1

    .line 399
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->play_impl()V

    .line 400
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 469
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaController2Provider;->playFromMediaId_impl(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 470
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 479
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaController2Provider;->playFromSearch_impl(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 480
    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 490
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaController2Provider;->playFromUri_impl(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 491
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 418
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->prepare_impl()V

    .line 419
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 506
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaController2Provider;->prepareFromMediaId_impl(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 507
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 522
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaController2Provider;->prepareFromSearch_impl(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 523
    return-void
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 538
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaController2Provider;->prepareFromUri_impl(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 539
    return-void
.end method

.method public removePlaylistItem(Landroid/media/MediaItem2;)V
    .locals 1
    .param p1, "item"    # Landroid/media/MediaItem2;

    .line 767
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaController2Provider;->removePlaylistItem_impl(Landroid/media/MediaItem2;)V

    .line 768
    return-void
.end method

.method public replacePlaylistItem(ILandroid/media/MediaItem2;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Landroid/media/MediaItem2;

    .line 778
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaController2Provider;->replacePlaylistItem_impl(ILandroid/media/MediaItem2;)V

    .line 779
    return-void
.end method

.method public rewind()V
    .locals 1

    .line 432
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->rewind_impl()V

    .line 433
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    .line 441
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaController2Provider;->seekTo_impl(J)V

    .line 442
    return-void
.end method

.method public sendCustomCommand(Landroid/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "command"    # Landroid/media/SessionCommand2;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 688
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/update/MediaController2Provider;->sendCustomCommand_impl(Landroid/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 689
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .line 629
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

    .line 719
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaItem2;>;"
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaController2Provider;->setPlaylist_impl(Ljava/util/List;Landroid/media/MediaMetadata2;)V

    .line 720
    return-void
.end method

.method public setRating(Ljava/lang/String;Landroid/media/Rating2;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "rating"    # Landroid/media/Rating2;

    .line 676
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaController2Provider;->setRating_impl(Ljava/lang/String;Landroid/media/Rating2;)V

    .line 677
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .line 844
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaController2Provider;->setRepeatMode_impl(I)V

    .line 845
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .param p1, "shuffleMode"    # I

    .line 869
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaController2Provider;->setShuffleMode_impl(I)V

    .line 870
    return-void
.end method

.method public setVolumeTo(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .line 557
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaController2Provider;->setVolumeTo_impl(II)V

    .line 558
    return-void
.end method

.method public skipBackward()V
    .locals 0

    .line 459
    return-void
.end method

.method public skipForward()V
    .locals 0

    .line 451
    return-void
.end method

.method public skipToNextItem()V
    .locals 1

    .line 806
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->skipToNextItem_impl()V

    .line 807
    return-void
.end method

.method public skipToPlaylistItem(Landroid/media/MediaItem2;)V
    .locals 1
    .param p1, "item"    # Landroid/media/MediaItem2;

    .line 817
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaController2Provider;->skipToPlaylistItem_impl(Landroid/media/MediaItem2;)V

    .line 818
    return-void
.end method

.method public skipToPreviousItem()V
    .locals 1

    .line 797
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->skipToPreviousItem_impl()V

    .line 798
    return-void
.end method

.method public stop()V
    .locals 1

    .line 407
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaController2Provider;->stop_impl()V

    .line 408
    return-void
.end method

.method public updatePlaylistMetadata(Landroid/media/MediaMetadata2;)V
    .locals 1
    .param p1, "metadata"    # Landroid/media/MediaMetadata2;

    .line 728
    iget-object v0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaController2Provider;->updatePlaylistMetadata_impl(Landroid/media/MediaMetadata2;)V

    .line 729
    return-void
.end method
