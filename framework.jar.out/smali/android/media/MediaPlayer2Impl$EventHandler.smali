.class Landroid/media/MediaPlayer2Impl$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer2Impl;

.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mp"    # Landroid/media/MediaPlayer2Impl;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 2770
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2771
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2772
    iput-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    .line 2773
    return-void
.end method

.method public static synthetic lambda$handleMessage$0(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;)V
    .locals 4
    .param p1, "cb"    # Landroid/util/Pair;
    .param p2, "dsd"    # Landroid/media/DataSourceDesc;

    .line 2824
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$1(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/MediaPlayer2Impl$DrmInfoImpl;)V
    .locals 3
    .param p1, "cb"    # Landroid/util/Pair;
    .param p2, "drmInfo"    # Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    .line 2862
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$DrmEventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2863
    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    .line 2862
    invoke-virtual {v0, v1, v2, p2}, Landroid/media/MediaPlayer2$DrmEventCallback;->onDrmInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;Landroid/media/MediaPlayer2$DrmInfo;)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$10(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedMetaData;)V
    .locals 3
    .param p1, "cb"    # Landroid/util/Pair;
    .param p2, "data"    # Landroid/media/TimedMetaData;

    .line 3095
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 3096
    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    .line 3095
    invoke-virtual {v0, v1, v2, p2}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;Landroid/media/TimedMetaData;)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$2(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;)V
    .locals 4
    .param p1, "cb"    # Landroid/util/Pair;
    .param p2, "dsd"    # Landroid/media/DataSourceDesc;

    .line 2886
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$3(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;I)V
    .locals 4
    .param p1, "cb"    # Landroid/util/Pair;
    .param p2, "percent"    # I

    .line 2920
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2921
    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    .line 2920
    const/16 v3, 0x2c0

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$4(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;I)V
    .locals 3
    .param p1, "cb"    # Landroid/util/Pair;
    .param p2, "nextDSD"    # Landroid/media/DataSourceDesc;
    .param p3, "percent"    # I

    .line 2928
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    const/16 v2, 0x2c0

    invoke-virtual {v0, v1, p2, v2, p3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$5(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V
    .locals 3
    .param p1, "cb"    # Landroid/util/Pair;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 2966
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2967
    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    .line 2966
    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onVideoSizeChanged(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$6(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V
    .locals 3
    .param p1, "cb"    # Landroid/util/Pair;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 2978
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2979
    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    .line 2978
    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onError(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$7(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;)V
    .locals 5
    .param p1, "cb"    # Landroid/util/Pair;

    .line 2980
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2981
    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    .line 2980
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$8(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V
    .locals 3
    .param p1, "cb"    # Landroid/util/Pair;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 3031
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 3032
    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    .line 3031
    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$9(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedText;)V
    .locals 3
    .param p1, "cb"    # Landroid/util/Pair;
    .param p2, "text"    # Landroid/media/TimedText;

    .line 3061
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onTimedText(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;Landroid/media/TimedText;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 2777
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/MediaPlayer2Impl$EventHandler;->handleMessage(Landroid/os/Message;J)V

    .line 2778
    return-void
.end method

.method public handleMessage(Landroid/os/Message;J)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "srcId"    # J

    .line 2781
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$3800(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2782
    const-string v0, "MediaPlayer2Impl"

    const-string/jumbo v1, "mediaplayer2 went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    return-void

    .line 2785
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2786
    .local v0, "what":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 2788
    .local v1, "extra":I
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xd2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x2710

    if-eq v2, v3, :cond_1c

    const/16 v3, -0x3f2

    const/16 v5, 0x64

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    .line 3121
    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    return-void

    .line 3085
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/Parcel;

    if-eqz v2, :cond_1

    .line 3086
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcel;

    .line 3087
    .local v2, "parcel":Landroid/os/Parcel;
    invoke-static {v2}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v4

    .line 3088
    .local v4, "data":Landroid/media/TimedMetaData;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3089
    .end local v2    # "parcel":Landroid/os/Parcel;
    goto :goto_0

    .line 3090
    .end local v4    # "data":Landroid/media/TimedMetaData;
    :cond_1
    nop

    .line 3090
    .restart local v4    # "data":Landroid/media/TimedMetaData;
    :goto_0
    move-object v2, v4

    .line 3093
    .end local v4    # "data":Landroid/media/TimedMetaData;
    .local v2, "data":Landroid/media/TimedMetaData;
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3094
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 3095
    .local v5, "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5DmGtkuYQXExyXOBI9Qvu64NQ68;

    invoke-direct {v7, p0, v5, v2}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5DmGtkuYQXExyXOBI9Qvu64NQ68;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedMetaData;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3097
    .end local v5    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    goto :goto_1

    .line 3098
    :cond_2
    monitor-exit v3

    .line 3099
    return-void

    .line 3098
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3069
    .end local v2    # "data":Landroid/media/TimedMetaData;
    :pswitch_1
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$5400(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2$OnSubtitleDataListener;

    move-result-object v2

    .line 3070
    .local v2, "onSubtitleDataListener":Landroid/media/MediaPlayer2$OnSubtitleDataListener;
    if-nez v2, :cond_3

    .line 3071
    return-void

    .line 3073
    :cond_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/Parcel;

    if-eqz v3, :cond_4

    .line 3074
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Parcel;

    .line 3075
    .local v3, "parcel":Landroid/os/Parcel;
    new-instance v4, Landroid/media/SubtitleData;

    invoke-direct {v4, v3}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 3076
    .local v4, "data":Landroid/media/SubtitleData;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 3077
    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-interface {v2, v5, v4}, Landroid/media/MediaPlayer2$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer2;Landroid/media/SubtitleData;)V

    .line 3079
    .end local v3    # "parcel":Landroid/os/Parcel;
    .end local v4    # "data":Landroid/media/SubtitleData;
    :cond_4
    return-void

    .line 2990
    .end local v2    # "onSubtitleDataListener":Landroid/media/MediaPlayer2$OnSubtitleDataListener;
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v2, v6, :cond_6

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_4

    .line 3003
    :pswitch_3
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3900(Landroid/media/MediaPlayer2Impl;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3009
    goto :goto_2

    .line 3004
    :catch_0
    move-exception v2

    .line 3005
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v5, v7, v3, v4}, Landroid/media/MediaPlayer2Impl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3008
    .local v3, "msg2":Landroid/os/Message;
    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer2Impl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3013
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "msg2":Landroid/os/Message;
    :goto_2
    :pswitch_4
    const/16 v2, 0x322

    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 3015
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3200(Landroid/media/MediaPlayer2Impl;)Landroid/media/SubtitleController;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3016
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3200(Landroid/media/MediaPlayer2Impl;)Landroid/media/SubtitleController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto :goto_4

    .line 3022
    :pswitch_5
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object v2

    .line 3023
    .local v2, "timeProvider":Landroid/media/MediaPlayer2Impl$TimeProvider;
    if-eqz v2, :cond_7

    .line 3024
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x2bd

    if-ne v3, v4, :cond_5

    goto :goto_3

    :cond_5
    move v7, v8

    :goto_3
    invoke-virtual {v2, v7}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onBuffering(Z)V

    .line 3024
    .end local v2    # "timeProvider":Landroid/media/MediaPlayer2Impl$TimeProvider;
    goto :goto_4

    .line 2998
    :pswitch_6
    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Info ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    goto :goto_4

    .line 2992
    :cond_6
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-nez v2, :cond_7

    .line 2993
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$1300(Landroid/media/MediaPlayer2Impl;)V

    .line 3029
    :cond_7
    :goto_4
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3030
    :try_start_2
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 3031
    .local v4, "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$iPmZQ0HxMVwbBcbhgpHbun3WGTk;

    invoke-direct {v6, p0, v4, v0, v1}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$iPmZQ0HxMVwbBcbhgpHbun3WGTk;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3033
    .end local v4    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    goto :goto_5

    .line 3034
    :cond_8
    monitor-exit v2

    .line 3036
    return-void

    .line 3034
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 2975
    :pswitch_7
    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2977
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2978
    .restart local v4    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5fCusDxj0OAxGzH6d86WnqVt8Rw;

    invoke-direct {v6, p0, v4, v0, v1}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5fCusDxj0OAxGzH6d86WnqVt8Rw;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2980
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$9rzGOSqsKQVeN_cdPvY8essrTyg;

    invoke-direct {v6, p0, v4}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$9rzGOSqsKQVeN_cdPvY8essrTyg;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2982
    .end local v4    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    goto :goto_6

    .line 2983
    :cond_9
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2984
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2, v8}, Landroid/media/MediaPlayer2Impl;->access$000(Landroid/media/MediaPlayer2Impl;Z)V

    .line 2985
    return-void

    .line 2983
    :catchall_2
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    .line 3051
    :pswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/Parcel;

    if-eqz v2, :cond_a

    .line 3052
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcel;

    .line 3053
    .local v2, "parcel":Landroid/os/Parcel;
    new-instance v3, Landroid/media/TimedText;

    invoke-direct {v3, v2}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    move-object v4, v3

    .line 3054
    .local v4, "text":Landroid/media/TimedText;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3055
    .end local v2    # "parcel":Landroid/os/Parcel;
    goto :goto_7

    .line 3056
    .end local v4    # "text":Landroid/media/TimedText;
    :cond_a
    nop

    .line 3056
    .restart local v4    # "text":Landroid/media/TimedText;
    :goto_7
    move-object v2, v4

    .line 3059
    .end local v4    # "text":Landroid/media/TimedText;
    .local v2, "text":Landroid/media/TimedText;
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3060
    :try_start_5
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 3061
    .restart local v5    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$sx24vrhw_-7V07cadDNXlQ5kv04;

    invoke-direct {v7, p0, v5, v2}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$sx24vrhw_-7V07cadDNXlQ5kv04;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedText;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3062
    .end local v5    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    goto :goto_8

    .line 3063
    :cond_b
    monitor-exit v3

    .line 3064
    return-void

    .line 3063
    :catchall_3
    move-exception v4

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v4

    .line 3041
    .end local v2    # "text":Landroid/media/TimedText;
    :pswitch_9
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object v2

    .line 3042
    .local v2, "timeProvider":Landroid/media/MediaPlayer2Impl$TimeProvider;
    if-eqz v2, :cond_c

    .line 3043
    invoke-virtual {v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onNotifyTime()V

    .line 3045
    :cond_c
    return-void

    .line 2896
    .end local v2    # "timeProvider":Landroid/media/MediaPlayer2Impl$TimeProvider;
    :pswitch_a
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object v2

    .line 2897
    .restart local v2    # "timeProvider":Landroid/media/MediaPlayer2Impl$TimeProvider;
    if-eqz v2, :cond_1b

    .line 2898
    invoke-virtual {v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onStopped()V

    goto/16 :goto_12

    .line 2906
    .end local v2    # "timeProvider":Landroid/media/MediaPlayer2Impl$TimeProvider;
    :pswitch_b
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object v2

    .line 2907
    .restart local v2    # "timeProvider":Landroid/media/MediaPlayer2Impl$TimeProvider;
    if-eqz v2, :cond_1b

    .line 2908
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_d

    goto :goto_9

    :cond_d
    move v7, v8

    :goto_9
    invoke-virtual {v2, v7}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onPaused(Z)V

    goto/16 :goto_12

    .line 2962
    .end local v2    # "timeProvider":Landroid/media/MediaPlayer2Impl$TimeProvider;
    :pswitch_c
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2963
    .local v2, "width":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 2964
    .local v3, "height":I
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2965
    :try_start_6
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 2966
    .local v6, "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$ALpPmFUNsJxKZK0N2HhQK6ZY4XM;

    invoke-direct {v8, p0, v6, v2, v3}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$ALpPmFUNsJxKZK0N2HhQK6ZY4XM;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2968
    .end local v6    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    goto :goto_a

    .line 2969
    :cond_e
    monitor-exit v5

    .line 2970
    return-void

    .line 2969
    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v4

    .line 2939
    .end local v2    # "width":I
    .end local v3    # "height":I
    :pswitch_d
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4100(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2940
    :try_start_7
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2941
    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl$Task;->access$4300(Landroid/media/MediaPlayer2Impl$Task;)I

    move-result v3

    const/16 v5, 0xe

    if-ne v3, v5, :cond_f

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2942
    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl$Task;->access$4500(Landroid/media/MediaPlayer2Impl$Task;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2943
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v3

    invoke-static {v3, v8}, Landroid/media/MediaPlayer2Impl$Task;->access$4600(Landroid/media/MediaPlayer2Impl$Task;I)V

    .line 2944
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3, v4}, Landroid/media/MediaPlayer2Impl;->access$4202(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl$Task;)Landroid/media/MediaPlayer2Impl$Task;

    .line 2945
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4700(Landroid/media/MediaPlayer2Impl;)V

    .line 2947
    :cond_f
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 2953
    :pswitch_e
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object v2

    .line 2954
    .local v2, "timeProvider":Landroid/media/MediaPlayer2Impl$TimeProvider;
    if-eqz v2, :cond_10

    .line 2955
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer2Impl;)V

    .line 2957
    :cond_10
    return-void

    .line 2947
    .end local v2    # "timeProvider":Landroid/media/MediaPlayer2Impl$TimeProvider;
    :catchall_5
    move-exception v3

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v3

    .line 2915
    :pswitch_f
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2916
    .local v2, "percent":I
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2917
    :try_start_9
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v4

    cmp-long v4, p2, v4

    if-nez v4, :cond_11

    .line 2918
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$5200(Landroid/media/MediaPlayer2Impl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2919
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 2920
    .restart local v5    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$Dr_ImxKsZcrvP7slv6KPxdUdzXk;

    invoke-direct {v7, p0, v5, v2}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$Dr_ImxKsZcrvP7slv6KPxdUdzXk;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2923
    .end local v5    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    goto :goto_b

    .line 2924
    :cond_11
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$1000(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v4

    cmp-long v4, p2, v4

    if-nez v4, :cond_12

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    .line 2925
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$5300(Landroid/media/MediaPlayer2Impl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2926
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/DataSourceDesc;

    .line 2927
    .local v4, "nextDSD":Landroid/media/DataSourceDesc;
    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 2928
    .restart local v6    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$hsCyoCNpv30l9tb7sOpVC4dnMy8;

    invoke-direct {v8, p0, v6, v4, v2}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$hsCyoCNpv30l9tb7sOpVC4dnMy8;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;I)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2931
    .end local v6    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    goto :goto_c

    .line 2933
    .end local v4    # "nextDSD":Landroid/media/DataSourceDesc;
    :cond_12
    monitor-exit v3

    .line 2934
    return-void

    .line 2933
    :catchall_6
    move-exception v4

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v4

    .line 2875
    .end local v2    # "percent":I
    :pswitch_10
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v2

    .line 2876
    .local v2, "dsd":Landroid/media/DataSourceDesc;
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$400(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 2877
    :try_start_a
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v3

    cmp-long v3, p2, v3

    if-nez v3, :cond_13

    .line 2878
    const-string v3, "MediaPlayer2Impl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEDIA_PLAYBACK_COMPLETE: srcId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", currentSrcId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2879
    invoke-static {v5}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", nextSrcId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5}, Landroid/media/MediaPlayer2Impl;->access$1000(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2878
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4000(Landroid/media/MediaPlayer2Impl;)V

    .line 2882
    :cond_13
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 2884
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2885
    :try_start_b
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 2886
    .restart local v5    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$SRqj_-_1CH9_ez58ikKgR8GPWEc;

    invoke-direct {v7, p0, v5, v2}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$SRqj_-_1CH9_ez58ikKgR8GPWEc;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2888
    .end local v5    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    goto :goto_d

    .line 2889
    :cond_14
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 2890
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3, v8}, Landroid/media/MediaPlayer2Impl;->access$000(Landroid/media/MediaPlayer2Impl;Z)V

    .line 2891
    return-void

    .line 2889
    :catchall_7
    move-exception v4

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v4

    .line 2882
    :catchall_8
    move-exception v3

    :try_start_d
    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v3

    .line 2792
    .end local v2    # "dsd":Landroid/media/DataSourceDesc;
    :pswitch_11
    :try_start_e
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$3900(Landroid/media/MediaPlayer2Impl;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    .line 2800
    goto :goto_e

    .line 2793
    :catch_1
    move-exception v2

    .line 2797
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v5, v7, v3, v4}, Landroid/media/MediaPlayer2Impl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2799
    .local v3, "msg2":Landroid/os/Message;
    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer2Impl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2803
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "msg2":Landroid/os/Message;
    :goto_e
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$400(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2804
    :try_start_f
    const-string v3, "MediaPlayer2Impl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MEDIA_PREPARED: srcId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", currentSrcId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2805
    invoke-static {v7}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", nextSrcId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v7}, Landroid/media/MediaPlayer2Impl;->access$1000(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2804
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v9

    cmp-long v3, p2, v9

    if-nez v3, :cond_15

    .line 2807
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v3

    .line 2808
    .local v3, "dsd":Landroid/media/DataSourceDesc;
    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5}, Landroid/media/MediaPlayer2Impl;->access$1300(Landroid/media/MediaPlayer2Impl;)V

    goto :goto_f

    .line 2809
    .end local v3    # "dsd":Landroid/media/DataSourceDesc;
    :cond_15
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2810
    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$1000(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v9

    cmp-long v3, p2, v9

    if-nez v3, :cond_16

    .line 2811
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/DataSourceDesc;

    .line 2812
    .restart local v3    # "dsd":Landroid/media/DataSourceDesc;
    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5, v6}, Landroid/media/MediaPlayer2Impl;->access$1102(Landroid/media/MediaPlayer2Impl;I)I

    .line 2813
    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5}, Landroid/media/MediaPlayer2Impl;->access$1200(Landroid/media/MediaPlayer2Impl;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2814
    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5}, Landroid/media/MediaPlayer2Impl;->access$4000(Landroid/media/MediaPlayer2Impl;)V

    goto :goto_f

    .line 2817
    .end local v3    # "dsd":Landroid/media/DataSourceDesc;
    :cond_16
    move-object v3, v4

    .line 2819
    .restart local v3    # "dsd":Landroid/media/DataSourceDesc;
    :cond_17
    :goto_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .line 2821
    if-eqz v3, :cond_19

    .line 2822
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2823
    :try_start_10
    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v5}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 2824
    .restart local v6    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/Executor;

    new-instance v9, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$a55WUDW_Ad0Vmi1x4yZhQXvPqdc;

    invoke-direct {v9, p0, v6, v3}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$a55WUDW_Ad0Vmi1x4yZhQXvPqdc;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;)V

    invoke-interface {v7, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2826
    .end local v6    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;>;"
    goto :goto_10

    .line 2827
    :cond_18
    monitor-exit v2

    goto :goto_11

    :catchall_9
    move-exception v4

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    throw v4

    .line 2829
    :cond_19
    :goto_11
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4100(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2830
    :try_start_11
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2831
    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl$Task;->access$4300(Landroid/media/MediaPlayer2Impl$Task;)I

    move-result v2

    const/4 v6, 0x6

    if-ne v2, v6, :cond_1a

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2832
    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl$Task;->access$4400(Landroid/media/MediaPlayer2Impl$Task;)Landroid/media/DataSourceDesc;

    move-result-object v2

    if-ne v2, v3, :cond_1a

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2833
    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl$Task;->access$4500(Landroid/media/MediaPlayer2Impl$Task;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2834
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/media/MediaPlayer2Impl$Task;->access$4600(Landroid/media/MediaPlayer2Impl$Task;I)V

    .line 2835
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2, v4}, Landroid/media/MediaPlayer2Impl;->access$4202(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl$Task;)Landroid/media/MediaPlayer2Impl$Task;

    .line 2836
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4700(Landroid/media/MediaPlayer2Impl;)V

    .line 2838
    :cond_1a
    monitor-exit v5

    .line 2839
    return-void

    .line 2838
    :catchall_a
    move-exception v2

    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    throw v2

    .line 2819
    .end local v3    # "dsd":Landroid/media/DataSourceDesc;
    :catchall_b
    move-exception v3

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    throw v3

    .line 3104
    :pswitch_12
    nop

    .line 3125
    :cond_1b
    :goto_12
    return-void

    .line 3109
    :cond_1c
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 3110
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$5500(Landroid/media/MediaPlayer2Impl;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    .line 3112
    :try_start_13
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$5500(Landroid/media/MediaPlayer2Impl;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 3113
    .local v4, "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    invoke-virtual {v4}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    .line 3114
    .end local v4    # "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    goto :goto_13

    .line 3115
    :cond_1d
    monitor-exit v2

    .line 3116
    return-void

    .line 3115
    :catchall_c
    move-exception v3

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    throw v3

    .line 2844
    :cond_1e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_1f

    .line 2845
    const-string v2, "MediaPlayer2Impl"

    const-string v3, "MEDIA_DRM_INFO msg.obj=NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 2846
    :cond_1f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/Parcel;

    if-eqz v2, :cond_23

    .line 2850
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$4800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2851
    :try_start_14
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4900(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 2852
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$4900(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->access$5000(Landroid/media/MediaPlayer2Impl$DrmInfoImpl;)Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    move-result-object v3

    move-object v4, v3

    .line 2852
    .local v4, "drmInfo":Landroid/media/MediaPlayer2Impl$DrmInfoImpl;
    goto :goto_14

    .line 2854
    .end local v4    # "drmInfo":Landroid/media/MediaPlayer2Impl$DrmInfoImpl;
    :cond_20
    nop

    .line 2854
    .restart local v4    # "drmInfo":Landroid/media/MediaPlayer2Impl$DrmInfoImpl;
    :goto_14
    move-object v3, v4

    .line 2856
    .end local v4    # "drmInfo":Landroid/media/MediaPlayer2Impl$DrmInfoImpl;
    .local v3, "drmInfo":Landroid/media/MediaPlayer2Impl$DrmInfoImpl;
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    .line 2859
    if-eqz v3, :cond_22

    .line 2860
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2861
    :try_start_15
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$5100(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 2862
    .local v5, "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$DrmEventCallback;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$XDpOSvYSapoVyl-BYW0W8pLfp3A;

    invoke-direct {v7, p0, v5, v3}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$XDpOSvYSapoVyl-BYW0W8pLfp3A;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/MediaPlayer2Impl$DrmInfoImpl;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2864
    .end local v5    # "cb":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$DrmEventCallback;>;"
    goto :goto_15

    .line 2865
    :cond_21
    monitor-exit v2

    goto :goto_16

    :catchall_d
    move-exception v4

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    throw v4

    .line 2867
    .end local v3    # "drmInfo":Landroid/media/MediaPlayer2Impl$DrmInfoImpl;
    :cond_22
    :goto_16
    goto :goto_17

    .line 2856
    :catchall_e
    move-exception v3

    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    throw v3

    .line 2868
    :cond_23
    const-string v2, "MediaPlayer2Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MEDIA_DRM_INFO msg.obj of unexpected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    :goto_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2bc
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x322
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
