.class public abstract Landroid/media/session/MediaSession$Callback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private mMediaPlayPauseKeyPending:Z

.field private mSession:Landroid/media/session/MediaSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    return-void
.end method

.method static synthetic access$102(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession$Callback;
    .param p1, "x1"    # Landroid/media/session/MediaSession;

    .line 766
    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    return-object p1
.end method

.method static synthetic access$2802(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$CallbackMessageHandler;
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession$Callback;
    .param p1, "x1"    # Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 766
    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    return-object p1
.end method

.method static synthetic access$3100(Landroid/media/session/MediaSession$Callback;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession$Callback;

    .line 766
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    return-void
.end method

.method private handleMediaPlayPauseKeySingleTapIfPending()V
    .locals 11

    .line 886
    iget-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-nez v0, :cond_0

    .line 887
    return-void

    .line 889
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 890
    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    .line 891
    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v1}, Landroid/media/session/MediaSession;->access$300(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 892
    .local v1, "state":Landroid/media/session/PlaybackState;
    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    move-wide v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    .line 893
    .local v4, "validActions":J
    :goto_0
    const/4 v6, 0x1

    if-eqz v1, :cond_2

    .line 894
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v0

    .line 895
    .local v7, "isPlaying":Z
    :goto_1
    const-wide/16 v8, 0x204

    and-long/2addr v8, v4

    cmp-long v8, v8, v2

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    move v8, v0

    .line 897
    .local v8, "canPlay":Z
    :goto_2
    const-wide/16 v9, 0x202

    and-long/2addr v9, v4

    cmp-long v2, v9, v2

    if-eqz v2, :cond_4

    move v0, v6

    nop

    .line 899
    .local v0, "canPause":Z
    :cond_4
    if-eqz v7, :cond_5

    if-eqz v0, :cond_5

    .line 900
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    goto :goto_3

    .line 901
    :cond_5
    if-nez v7, :cond_6

    if-eqz v8, :cond_6

    .line 902
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 904
    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 786
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1047
    return-void
.end method

.method public onFastForward()V
    .locals 0

    .line 1008
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 12
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .line 802
    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_5

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    .line 803
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 804
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 805
    .local v0, "ke":Landroid/view/KeyEvent;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 806
    iget-object v2, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->access$300(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v2

    .line 807
    .local v2, "state":Landroid/media/session/PlaybackState;
    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v5

    .line 808
    .local v5, "validActions":J
    :goto_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x4f

    const-wide/16 v9, 0x20

    const/4 v11, 0x1

    if-eq v7, v8, :cond_1

    const/16 v8, 0x55

    if-eq v7, v8, :cond_1

    .line 832
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    .line 836
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    .end local v0    # "ke":Landroid/view/KeyEvent;
    .end local v2    # "state":Landroid/media/session/PlaybackState;
    .end local v5    # "validActions":J
    goto/16 :goto_2

    .line 844
    .restart local v0    # "ke":Landroid/view/KeyEvent;
    .restart local v2    # "state":Landroid/media/session/PlaybackState;
    .restart local v5    # "validActions":J
    :pswitch_0
    const-wide/16 v7, 0x2

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_5

    .line 845
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    .line 846
    return v11

    .line 838
    :pswitch_1
    const-wide/16 v7, 0x4

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_5

    .line 839
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 840
    return v11

    .line 868
    :pswitch_2
    const-wide/16 v7, 0x40

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_5

    .line 869
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    .line 870
    return v11

    .line 874
    :pswitch_3
    const-wide/16 v7, 0x8

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_5

    .line 875
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    .line 876
    return v11

    .line 856
    :pswitch_4
    const-wide/16 v7, 0x10

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_5

    .line 857
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    .line 858
    return v11

    .line 850
    :pswitch_5
    and-long v7, v5, v9

    cmp-long v3, v7, v3

    if-eqz v3, :cond_5

    .line 851
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    .line 852
    return v11

    .line 862
    :pswitch_6
    const-wide/16 v7, 0x1

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_5

    .line 863
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onStop()V

    .line 864
    return v11

    .line 811
    :cond_1
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 813
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    goto :goto_1

    .line 814
    :cond_2
    iget-boolean v7, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-eqz v7, :cond_3

    .line 816
    iget-object v7, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v8, 0x17

    invoke-virtual {v7, v8}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    .line 818
    iput-boolean v1, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 819
    and-long v7, v5, v9

    cmp-long v1, v7, v3

    if-eqz v1, :cond_4

    .line 820
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    goto :goto_1

    .line 823
    :cond_3
    iput-boolean v11, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 824
    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    iget-object v3, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    .line 825
    invoke-virtual {v3}, Landroid/media/session/MediaSession;->getCurrentControllerInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v3

    .line 826
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v7, v4

    .line 824
    invoke-static {v1, v3, p1, v7, v8}, Landroid/media/session/MediaSession;->access$400(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;J)V

    .line 828
    :cond_4
    :goto_1
    return v11

    .line 882
    .end local v0    # "ke":Landroid/view/KeyEvent;
    .end local v2    # "state":Landroid/media/session/PlaybackState;
    .end local v5    # "validActions":J
    :cond_5
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .line 990
    return-void
.end method

.method public onPlay()V
    .locals 0

    .line 955
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 971
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 964
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 977
    return-void
.end method

.method public onPrepare()V
    .locals 0

    .line 913
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 925
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 937
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 949
    return-void
.end method

.method public onRewind()V
    .locals 0

    .line 1014
    return-void
.end method

.method public onSeekTo(J)V
    .locals 0
    .param p1, "pos"    # J

    .line 1028
    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 0
    .param p1, "rating"    # Landroid/media/Rating;

    .line 1036
    return-void
.end method

.method public onSkipToNext()V
    .locals 0

    .line 996
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 0

    .line 1002
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 0
    .param p1, "id"    # J

    .line 984
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1020
    return-void
.end method
