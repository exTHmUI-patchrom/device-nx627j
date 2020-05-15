.class public Landroid/service/trust/TrustAgentService;
.super Landroid/app/Service;
.source "TrustAgentService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;,
        Landroid/service/trust/TrustAgentService$ConfigurationData;,
        Landroid/service/trust/TrustAgentService$TokenState;,
        Landroid/service/trust/TrustAgentService$GrantTrustFlags;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final EXTRA_TOKEN_HANDLE:Ljava/lang/String; = "token_handle"

.field private static final EXTRA_TOKEN_REMOVED_RESULT:Ljava/lang/String; = "token_removed_result"

.field private static final EXTRA_TOKEN_STATE:Ljava/lang/String; = "token_state"

.field private static final EXTRA_USER_HANDLE:Ljava/lang/String; = "user_handle"

.field public static final FLAG_GRANT_TRUST_DISMISS_KEYGUARD:I = 0x2

.field public static final FLAG_GRANT_TRUST_INITIATED_BY_USER:I = 0x1

.field private static final MSG_CONFIGURE:I = 0x2

.field private static final MSG_DEVICE_LOCKED:I = 0x4

.field private static final MSG_DEVICE_UNLOCKED:I = 0x5

.field private static final MSG_ESCROW_TOKEN_ADDED:I = 0x7

.field private static final MSG_ESCROW_TOKEN_REMOVED:I = 0x9

.field private static final MSG_ESCROW_TOKEN_STATE_RECEIVED:I = 0x8

.field private static final MSG_TRUST_TIMEOUT:I = 0x3

.field private static final MSG_UNLOCK_ATTEMPT:I = 0x1

.field private static final MSG_UNLOCK_LOCKOUT:I = 0x6

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.trust.TrustAgentService"

.field public static final TOKEN_STATE_ACTIVE:I = 0x1

.field public static final TOKEN_STATE_INACTIVE:I = 0x0

.field public static final TRUST_AGENT_META_DATA:Ljava/lang/String; = "android.service.trust.trustagent"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mManagingTrust:Z

.field private mPendingGrantTrustTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/trust/TrustAgentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    .line 184
    new-instance v0, Landroid/service/trust/TrustAgentService$1;

    invoke-direct {v0, p0}, Landroid/service/trust/TrustAgentService$1;-><init>(Landroid/service/trust/TrustAgentService;)V

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;

    .line 80
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;
    .locals 1
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;

    .line 80
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object v0
.end method

.method static synthetic access$102(Landroid/service/trust/TrustAgentService;Landroid/service/trust/ITrustAgentServiceCallback;)Landroid/service/trust/ITrustAgentServiceCallback;
    .locals 0
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;
    .param p1, "x1"    # Landroid/service/trust/ITrustAgentServiceCallback;

    .line 80
    iput-object p1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object p1
.end method

