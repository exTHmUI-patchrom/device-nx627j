.class public abstract Landroid/net/NetworkAgent;
.super Landroid/os/Handler;
.source "NetworkAgent.java"


# static fields
.field private static final BASE:I = 0x81000

.field private static final BW_REFRESH_MIN_WIN_MS:J = 0x1f4L

.field public static final CMD_PREVENT_AUTOMATIC_RECONNECT:I = 0x8100f

.field public static final CMD_REPORT_NETWORK_STATUS:I = 0x81007

.field public static final CMD_REQUEST_BANDWIDTH_UPDATE:I = 0x8100a

.field public static final CMD_SAVE_ACCEPT_UNVALIDATED:I = 0x81009

.field public static final CMD_SET_SIGNAL_STRENGTH_THRESHOLDS:I = 0x8100e

.field public static final CMD_START_PACKET_KEEPALIVE:I = 0x8100b

.field public static final CMD_STOP_PACKET_KEEPALIVE:I = 0x8100c

.field public static final CMD_SUSPECT_BAD:I = 0x81000

.field private static final DBG:Z = true

.field public static final EVENT_NETWORK_CAPABILITIES_CHANGED:I = 0x81002

.field public static final EVENT_NETWORK_INFO_CHANGED:I = 0x81001

.field public static final EVENT_NETWORK_PROPERTIES_CHANGED:I = 0x81003

.field public static final EVENT_NETWORK_SCORE_CHANGED:I = 0x81004

.field public static final EVENT_PACKET_KEEPALIVE:I = 0x8100d

.field public static final EVENT_SET_EXPLICITLY_SELECTED:I = 0x81008

.field public static final INVALID_NETWORK:I = 0x2

.field public static REDIRECT_URL_KEY:Ljava/lang/String; = null

.field public static final VALID_NETWORK:I = 0x1

.field private static final VDBG:Z = false

.field public static final WIFI_BASE_SCORE:I = 0x3c


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private volatile mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mContext:Landroid/content/Context;

.field private volatile mLastBwRefreshTime:J

.field private mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPollLceScheduled:Z

