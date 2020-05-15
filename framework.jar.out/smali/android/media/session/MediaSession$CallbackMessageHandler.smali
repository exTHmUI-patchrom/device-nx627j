.class Landroid/media/session/MediaSession$CallbackMessageHandler;
.super Landroid/os/Handler;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackMessageHandler"
.end annotation


# static fields
.field private static final MSG_ADJUST_VOLUME:I = 0x15

.field private static final MSG_COMMAND:I = 0x1

.field private static final MSG_CUSTOM_ACTION:I = 0x14

.field private static final MSG_FAST_FORWARD:I = 0x10

.field private static final MSG_MEDIA_BUTTON:I = 0x2

.field private static final MSG_NEXT:I = 0xe

.field private static final MSG_PAUSE:I = 0xc

.field private static final MSG_PLAY:I = 0x7

.field private static final MSG_PLAY_MEDIA_ID:I = 0x8

.field private static final MSG_PLAY_PAUSE_KEY_DOUBLE_TAP_TIMEOUT:I = 0x17

.field private static final MSG_PLAY_SEARCH:I = 0x9

.field private static final MSG_PLAY_URI:I = 0xa

.field private static final MSG_PREPARE:I = 0x3

.field private static final MSG_PREPARE_MEDIA_ID:I = 0x4

.field private static final MSG_PREPARE_SEARCH:I = 0x5

.field private static final MSG_PREPARE_URI:I = 0x6

.field private static final MSG_PREVIOUS:I = 0xf

.field private static final MSG_RATE:I = 0x13

.field private static final MSG_REWIND:I = 0x11

.field private static final MSG_SEEK_TO:I = 0x12

.field private static final MSG_SET_VOLUME:I = 0x16

.field private static final MSG_SKIP_TO_ITEM:I = 0xb

.field private static final MSG_STOP:I = 0xd


# instance fields
.field private mCallback:Landroid/media/session/MediaSession$Callback;

.field private mCurrentControllerInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

.field final synthetic this$0:Landroid/media/session/MediaSession;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSession;Landroid/os/Looper;Landroid/media/session/MediaSession$Callback;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/media/session/MediaSession$Callback;

    .line 1441
    iput-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    .line 1442
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1443
    iput-object p3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    .line 1444
    iget-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-static {p1, p0}, Landroid/media/session/MediaSession$Callback;->access$2802(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 1445
    return-void
.end method

.method static synthetic access$000(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 1413
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 1413
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCurrentControllerInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1460
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    iput-object v0, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCurrentControllerInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 1463
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1465
    .local v0, "obj":Ljava/lang/Object;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1544
    :pswitch_0
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-static {v1}, Landroid/media/session/MediaSession$Callback;->access$3100(Landroid/media/session/MediaSession$Callback;)V

    goto/16 :goto_0

    .line 1536
    :pswitch_1
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v1}, Landroid/media/session/MediaSession;->access$2900(Landroid/media/session/MediaSession;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1537
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->access$3000(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;

    move-result-object v2

    .line 1538
    .local v2, "vp":Landroid/media/VolumeProvider;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    if-eqz v2, :cond_0

    .line 1540
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/media/VolumeProvider;->onSetVolumeTo(I)V

    goto/16 :goto_0

    .line 1538
    .end local v2    # "vp":Landroid/media/VolumeProvider;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1528
    :pswitch_2
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v1}, Landroid/media/session/MediaSession;->access$2900(Landroid/media/session/MediaSession;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1529
    :try_start_2
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->access$3000(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;

    move-result-object v2

    .line 1530
    .restart local v2    # "vp":Landroid/media/VolumeProvider;
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1531
    if-eqz v2, :cond_0

    .line 1532
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/media/VolumeProvider;->onAdjustVolume(I)V

    goto/16 :goto_0

    .line 1530
    .end local v2    # "vp":Landroid/media/VolumeProvider;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1525
    :pswitch_3
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1526
    goto/16 :goto_0

    .line 1522
    :pswitch_4
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Landroid/media/Rating;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$Callback;->onSetRating(Landroid/media/Rating;)V

    .line 1523
    goto/16 :goto_0

    .line 1519
    :pswitch_5
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onSeekTo(J)V

    .line 1520
    goto/16 :goto_0

    .line 1516
    :pswitch_6
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    .line 1517
    goto/16 :goto_0

    .line 1513
    :pswitch_7
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    .line 1514
    goto/16 :goto_0

    .line 1510
    :pswitch_8
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    .line 1511
    goto/16 :goto_0

    .line 1507
    :pswitch_9
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    .line 1508
    goto/16 :goto_0

    .line 1504
    :pswitch_a
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onStop()V

    .line 1505
    goto/16 :goto_0

    .line 1501
    :pswitch_b
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onPause()V

    .line 1502
    goto/16 :goto_0

    .line 1498
    :pswitch_c
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onSkipToQueueItem(J)V

    .line 1499
    goto/16 :goto_0

    .line 1495
    :pswitch_d
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1496
    goto :goto_0

    .line 1492
    :pswitch_e
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1493
    goto :goto_0

    .line 1489
    :pswitch_f
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1490
    goto :goto_0

    .line 1486
    :pswitch_10
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 1487
    goto :goto_0

    .line 1483
    :pswitch_11
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1484
    goto :goto_0

    .line 1480
    :pswitch_12
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1481
    goto :goto_0

    .line 1477
    :pswitch_13
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSession$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1478
    goto :goto_0

    .line 1474
    :pswitch_14
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Callback;->onPrepare()V

    .line 1475
    goto :goto_0

    .line 1471
    :pswitch_15
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    move-object v2, v0

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    .line 1472
    goto :goto_0

    .line 1467
    :pswitch_16
    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaSession$Command;

    .line 1468
    .local v1, "cmd":Landroid/media/session/MediaSession$Command;
    iget-object v2, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v3, v1, Landroid/media/session/MediaSession$Command;->command:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/session/MediaSession$Command;->extras:Landroid/os/Bundle;

    iget-object v5, v1, Landroid/media/session/MediaSession$Command;->stub:Landroid/os/ResultReceiver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/session/MediaSession$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1469
    nop

    .line 1547
    .end local v1    # "cmd":Landroid/media/session/MediaSession$Command;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCurrentControllerInfo:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 1548
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public post(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V
    .locals 4
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "data"    # Landroid/os/Bundle;
    .param p5, "delayMs"    # J

    .line 1448
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1449
    .local v0, "objWithCaller":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/Object;>;"
    invoke-virtual {p0, p2, v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1450
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1451
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_0

    .line 1452
    invoke-virtual {p0, v1, p5, p6}, Landroid/media/session/MediaSession$CallbackMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1454
    :cond_0
    invoke-virtual {p0, v1}, Landroid/media/session/MediaSession$CallbackMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1456
    :goto_0
    return-void
.end method
