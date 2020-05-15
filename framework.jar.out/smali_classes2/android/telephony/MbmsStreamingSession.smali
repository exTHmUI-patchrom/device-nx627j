.class public Landroid/telephony/MbmsStreamingSession;
.super Ljava/lang/Object;
.source "MbmsStreamingSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MbmsStreamingSession"

.field public static final MBMS_STREAMING_SERVICE_ACTION:Ljava/lang/String; = "android.telephony.action.EmbmsStreaming"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MBMS_STREAMING_SERVICE_OVERRIDE_METADATA:Ljava/lang/String; = "mbms-streaming-service-override"

.field private static sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

.field private mKnownActiveStreamingServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/mbms/StreamingService;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/telephony/mbms/vendor/IMbmsStreamingService;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsStreamingSessionCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "subscriptionId"    # I
    .param p4, "callback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    new-instance v0, Landroid/telephony/MbmsStreamingSession$1;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsStreamingSession$1;-><init>(Landroid/telephony/MbmsStreamingSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 85
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    .line 93
    iput-object p1, p0, Landroid/telephony/MbmsStreamingSession;->mContext:Landroid/content/Context;

    .line 94
    iput p3, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    .line 95
    new-instance v0, Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-direct {v0, p4, p2}, Landroid/telephony/mbms/InternalStreamingSessionCallback;-><init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    .line 96
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 52
    sget-object v0, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/MbmsStreamingSession;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/telephony/MbmsStreamingSession;)Landroid/telephony/mbms/InternalStreamingSessionCallback;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/MbmsStreamingSession;

    .line 52
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/telephony/MbmsStreamingSession;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/MbmsStreamingSession;

    .line 52
    iget v0, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    return v0
.end method

.method static synthetic access$400(Landroid/telephony/MbmsStreamingSession;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/MbmsStreamingSession;

    .line 52
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$500(Landroid/telephony/MbmsStreamingSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/MbmsStreamingSession;

    .line 52
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private bindAndInitialize()I
    .locals 3

    .line 289
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mContext:Landroid/content/Context;

    const-string v1, "android.telephony.action.EmbmsStreaming"

    new-instance v2, Landroid/telephony/MbmsStreamingSession$3;

    invoke-direct {v2, p0}, Landroid/telephony/MbmsStreamingSession$3;-><init>(Landroid/telephony/MbmsStreamingSession;)V

    invoke-static {v0, v1, v2}, Landroid/telephony/mbms/MbmsUtils;->startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsStreamingSessionCallback;)Landroid/telephony/MbmsStreamingSession;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "subscriptionId"    # I
    .param p3, "callback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    .line 125
    sget-object v0, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Landroid/telephony/MbmsStreamingSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/MbmsStreamingSession;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsStreamingSessionCallback;)V

    .line 131
    .local v0, "session":Landroid/telephony/MbmsStreamingSession;
    invoke-direct {v0}, Landroid/telephony/MbmsStreamingSession;->bindAndInitialize()I

    move-result v2

    .line 132
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 133
    sget-object v3, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 134
    new-instance v1, Landroid/telephony/MbmsStreamingSession$2;

    invoke-direct {v1, p3, v2}, Landroid/telephony/MbmsStreamingSession$2;-><init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 140
    const/4 v1, 0x0

    return-object v1

    .line 142
    :cond_0
    return-object v0

    .line 126
    .end local v0    # "session":Landroid/telephony/MbmsStreamingSession;
    .end local v2    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create two instances of MbmsStreamingSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsStreamingSessionCallback;)Landroid/telephony/MbmsStreamingSession;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    .line 151
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/MbmsStreamingSession;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsStreamingSessionCallback;)Landroid/telephony/MbmsStreamingSession;

    move-result-object v0

    return-object v0
.end method

