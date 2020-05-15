.class public Lcom/android/server/wifi/WifiMulticastLockManager;
.super Ljava/lang/Object;
.source "WifiMulticastLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;,
        Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiMulticastLockManager"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mFilterController:Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mVerboseLoggingEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;Lcom/android/internal/app/IBatteryStats;)V
    .locals 1
    .param p1, "filterController"    # Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastEnabled:I

    .line 40
    iput v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastDisabled:I

    .line 41
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mVerboseLoggingEnabled:Z

    .line 55
    iput-object p2, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 56
    iput-object p1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mFilterController:Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiMulticastLockManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMulticastLockManager;

    .line 36
    iget-object v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiMulticastLockManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMulticastLockManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiMulticastLockManager;->removeMulticasterLocked(II)V

    return-void
.end method

.method private removeMulticasterLocked(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "uid"    # I

    .line 171
    iget-object v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;

    .line 173
    .local v0, "removed":Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->unlinkDeathRecipient()V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mFilterController:Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;

    invoke-interface {v1}, Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;->startFilteringMulticastPackets()V

    .line 180
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 182
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 183
    :catch_0
    move-exception v3

    .line 185
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    nop

    .line 187
    return-void
.end method


# virtual methods
.method public acquireLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    monitor-enter v0

    .line 136
    :try_start_0
    iget v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastEnabled:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastEnabled:I

    .line 137
    iget-object v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    new-instance v2, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;-><init>(Lcom/android/server/wifi/WifiMulticastLockManager;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mFilterController:Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;

    invoke-interface {v1}, Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;->stopFilteringMulticastPackets()V

    .line 143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 146
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 148
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v0}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 149
    :catch_0
    move-exception v3

    .line 151
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    nop

    .line 153
    return-void

    .line 143
    .end local v0    # "uid":I
    .end local v1    # "ident":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMulticastEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMulticastDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v0, "Multicast Locks held:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;

    .line 104
    .local v1, "l":Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 106
    .end local v1    # "l":Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;
    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method protected enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 110
    if-lez p1, :cond_0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mVerboseLoggingEnabled:Z

    goto :goto_0

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mVerboseLoggingEnabled:Z

    .line 115
    :goto_0
    return-void
.end method

.method public initializeFiltering()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    monitor-exit v0

    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mFilterController:Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;

    invoke-interface {v1}, Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;->startFilteringMulticastPackets()V

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseLock()V
    .locals 6

    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 158
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 159
    :try_start_0
    iget v2, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastDisabled:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastDisabled:I

    .line 160
    iget-object v2, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 161
    .local v2, "size":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 162
    iget-object v4, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;

    .line 163
    .local v4, "m":Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->getUid()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 164
    invoke-direct {p0, v3, v0}, Lcom/android/server/wifi/WifiMulticastLockManager;->removeMulticasterLocked(II)V

    .line 161
    .end local v4    # "m":Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 167
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_1
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
