.class public abstract Landroid/content/AbstractThreadedSyncAdapter;
.super Ljava/lang/Object;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AbstractThreadedSyncAdapter$SyncThread;,
        Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ENABLE_LOG:Z

.field public static final LOG_SYNC_DETAILS:I = 0xab7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncAdapter"


# instance fields
.field private mAllowParallelSyncs:Z

.field private final mAutoInitialize:Z

.field private final mContext:Landroid/content/Context;

.field private final mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

.field private final mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mSyncThreadLock:Ljava/lang/Object;

.field private final mSyncThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/Account;",
            "Landroid/content/AbstractThreadedSyncAdapter$SyncThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 114
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "SyncAdapter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoInitialize"    # Z

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;ZZ)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoInitialize"    # Z
    .param p3, "allowParallelSyncs"    # Z

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    .line 154
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    .line 155
    new-instance v0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$1;)V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 157
    iput-boolean p2, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAutoInitialize:Z

    .line 158
    iput-boolean p3, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAllowParallelSyncs:Z

    .line 159
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 104
    sget-boolean v0, Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/content/AbstractThreadedSyncAdapter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;

    .line 104
    iget-boolean v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAllowParallelSyncs:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;
    .param p1, "x1"    # Landroid/content/ISyncAdapterUnsyncableAccountCallback;

    .line 104
    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter;->handleOnUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;

    .line 104
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;
    .param p1, "x1"    # Landroid/accounts/Account;

    .line 104
    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter;->toSyncKey(Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;

    .line 104
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;

    .line 104
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/AbstractThreadedSyncAdapter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;

    .line 104
    iget-boolean v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAutoInitialize:Z

    return v0
.end method

.method static synthetic access$600(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;

    .line 104
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private handleOnUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .locals 4
    .param p1, "cb"    # Landroid/content/ISyncAdapterUnsyncableAccountCallback;

    .line 397
    :try_start_0
    invoke-virtual {p0}, Landroid/content/AbstractThreadedSyncAdapter;->onUnsyncableAccount()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .local v0, "doSync":Z
    goto :goto_0

    .line 398
    .end local v0    # "doSync":Z
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SyncAdapter"

    const-string v2, "Exception while calling onUnsyncableAccount, assuming \'true\'"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    const/4 v0, 0x1

    .line 404
    .local v0, "doSync":Z
    :goto_0
    :try_start_1
    invoke-interface {p1, v0}, Landroid/content/ISyncAdapterUnsyncableAccountCallback;->onUnsyncableAccountDone(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 407
    goto :goto_1

    .line 405
    :catch_1
    move-exception v1

    .line 406
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SyncAdapter"

    const-string v3, "Could not report result of onUnsyncableAccount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private toSyncKey(Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;

    .line 166
    iget-boolean v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAllowParallelSyncs:Z

    if-eqz v0, :cond_0

    .line 167
    return-object p1

    .line 169
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getSyncAdapterBinder()Landroid/os/IBinder;
    .locals 1

    .line 386
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.end method

.method public onSecurityException(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "syncResult"    # Landroid/content/SyncResult;

    .line 464
    return-void
.end method

.method public onSyncCanceled()V
    .locals 3

    .line 476
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_0
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    .line 478
    .local v1, "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {v1}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->interrupt()V

    .line 482
    :cond_0
    return-void

    .line 478
    .end local v1    # "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSyncCanceled(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 494
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 495
    return-void
.end method

.method public onUnsyncableAccount()Z
    .locals 1

    .line 434
    const/4 v0, 0x1

    return v0
.end method