.method private sendErrorToApp(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 346
    :try_start_0
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 350
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .local v2, "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    if-nez v2, :cond_0

    .line 183
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 184
    sget-object v1, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 185
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    .line 173
    return-void

    .line 175
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    invoke-interface {v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->dispose(I)V

    .line 176
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/mbms/StreamingService;

    .line 177
    .local v4, "s":Landroid/telephony/mbms/StreamingService;
    invoke-virtual {v4}, Landroid/telephony/mbms/StreamingService;->getCallback()Landroid/telephony/mbms/InternalStreamingServiceCallback;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->stop()V

    .line 178
    .end local v4    # "s":Landroid/telephony/mbms/StreamingService;
    goto :goto_0

    .line 179
    :cond_1
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    goto :goto_1

    .line 183
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 184
    sget-object v1, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 185
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    throw v2

    .line 180
    :catch_0
    move-exception v2

    .line 183
    :goto_1
    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 184
    sget-object v1, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 185
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    .line 186
    nop

    .line 187
    return-void
.end method

.method public onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V
    .locals 1
    .param p1, "service"    # Landroid/telephony/mbms/StreamingService;

    .line 285
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method public requestUpdateStreamingServices(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p1, "serviceClassList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 205
    .local v0, "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    if-eqz v0, :cond_2

    .line 209
    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    invoke-interface {v0, v2, p1}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->requestUpdateStreamingServices(ILjava/util/List;)I

    move-result v2

    .line 211
    .local v2, "returnCode":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 216
    if-eqz v2, :cond_0

    .line 217
    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 224
    .end local v2    # "returnCode":I
    :cond_0
    goto :goto_0

    .line 213
    .restart local v2    # "returnCode":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/MbmsStreamingSession;->close()V

    .line 214
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v2    # "returnCode":I
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MbmsStreamingSession"

    const-string v4, "Remote process died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 222
    sget-object v3, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 223
    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 225
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 206
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startStreaming(Landroid/telephony/mbms/StreamingServiceInfo;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/StreamingServiceCallback;)Landroid/telephony/mbms/StreamingService;
    .locals 9
    .param p1, "serviceInfo"    # Landroid/telephony/mbms/StreamingServiceInfo;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/mbms/StreamingServiceCallback;

    .line 248
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 249
    .local v0, "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    if-eqz v0, :cond_2

    .line 253
    new-instance v1, Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-direct {v1, p3, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback;-><init>(Landroid/telephony/mbms/StreamingServiceCallback;Ljava/util/concurrent/Executor;)V

    move-object v7, v1

    .line 256
    .local v7, "serviceCallback":Landroid/telephony/mbms/InternalStreamingServiceCallback;
    new-instance v8, Landroid/telephony/mbms/StreamingService;

    iget v2, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    move-object v1, v8

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Landroid/telephony/mbms/StreamingService;-><init>(ILandroid/telephony/mbms/vendor/IMbmsStreamingService;Landroid/telephony/MbmsStreamingSession;Landroid/telephony/mbms/StreamingServiceInfo;Landroid/telephony/mbms/InternalStreamingServiceCallback;)V

    .line 258
    .local v1, "serviceForApp":Landroid/telephony/mbms/StreamingService;
    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    .line 262
    invoke-virtual {p1}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-interface {v0, v3, v4, v7}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I

    move-result v3

    .line 263
    .local v3, "returnCode":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 268
    if-eqz v3, :cond_0

    .line 269
    invoke-direct {p0, v3, v2}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 270
    return-object v2

    .line 278
    .end local v3    # "returnCode":I
    :cond_0
    nop

    .line 280
    return-object v1

    .line 265
    .restart local v3    # "returnCode":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/MbmsStreamingSession;->close()V

    .line 266
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Middleware must not return an unknown error code"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v3    # "returnCode":I
    :catch_0
    move-exception v3

    .line 273
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "MbmsStreamingSession"

    const-string v5, "Remote process died"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 275
    sget-object v4, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 276
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 277
    return-object v2

    .line 250
    .end local v1    # "serviceForApp":Landroid/telephony/mbms/StreamingService;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v7    # "serviceCallback":Landroid/telephony/mbms/InternalStreamingServiceCallback;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