.field private final mPreConnectedQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final netId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    const-string/jumbo v0, "redirect URL"

    sput-object v0, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .locals 9
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "ni"    # Landroid/net/NetworkInfo;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "lp"    # Landroid/net/LinkProperties;
    .param p7, "score"    # I

    .line 196
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .locals 14
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "ni"    # Landroid/net/NetworkInfo;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "lp"    # Landroid/net/LinkProperties;
    .param p7, "score"    # I
    .param p8, "misc"    # Landroid/net/NetworkMisc;

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 201
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    .line 55
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    .line 57
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    .line 58
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, v0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 202
    move-object/from16 v4, p3

    iput-object v4, v0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    .line 203
    move-object/from16 v5, p2

    iput-object v5, v0, Landroid/net/NetworkAgent;->mContext:Landroid/content/Context;

    .line 204
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 209
    iget-object v6, v0, Landroid/net/NetworkAgent;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 211
    .local v6, "cm":Landroid/net/ConnectivityManager;
    new-instance v8, Landroid/os/Messenger;

    invoke-direct {v8, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v9, Landroid/net/NetworkInfo;

    invoke-direct {v9, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    new-instance v10, Landroid/net/LinkProperties;

    invoke-direct {v10, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v11, Landroid/net/NetworkCapabilities;

    invoke-direct {v11, v2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object v7, v6

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-virtual/range {v7 .. v13}, Landroid/net/ConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    move-result v7

    iput v7, v0, Landroid/net/NetworkAgent;->netId:I

    .line 213
    return-void

    .line 205
    .end local v6    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6
.end method

.method private queueOrSendMessage(III)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(IIILjava/lang/Object;)V

    .line 323
    return-void
.end method

.method private queueOrSendMessage(IIILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 326
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 327
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 328
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 329
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 330
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 331
    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(Landroid/os/Message;)V

    .line 332
    return-void
.end method

.method private queueOrSendMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Landroid/net/NetworkAgent;->queueOrSendMessage(IIILjava/lang/Object;)V

    .line 319
    return-void
.end method

.method private queueOrSendMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 335
    iget-object v0, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 339
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :goto_0
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public explicitlySelected(Z)V
    .locals 2
    .param p1, "acceptUnvalidated"    # Z

    .line 390
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x81008

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 391
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    .line 311
    :sswitch_0
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->preventAutomaticReconnect()V

    goto/16 :goto_4

    .line 299
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "thresholds"

    .line 300
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 303
    .local v0, "thresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    new-array v1, v1, [I

    .line 304
    .local v1, "intThresholds":[I
    nop

    .line 304
    .local v3, "i":I
    :goto_1
    move v2, v3

    .line 304
    .end local v3    # "i":I
    .local v2, "i":I
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 305
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 304
    add-int/lit8 v3, v2, 0x1

    .line 304
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 307
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Landroid/net/NetworkAgent;->setSignalStrengthThresholds([I)V

    .line 308
    goto/16 :goto_4

    .line 294
    .end local v0    # "thresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "intThresholds":[I
    :sswitch_2
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->stopPacketKeepalive(Landroid/os/Message;)V

    .line 295
    goto/16 :goto_4

    .line 290
    :sswitch_3
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->startPacketKeepalive(Landroid/os/Message;)V

    .line 291
    goto/16 :goto_4

    .line 256
    :sswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 260
    .local v0, "currentTimeMs":J
    iget-wide v4, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    .line 261
    iput-boolean v3, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    .line 262
    iget-object v3, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 263
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->pollLceData()V

    goto/16 :goto_4

    .line 267
    :cond_2
    iget-boolean v2, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    if-nez v2, :cond_6

    .line 268
    iget-wide v2, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    add-long/2addr v2, v6

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 270
    .local v2, "waitTime":J
    const v4, 0x8100a

    invoke-virtual {p0, v4, v2, v3}, Landroid/net/NetworkAgent;->sendEmptyMessageDelayed(IJ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    .line 272
    .end local v2    # "waitTime":J
    goto/16 :goto_4

    .line 286
    .end local v0    # "currentTimeMs":J
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Landroid/net/NetworkAgent;->saveAcceptUnvalidated(Z)V

    .line 287
    goto/16 :goto_4

    .line 277
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    sget-object v1, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "redirectUrl":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkAgent;->networkStatus(ILjava/lang/String;)V

    .line 283
    goto/16 :goto_4

    .line 252
    .end local v0    # "redirectUrl":Ljava/lang/String;
    :sswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled Message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    .line 253
    goto :goto_4

    .line 243
    :sswitch_8
    const-string v0, "NetworkAgent channel lost"

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->unwanted()V

    .line 246
    iget-object v0, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 247
    :try_start_0
    iput-object v1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 248
    monitor-exit v0

    .line 249
    goto :goto_4

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 239
    :sswitch_9
    iget-object v0, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_4

    .line 219
    :sswitch_a
    iget-object v0, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_4

    .line 220
    const-string v0, "Received new connection while already connected!"

    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 223
    :cond_4
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 224
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 225
    const v1, 0x11002

    invoke-virtual {v0, p1, v1, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 227
    iget-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 228
    :try_start_1
    iput-object v0, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 229
    iget-object v2, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 230
    .local v3, "m":Landroid/os/Message;
    invoke-virtual {v0, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 231
    .end local v3    # "m":Landroid/os/Message;
    goto :goto_3

    .line 232
    :cond_5
    iget-object v2, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 233
    monitor-exit v1

    .line 235
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    goto :goto_4

    .line 233
    .restart local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 315
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :cond_6
    :goto_4
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x11001 -> :sswitch_a
        0x11003 -> :sswitch_9
        0x11004 -> :sswitch_8
        0x81000 -> :sswitch_7
        0x81007 -> :sswitch_6
        0x81009 -> :sswitch_5
        0x8100a -> :sswitch_4
        0x8100b -> :sswitch_3
        0x8100c -> :sswitch_2
        0x8100e -> :sswitch_1
        0x8100f -> :sswitch_0
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 478
    iget-object v0, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method protected networkStatus(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;

    .line 428
    return-void
.end method

.method public onPacketKeepaliveEvent(II)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "reason"    # I

    .line 458
    const v0, 0x8100d

    invoke-direct {p0, v0, p1, p2}, Landroid/net/NetworkAgent;->queueOrSendMessage(III)V

    .line 459
    return-void
.end method

.method protected pollLceData()V
    .locals 0

    .line 406
    return-void
.end method

.method protected preventAutomaticReconnect()V
    .locals 0

    .line 475
    return-void
.end method

.method protected saveAcceptUnvalidated(Z)V
    .locals 0
    .param p1, "accept"    # Z

    .line 438
    return-void
.end method

.method public sendLinkProperties(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .line 348
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    const v1, 0x81003

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 349
    return-void
.end method

.method public sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 362
    iget-object v0, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    .line 364
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    const v1, 0x81002

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 366
    return-void
.end method

.method public sendNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 355
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    const v1, 0x81001

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 356
    return-void
.end method

.method public sendNetworkScore(I)V
    .locals 2
    .param p1, "score"    # I

    .line 372
    if-ltz p1, :cond_0

    .line 375
    const v0, 0x81004

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(III)V

    .line 376
    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Score must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setSignalStrengthThresholds([I)V
    .locals 0
    .param p1, "thresholds"    # [I

    .line 466
    return-void
.end method

.method protected startPacketKeepalive(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 444
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, -0x1e

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkAgent;->onPacketKeepaliveEvent(II)V

    .line 445
    return-void
.end method

.method protected stopPacketKeepalive(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 451
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, -0x1e

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkAgent;->onPacketKeepaliveEvent(II)V

    .line 452
    return-void
.end method

.method protected abstract unwanted()V
.end method
