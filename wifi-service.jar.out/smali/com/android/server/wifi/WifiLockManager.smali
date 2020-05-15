.class public Lcom/android/server/wifi/WifiLockManager;
.super Ljava/lang/Object;
.source "WifiLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiLockManager$WifiLock;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiLockManager"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private mVerboseLoggingEnabled:Z

.field private final mWifiLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/WifiLockManager$WifiLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiLockManager;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiLockManager;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->releaseLock(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized addLock(Lcom/android/server/wifi/WifiLockManager$WifiLock;)Z
    .locals 5
    .param p1, "lock"    # Lcom/android/server/wifi/WifiLockManager$WifiLock;

    monitor-enter p0

    .line 184
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "WifiLockManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiLockManager$WifiLock;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLockManager;->findLockByBinder(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 189
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 190
    const-string v0, "WifiLockManager"

    const-string v1, "attempted to add a lock when already holding one"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 195
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "lockAdded":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    .local v1, "ident":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p1, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    .line 201
    iget v3, p1, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mMode:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 206
    :pswitch_0
    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksAcquired:I

    .line 207
    goto :goto_0

    .line 209
    :pswitch_1
    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksAcquired:I

    goto :goto_0

    .line 203
    :pswitch_2
    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksAcquired:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    nop

    .line 212
    :goto_0
    const/4 v0, 0x1

    .line 215
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 213
    :catch_0
    move-exception v3

    .line 215
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 216
    :goto_1
    nop

    .line 217
    monitor-exit p0

    return v0

    .line 183
    .end local v0    # "lockAdded":Z
    .end local v1    # "ident":J
    .end local p1    # "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiLockManager;
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized findLockByBinder(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiLockManager$WifiLock;

    .line 264
    .local v1, "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLockManager$WifiLock;->getBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 265
    monitor-exit p0

    return-object v1

    .line 267
    .end local v1    # "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    :cond_0
    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 262
    .end local p1    # "binder":Landroid/os/IBinder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiLockManager;
    throw p1
.end method

.method private static isValidLockMode(I)Z
    .locals 2
    .param p0, "lockMode"    # I

    .line 175
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 178
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    return v0
.end method

.method private declared-synchronized releaseLock(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 230
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 231
    .local v0, "wifiLock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    if-nez v0, :cond_0

    .line 233
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 236
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 237
    const-string v1, "WifiLockManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 242
    .local v1, "ident":J
    const/4 v3, 0x1

    :try_start_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, v0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 243
    iget v4, v0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 248
    :pswitch_0
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksReleased:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksReleased:I

    .line 249
    goto :goto_0

    .line 251
    :pswitch_1
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksReleased:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksReleased:I

    goto :goto_0

    .line 245
    :pswitch_2
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksReleased:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksReleased:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    nop

    .line 256
    :goto_0
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 254
    :catch_0
    move-exception v4

    .line 256
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 257
    :goto_1
    nop

    .line 258
    monitor-exit p0

    return v3

    .line 229
    .end local v0    # "wifiLock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .end local v1    # "ident":J
    .end local p1    # "binder":Landroid/os/IBinder;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiLockManager;
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 221
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->findLockByBinder(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;

    move-result-object v0

    .line 222
    .local v0, "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiLockManager$WifiLock;->unlinkDeathRecipient()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    monitor-exit p0

    return-object v0

    .line 220
    .end local v0    # "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .end local p1    # "binder":Landroid/os/IBinder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiLockManager;
    throw p1
.end method


# virtual methods
.method public acquireWifiLock(ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    .locals 7
    .param p1, "lockMode"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "ws"    # Landroid/os/WorkSource;

    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lcom/android/server/wifi/WifiLockManager;->isValidLockMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    new-instance v0, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    move-object p4, v0

    .line 80
    :goto_1
    new-instance v6, Lcom/android/server/wifi/WifiLockManager$WifiLock;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiLockManager$WifiLock;-><init>(Lcom/android/server/wifi/WifiLockManager;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiLockManager;->addLock(Lcom/android/server/wifi/WifiLockManager$WifiLock;)Z

    move-result v0

    return v0

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized createMergedWorkSource()Landroid/os/WorkSource;
    .locals 4

    monitor-enter p0

    .line 122
    :try_start_0
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 123
    .local v0, "mergedWS":Landroid/os/WorkSource;
    iget-object v1, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiLockManager$WifiLock;

    .line 124
    .local v2, "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiLockManager$WifiLock;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v2    # "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    goto :goto_0

    .line 126
    :cond_0
    monitor-exit p0

    return-object v0

    .line 121
    .end local v0    # "mergedWS":Landroid/os/WorkSource;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiLockManager;
    throw v0
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locks acquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksAcquired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " full, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " full high perf, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksAcquired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " scan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locks released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksReleased:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " full, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksReleased:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " full high perf, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksReleased:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " scan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 279
    const-string v0, "Locks held:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiLockManager$WifiLock;

    .line 281
    .local v1, "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 283
    .end local v1    # "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method protected enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 287
    if-lez p1, :cond_0

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    goto :goto_0

    .line 290
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    .line 292
    :goto_0
    return-void
.end method

.method public declared-synchronized getStrongestLockMode()I
    .locals 2

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 107
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksAcquired:I

    iget v1, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksReleased:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v0, v1, :cond_1

    .line 108
    const/4 v0, 0x3

    monitor-exit p0

    return v0

    .line 111
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksAcquired:I

    iget v1, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksReleased:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-le v0, v1, :cond_2

    .line 112
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 115
    :cond_2
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiLockManager;
    throw v0
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 91
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->releaseLock(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->findLockByBinder(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;

    move-result-object v0

    .line 142
    .local v0, "wl":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    if-eqz v0, :cond_3

    .line 147
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_1

    .line 148
    :cond_1
    :goto_0
    new-instance v1, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    .line 151
    .local v1, "newWorkSource":Landroid/os/WorkSource;
    :goto_1
    nop

    .line 154
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_2

    .line 155
    const-string v2, "WifiLockManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWifiLockWakeSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", newWorkSource="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    .line 165
    iget-object v4, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, v0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 167
    iput-object v1, v0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 168
    :catch_0
    move-exception v4

    .line 170
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    :goto_2
    nop

    .line 172
    monitor-exit p0

    return-void

    .line 143
    .end local v1    # "newWorkSource":Landroid/os/WorkSource;
    .end local v2    # "ident":J
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wifi lock not active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    .end local v0    # "wl":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .end local p1    # "binder":Landroid/os/IBinder;
    .end local p2    # "ws":Landroid/os/WorkSource;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiLockManager;
    throw p1
.end method