.method static synthetic access$200(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;

    .line 80
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/trust/TrustAgentService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;

    .line 80
    iget-boolean v0, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    return v0
.end method

.method static synthetic access$600(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;

    .line 80
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Landroid/service/trust/TrustAgentService;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Landroid/service/trust/TrustAgentService;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 80
    iput-object p1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method private onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 339
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method


# virtual methods
.method public final addEscrowToken([BLandroid/os/UserHandle;)V
    .locals 3
    .param p1, "token"    # [B
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 479
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 485
    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/service/trust/ITrustAgentServiceCallback;->addEscrowToken([BI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    goto :goto_0

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "calling addEscrowToken"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 489
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 490
    return-void

    .line 481
    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 489
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final grantTrust(Ljava/lang/CharSequence;JI)V
    .locals 8
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "durationMs"    # J
    .param p4, "flags"    # I

    .line 401
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_0
    iget-boolean v1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 408
    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3, p4}, Landroid/service/trust/ITrustAgentServiceCallback;->grantTrust(Ljava/lang/CharSequence;JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :goto_0
    goto :goto_1

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "calling enableTrust()"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 415
    :cond_0
    new-instance v1, Landroid/service/trust/TrustAgentService$2;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/service/trust/TrustAgentService$2;-><init>(Landroid/service/trust/TrustAgentService;Ljava/lang/CharSequence;JI)V

    iput-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    .line 422
    :goto_1
    monitor-exit v0

    .line 423
    return-void

    .line 403
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot grant trust if agent is not managing trust. Call setManagingTrust(true) first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 422
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final grantTrust(Ljava/lang/CharSequence;JZ)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "durationMs"    # J
    .param p4, "initiatedByUser"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JI)V

    .line 382
    return-void
.end method

.method public final isEscrowTokenActive(JLandroid/os/UserHandle;)V
    .locals 3
    .param p1, "handle"    # J
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 502
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 508
    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/service/trust/ITrustAgentServiceCallback;->isEscrowTokenActive(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    goto :goto_0

    .line 509
    :catch_0
    move-exception v1

    .line 510
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "calling isEscrowTokenActive"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 512
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 513
    return-void

    .line 504
    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 512
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 594
    new-instance v0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;-><init>(Landroid/service/trust/TrustAgentService;Landroid/service/trust/TrustAgentService$1;)V

    return-object v0
.end method

.method public onConfigure(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;)Z"
        }
    .end annotation

    .line 353
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 5

    .line 244
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 245
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/service/trust/TrustAgentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 248
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const-string v2, "android.permission.BIND_TRUST_AGENT"

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_0

    .line 249
    .restart local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not declared with the permission \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android.permission.BIND_TRUST_AGENT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get ServiceInfo for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method

.method public onDeviceLocked()V
    .locals 0

    .line 282
    return-void
.end method

.method public onDeviceUnlockLockout(J)V
    .locals 0
    .param p1, "timeoutMs"    # J

    .line 304
    return-void
.end method

.method public onDeviceUnlocked()V
    .locals 0

    .line 289
    return-void
.end method

.method public onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    .locals 0
    .param p1, "token"    # [B
    .param p2, "handle"    # J
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 316
    return-void
.end method

.method public onEscrowTokenRemoved(JZ)V
    .locals 0
    .param p1, "handle"    # J
    .param p3, "successful"    # Z

    .line 336
    return-void
.end method

.method public onEscrowTokenStateReceived(JI)V
    .locals 0
    .param p1, "handle"    # J
    .param p3, "tokenState"    # I

    .line 326
    return-void
.end method

.method public onTrustTimeout()V
    .locals 0

    .line 275
    return-void
.end method

.method public onUnlockAttempt(Z)V
    .locals 0
    .param p1, "successful"    # Z

    .line 265
    return-void
.end method

.method public final removeEscrowToken(JLandroid/os/UserHandle;)V
    .locals 3
    .param p1, "handle"    # J
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 525
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 531
    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/service/trust/ITrustAgentServiceCallback;->removeEscrowToken(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    goto :goto_0

    .line 532
    :catch_0
    move-exception v1

    .line 533
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "callling removeEscrowToken"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 535
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 536
    return-void

    .line 527
    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 535
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final revokeTrust()V
    .locals 3

    .line 429
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 431
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    .line 433
    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 435
    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentServiceCallback;->revokeTrust()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    goto :goto_0

    .line 436
    :catch_0
    move-exception v1

    .line 437
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "calling revokeTrust()"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 440
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 441
    return-void

    .line 440
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final setManagingTrust(Z)V
    .locals 3
    .param p1, "managingTrust"    # Z

    .line 452
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-boolean v1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    if-eq v1, p1, :cond_0

    .line 454
    iput-boolean p1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    .line 455
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 457
    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentServiceCallback;->setManagingTrust(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    goto :goto_0

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "calling setManagingTrust()"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 463
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 575
    if-eqz p1, :cond_1

    .line 578
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 584
    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentServiceCallback;->showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    goto :goto_0

    .line 585
    :catch_0
    move-exception v1

    .line 586
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "calling showKeyguardErrorMessage"

    invoke-direct {p0, v2}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 588
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 589
    return-void

    .line 580
    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot show message because service is not connected to framework."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trust agent is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 588
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 576
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "message cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unlockUserWithToken(J[BLandroid/os/UserHandle;)V
    .locals 4
    .param p1, "handle"    # J
    .param p3, "token"    # [B
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 547
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/service/trust/TrustAgentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 548
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0, p4}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v2, "User already unlocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-void

    .line 553
    :cond_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_0
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 559
    :try_start_1
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, p2, p3, v3}, Landroid/service/trust/ITrustAgentServiceCallback;->unlockUserWithToken(J[BI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    goto :goto_0

    .line 560
    :catch_0
    move-exception v2

    .line 561
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "calling unlockUserWithToken"

    invoke-direct {p0, v3}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 563
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1

    .line 564
    return-void

    .line 555
    :cond_1
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v3, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Trust agent is not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 563
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
