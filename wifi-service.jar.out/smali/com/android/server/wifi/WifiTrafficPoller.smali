.class public Lcom/android/server/wifi/WifiTrafficPoller;
.super Ljava/lang/Object;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;
    }
.end annotation


# static fields
.field private static final ADD_CLIENT:I = 0x3

.field private static final DBG:Z = false

.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final REMOVE_CLIENT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiTrafficPoller"

.field private static final TRAFFIC_STATS_POLL:I = 0x2


# instance fields
.field private final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mDataActivity:I

.field private mEnableTrafficStatsPoll:Z

.field private mInterface:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRxPkts:J

.field private mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTxPkts:J

.field private mVerboseLoggingEnabled:Z

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    .line 61
    iput v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    .line 70
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mVerboseLoggingEnabled:Z

    .line 81
    new-instance v0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    .line 82
    iput-object p3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiTrafficPoller$1;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .line 45
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .line 45
    invoke-direct {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->evaluateTrafficStatsPolling()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .line 45
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/WifiTrafficPoller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .line 45
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .line 45
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .line 45
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiTrafficPoller;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiTrafficPoller;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiTrafficPoller;->notifyOnDataActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    return-object v0
.end method

.method private evaluateTrafficStatsPolling()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-static {v0, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    goto :goto_0

    .line 201
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-static {v0, v3, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 204
    .restart local v0    # "msg":Landroid/os/Message;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    return-void
.end method

.method private notifyOnDataActivity(Ljava/lang/String;)V
    .locals 13
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 209
    iget-wide v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    .local v0, "preTxPkts":J
    iget-wide v2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    .line 210
    .local v2, "preRxPkts":J
    const/4 v4, 0x0

    .line 212
    .local v4, "dataActivity":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5, p1}, Lcom/android/server/wifi/WifiNative;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    .line 213
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5, p1}, Lcom/android/server/wifi/WifiNative;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    .line 222
    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-gtz v7, :cond_0

    cmp-long v7, v2, v5

    if-lez v7, :cond_5

    .line 223
    :cond_0
    iget-wide v7, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    sub-long/2addr v7, v0

    .line 224
    .local v7, "sent":J
    iget-wide v9, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    sub-long/2addr v9, v2

    .line 225
    .local v9, "received":J
    cmp-long v11, v7, v5

    if-lez v11, :cond_1

    .line 226
    or-int/lit8 v4, v4, 0x2

    .line 228
    :cond_1
    cmp-long v5, v9, v5

    if-lez v5, :cond_2

    .line 229
    or-int/lit8 v4, v4, 0x1

    .line 232
    :cond_2
    iget v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    if-eq v4, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 233
    iput v4, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    .line 234
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mVerboseLoggingEnabled:Z

    if-eqz v5, :cond_3

    .line 235
    const-string v5, "WifiTrafficPoller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifying of data activity "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    .line 236
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 235
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Messenger;

    .line 239
    .local v6, "client":Landroid/os/Messenger;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 240
    .local v11, "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v11, Landroid/os/Message;->what:I

    .line 241
    iget v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    iput v12, v11, Landroid/os/Message;->arg1:I

    .line 244
    :try_start_0
    invoke-virtual {v6}, Landroid/os/Messenger;->getPid()I

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v6}, Landroid/os/Messenger;->getPid()I

    move-result v12

    invoke-static {v12}, Landroid/os/Process;->isProcessFrozen(I)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_0

    .line 246
    :cond_4
    invoke-virtual {v6, v11}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_1

    .line 247
    :catch_0
    move-exception v12

    .line 251
    .end local v6    # "client":Landroid/os/Messenger;
    .end local v11    # "msg":Landroid/os/Message;
    :goto_1
    goto :goto_0

    .line 254
    .end local v7    # "sent":J
    .end local v9    # "received":J
    :cond_5
    return-void
.end method


# virtual methods
.method public addClient(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "client"    # Landroid/os/Messenger;

    .line 112
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableTrafficStatsPoll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrafficStatsPollToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 131
    if-lez p1, :cond_0

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mVerboseLoggingEnabled:Z

    goto :goto_0

    .line 134
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mVerboseLoggingEnabled:Z

    .line 136
    :goto_0
    return-void
.end method

.method public removeClient(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "client"    # Landroid/os/Messenger;

    .line 127
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void
.end method

.method setInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    iput-wide v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 122
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    .line 123
    return-void
.end method
