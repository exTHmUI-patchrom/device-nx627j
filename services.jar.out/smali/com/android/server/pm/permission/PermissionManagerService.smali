.class public Lcom/android/server/pm/permission/PermissionManagerService;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final GRANT_DENIED:I = 0x1

.field private static final GRANT_INSTALL:I = 0x2

.field private static final GRANT_RUNTIME:I = 0x3

.field private static final GRANT_UPGRADE:I = 0x4

.field private static final MAX_PERMISSION_TREE_FOOTPRINT:I = 0x8000

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final UPDATE_PERMISSIONS_ALL:I = 0x1

.field private static final UPDATE_PERMISSIONS_REPLACE_ALL:I = 0x4

.field private static final UPDATE_PERMISSIONS_REPLACE_PKG:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field private final mGlobalGids:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPrivappPermissionsViolations:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/android/server/pm/permission/PermissionSettings;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUserManagerInt:Landroid/os/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Ljava/lang/Object;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultGrantCallback"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;
    .param p3, "externalLock"    # Ljava/lang/Object;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 148
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 149
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 150
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 151
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    .line 152
    new-instance v0, Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/permission/PermissionSettings;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 154
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PackageManager"

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 157
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    .line 158
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 160
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 161
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Lcom/android/server/pm/permission/PermissionManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 162
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 163
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    .line 164
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    .line 168
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v1

    .line 169
    .local v1, "permConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$PermissionEntry;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 170
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 171
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 172
    .local v5, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 173
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_0

    .line 174
    new-instance v7, Lcom/android/server/pm/permission/BasePermission;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v9, "android"

    invoke-direct {v7, v8, v9, v2}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v7

    .line 175
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 177
    :cond_0
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v7, :cond_1

    .line 178
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    iget-boolean v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;->setGids([IZ)V

    .line 170
    .end local v5    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    .end local v4    # "i":I
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    const-class v2, Lcom/android/server/pm/permission/PermissionManagerInternal;

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 185
    return-void

    .line 181
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 92
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # [I
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 92
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 92
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/util/Collection;
    .param p5, "x5"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 92
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/util/Collection;
    .param p4, "x4"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 92
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/pm/permission/PermissionManagerService;IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/util/Collection;
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 92
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;

    .line 92
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # I

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/pm/permission/PermissionManagerService;II)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllPermissionGroups(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 92
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 92
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 92
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Z

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Z

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Z

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PermissionInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 92
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method private addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 514
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 515
    .local v0, "N":I
    const/4 v1, 0x0

    .line 516
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 517
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 518
    .local v3, "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v5, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 519
    .local v4, "cur":Landroid/content/pm/PackageParser$PermissionGroup;
    if-nez v4, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    iget-object v5, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 520
    .local v5, "curPackageName":Ljava/lang/String;
    :goto_1
    iget-object v6, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 521
    .local v6, "isPackageUpdate":Z
    if-eqz v4, :cond_2

    if-eqz v6, :cond_1

    goto :goto_2

    .line 535
    :cond_1
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission group "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ignored: original from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    goto :goto_3

    .line 522
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v8, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    nop

    .line 516
    .end local v3    # "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v4    # "cur":Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v5    # "curPackageName":Ljava/lang/String;
    .end local v6    # "isPackageUpdate":Z
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 549
    .end local v2    # "i":I
    :cond_3
    nop

    .line 553
    return-void
.end method

.method private addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 476
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 477
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 478
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    .line 481
    .local v2, "p":Landroid/content/pm/PackageParser$Permission;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v4, v5

    iput v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    .line 483
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 488
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x16

    if-le v4, v5, :cond_0

    .line 489
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    iput-object v4, v2, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    .line 498
    :cond_0
    iget-boolean v4, v2, Landroid/content/pm/PackageParser$Permission;->tree:Z

    if-eqz v4, :cond_1

    .line 499
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 500
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionTreeLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 501
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v5

    .line 499
    invoke-static {v4, v2, p1, v5, p2}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 502
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionTreeLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 503
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_1

    .line 504
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 505
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 506
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v5

    .line 504
    invoke-static {v4, v2, p1, v5, p2}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 507
    .restart local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 509
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_1
    monitor-exit v3

    .line 477
    .end local v2    # "p":Landroid/content/pm/PackageParser$Permission;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    .restart local v2    # "p":Landroid/content/pm/PackageParser$Permission;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 511
    .end local v1    # "i":I
    .end local v2    # "p":Landroid/content/pm/PackageParser$Permission;
    :cond_2
    return-void
.end method

.method private addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .locals 9
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 610
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 613
    iget v0, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Label must be specified in permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 619
    .local v0, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 620
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 621
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 622
    .local v3, "added":Z
    :goto_1
    iget v4, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v4}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v4

    .line 623
    .local v4, "fixedLevel":I
    if-eqz v3, :cond_3

    .line 624
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V

    .line 625
    new-instance v5, Lcom/android/server/pm/permission/BasePermission;

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v5

    goto :goto_2

    .line 627
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 631
    :goto_2
    invoke-virtual {v2, v4, p1, v0}, Lcom/android/server/pm/permission/BasePermission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)Z

    move-result v5

    .line 632
    .local v5, "changed":Z
    if-eqz v3, :cond_4

    .line 633
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 635
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "fixedLevel":I
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    if-eqz v5, :cond_5

    if-eqz p3, :cond_5

    .line 637
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionChanged()V

    .line 639
    :cond_5
    return v3

    .line 628
    .end local v5    # "changed":Z
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "fixedLevel":I
    :cond_6
    :try_start_1
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 635
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "added":Z
    .end local v4    # "fixedLevel":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 611
    .end local v0    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant apps can\'t add permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I
    .locals 5
    .param p1, "protectionLevel"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 366
    and-int/lit8 v0, p1, 0x3

    .line 370
    .local v0, "protectionLevelMasked":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 371
    return p1

    .line 374
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 375
    .local v1, "appId":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_6

    if-eqz v1, :cond_6

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 380
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 381
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_2

    .line 382
    return p1

    .line 384
    :cond_2
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_3

    .line 385
    return v0

    .line 388
    :cond_3
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 389
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_4

    .line 390
    return p1

    .line 392
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 393
    return p1

    .line 395
    :cond_5
    return p1

    .line 377
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_6
    :goto_0
    return p1
.end method

.method private calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I
    .locals 4
    .param p1, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 2019
    const/4 v0, 0x0

    .line 2020
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 2021
    .local v2, "perm":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/BasePermission;->calculateFootprint(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2022
    .end local v2    # "perm":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_0

    .line 2023
    :cond_0
    return v0
.end method

.method private static canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z
    .locals 4
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "permission"    # Ljava/lang/String;

    .line 1243
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1244
    return v1

    .line 1248
    :cond_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1249
    .local v0, "granted":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 1253
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 1250
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested by package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be explicitly declared granted or not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 9
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 215
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 216
    return v1

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 220
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_5

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 221
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    return v1

    .line 224
    :cond_1
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 225
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2, p4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v3

    .line 226
    .local v3, "instantApp":Z
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 227
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 228
    if-eqz v3, :cond_3

    .line 229
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 230
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v7, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v7

    .line 231
    .local v7, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 232
    monitor-exit v5

    return v6

    .line 234
    .end local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 236
    :cond_3
    return v6

    .line 240
    :cond_4
    :goto_0
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    .line 241
    invoke-virtual {v4, v5, p4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 242
    return v6

    .line 246
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "instantApp":Z
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_5
    return v1
.end method

.method private checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .locals 8
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "uid"    # I
    .param p4, "callingUid"    # I

    .line 251
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 252
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 253
    invoke-virtual {v1, p4}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 254
    .local v1, "isCallerInstantApp":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 255
    invoke-virtual {v4, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 256
    .local v2, "isUidInstantApp":Z
    :goto_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 257
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v5, v4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_2

    .line 258
    return v6

    .line 261
    :cond_2
    if-eqz p2, :cond_8

    .line 262
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 263
    if-eqz v1, :cond_4

    .line 264
    return v6

    .line 266
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, p2, p4, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 267
    return v6

    .line 269
    :cond_4
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 270
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 271
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v5, p1, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 272
    if-eqz v2, :cond_5

    .line 273
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v7, p1}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionInstant(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 274
    return v3

    .line 277
    :cond_5
    return v3

    .line 281
    :cond_6
    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    .line 282
    invoke-virtual {v5, v7, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 283
    return v3

    .line 285
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_7
    goto :goto_2

    .line 286
    :cond_8
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 287
    .local v5, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_a

    .line 288
    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 289
    return v3

    .line 291
    :cond_9
    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    .line 292
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 293
    return v3

    .line 297
    .end local v5    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_a
    :goto_2
    return v6
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Ljava/lang/Object;)Lcom/android/server/pm/permission/PermissionManagerInternal;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultGrantCallback"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;
    .param p2, "externalLock"    # Ljava/lang/Object;

    .line 199
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerInternal;

    .line 200
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerInternal;

    .line 201
    .local v0, "permMgrInt":Lcom/android/server/pm/permission/PermissionManagerInternal;
    if-eqz v0, :cond_0

    .line 202
    return-object v0

    .line 204
    :cond_0
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Ljava/lang/Object;)V

    .line 205
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerInternal;

    return-object v1
.end method

.method private enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z
    .param p6, "message"    # Ljava/lang/String;

    .line 1994
    if-ltz p2, :cond_4

    .line 1997
    if-eqz p4, :cond_0

    .line 1998
    const-string/jumbo v0, "no_debugging_features"

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Ljava/lang/String;II)V

    .line 2001
    :cond_0
    if-nez p5, :cond_1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p2, v0, :cond_1

    return-void

    .line 2002
    :cond_1
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_3

    .line 2003
    if-eqz p3, :cond_2

    .line 2004
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2008
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2013
    goto :goto_0

    .line 2010
    :catch_0
    move-exception v0

    .line 2011
    .local v0, "se":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    .end local v0    # "se":Ljava/lang/SecurityException;
    :cond_3
    :goto_0
    return-void

    .line 1995
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 1975
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 1977
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1979
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1983
    :cond_1
    :goto_0
    return-void
.end method

.method private enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 2029
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 2030
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    .line 2031
    .local v0, "curTreeSize":I
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v1, v0

    const v2, 0x8000

    if-gt v1, v2, :cond_0

    .end local v0    # "curTreeSize":I
    goto :goto_0

    .line 2032
    .restart local v0    # "curTreeSize":I
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission tree size cap exceeded"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2035
    .end local v0    # "curTreeSize":I
    :cond_1
    :goto_0
    return-void
.end method

.method private getAllPermissionGroups(II)Ljava/util/List;
    .locals 6
    .param p1, "flags"    # I
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x0

    return-object v0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 317
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 319
    .local v2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 320
    .local v4, "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    invoke-static {v4, p1}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v4    # "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    goto :goto_0

    .line 322
    :cond_1
    monitor-exit v0

    return-object v2

    .line 323
    .end local v1    # "N":I
    .end local v2    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;

    .line 1679
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1680
    return-object v1

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1683
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1684
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 1685
    monitor-exit v0

    return-object v1

    .line 1687
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1688
    .end local v2    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 9
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 1693
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1694
    return v1

    .line 1697
    :cond_0
    const-string v0, "getPermissionFlags"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 1699
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getPermissionFlags"

    move-object v2, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1705
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1706
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1709
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1710
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1711
    monitor-exit v2

    return v1

    .line 1713
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1715
    return v1

    .line 1717
    :cond_3
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1718
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 1719
    .local v2, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v2, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 1713
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1707
    :cond_4
    :goto_0
    return v1
.end method

.method private getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callingUid"    # I

    .line 302
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x0

    return-object v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 307
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 306
    invoke-static {v1, p2}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .locals 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callingUid"    # I

    .line 328
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p4}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 329
    return-object v1

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 334
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_1

    .line 335
    monitor-exit v0

    return-object v1

    .line 337
    :cond_1
    nop

    .line 338
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v1

    .line 337
    invoke-direct {p0, v1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I

    move-result v1

    .line 339
    .local v1, "adjustedProtectionLevel":I
    invoke-virtual {v2, v1, p3}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 340
    .end local v1    # "adjustedProtectionLevel":I
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;
    .locals 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 346
    return-object v1

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    monitor-exit v0

    return-object v1

    .line 360
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 352
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    .local v1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 354
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 355
    .local v4, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v4, :cond_2

    .line 356
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_2
    goto :goto_0

    .line 359
    :cond_3
    monitor-exit v0

    return-object v1

    .line 360
    .end local v1    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 2046
    if-nez p0, :cond_0

    .line 2047
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 2049
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2050
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2051
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 2053
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    return-object v0

    .line 2056
    :cond_2
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private grantPermissions(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 38
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "replace"    # Z
    .param p3, "packageOfInterest"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    .line 678
    move-object/from16 v5, p4

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 679
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v6, :cond_0

    .line 680
    return-void

    .line 682
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->isLegacySystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    .line 684
    .local v7, "isLegacySystemApp":Z
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v8

    .line 685
    .local v8, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move-object v9, v8

    .line 687
    .local v9, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v10

    .line 689
    .local v10, "currentUserIds":[I
    const/4 v11, 0x0

    .line 690
    .local v11, "runtimePermissionsRevoked":Z
    sget-object v12, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 692
    .local v12, "updatedUserIds":[I
    const/4 v13, 0x0

    .line 694
    .local v13, "changedInstallPermission":Z
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 695
    invoke-virtual {v6, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V

    .line 696
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v14

    if-nez v14, :cond_1

    .line 697
    new-instance v14, Lcom/android/server/pm/permission/PermissionsState;

    invoke-direct {v14, v8}, Lcom/android/server/pm/permission/PermissionsState;-><init>(Lcom/android/server/pm/permission/PermissionsState;)V

    move-object v9, v14

    .line 698
    invoke-virtual {v8}, Lcom/android/server/pm/permission/PermissionsState;->reset()V

    goto :goto_0

    .line 705
    :cond_1
    iget-object v14, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 706
    nop

    .line 707
    :try_start_0
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v15

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 706
    invoke-direct {v1, v15, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I

    move-result-object v0

    move-object v12, v0

    .line 708
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 709
    const/4 v0, 0x1

    .line 711
    .end local v11    # "runtimePermissionsRevoked":Z
    .local v0, "runtimePermissionsRevoked":Z
    move v11, v0

    .end local v0    # "runtimePermissionsRevoked":Z
    .restart local v11    # "runtimePermissionsRevoked":Z
    :cond_2
    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 715
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    invoke-virtual {v8, v0}, Lcom/android/server/pm/permission/PermissionsState;->setGlobalGids([I)V

    .line 717
    iget-object v14, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 718
    :try_start_1
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    .line 719
    .local v0, "N":I
    move-object v15, v12

    const/4 v12, 0x0

    .local v12, "i":I
    .local v15, "updatedUserIds":[I
    :goto_1
    move/from16 v16, v11

    .end local v11    # "runtimePermissionsRevoked":Z
    .local v16, "runtimePermissionsRevoked":Z
    if-ge v12, v0, :cond_29

    .line 720
    :try_start_2
    iget-object v11, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 721
    .local v11, "permName":Ljava/lang/String;
    move/from16 v18, v0

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .end local v0    # "N":I
    .local v18, "N":I
    invoke-virtual {v0, v11}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 722
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    move-object/from16 v19, v11

    iget-object v11, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .end local v11    # "permName":Ljava/lang/String;
    .local v19, "permName":Ljava/lang/String;
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    move-object/from16 v20, v15

    const/16 v15, 0x17

    .end local v15    # "updatedUserIds":[I
    .local v20, "updatedUserIds":[I
    if-lt v11, v15, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    .line 729
    .local v11, "appSupportsRuntimePermissions":Z
    :goto_2
    if-eqz v0, :cond_27

    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v15

    if-nez v15, :cond_5

    .line 730
    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    const/4 v1, 0x0

    goto/16 :goto_1e

    .line 740
    :cond_5
    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    if-eqz v15, :cond_7

    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v15, :cond_7

    .line 745
    nop

    .line 719
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v19    # "permName":Ljava/lang/String;
    .local v27, "isLegacySystemApp":Z
    .local v31, "currentUserIds":[I
    .local v32, "ps":Lcom/android/server/pm/PackageSetting;
    :goto_3
    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    :cond_6
    :goto_4
    const/4 v1, 0x0

    goto/16 :goto_20

    .line 988
    .end local v12    # "i":I
    .end local v18    # "N":I
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    :catchall_1
    move-exception v0

    move-object v3, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    move/from16 v11, v16

    move-object/from16 v12, v20

    goto/16 :goto_27

    .line 748
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "i":I
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    :cond_7
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v15

    if-eqz v15, :cond_8

    if-nez v11, :cond_8

    .line 753
    goto :goto_3

    .line 756
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v15

    .line 757
    .local v15, "perm":Ljava/lang/String;
    const/16 v21, 0x0

    .line 758
    .local v21, "allowedSig":Z
    const/16 v22, 0x1

    .line 761
    .local v22, "grant":I
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    if-eqz v23, :cond_9

    .line 762
    :try_start_6
    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v15, v3}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    .line 988
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v22    # "grant":I
    :catchall_2
    move-exception v0

    move-object v3, v6

    move/from16 v27, v7

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v20    # "updatedUserIds":[I
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "runtimePermissionsRevoked":Z
    .local v12, "updatedUserIds":[I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    :goto_5
    move-object/from16 v31, v10

    goto/16 :goto_23

    .line 765
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .local v11, "appSupportsRuntimePermissions":Z
    .local v12, "i":I
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v20    # "updatedUserIds":[I
    .restart local v21    # "allowedSig":Z
    .restart local v22    # "grant":I
    :cond_9
    :goto_6
    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isNormal()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 767
    const/16 v22, 0x2

    .line 800
    .end local v22    # "grant":I
    .local v3, "grant":I
    :cond_a
    :goto_7
    move/from16 v3, v22

    goto :goto_8

    .line 768
    .end local v3    # "grant":I
    .restart local v22    # "grant":I
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    if-eqz v3, :cond_f

    .line 773
    if-nez v11, :cond_c

    :try_start_8
    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-nez v3, :cond_c

    .line 775
    const/16 v22, 0x2

    goto :goto_7

    .line 776
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_d

    .line 778
    const/16 v22, 0x4

    goto :goto_7

    .line 779
    :cond_d
    if-eqz v7, :cond_e

    .line 783
    const/16 v22, 0x4

    goto :goto_7

    .line 786
    :cond_e
    const/16 v22, 0x3

    goto :goto_7

    .line 788
    :cond_f
    :try_start_9
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isSignature()Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    if-eqz v3, :cond_a

    .line 790
    :try_start_a
    invoke-direct {v1, v15, v2, v0, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->grantSignaturePermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move/from16 v21, v3

    .line 791
    if-eqz v21, :cond_a

    .line 792
    const/16 v22, 0x2

    goto :goto_7

    .line 800
    .end local v22    # "grant":I
    .restart local v3    # "grant":I
    :goto_8
    const/4 v5, 0x1

    if-eq v3, v5, :cond_25

    .line 801
    :try_start_b
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    if-nez v5, :cond_10

    :try_start_c
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 804
    if-nez v21, :cond_10

    invoke-virtual {v9, v15}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 808
    invoke-direct {v1, v15, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->isNewPlatformPermissionForPackage(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-nez v5, :cond_10

    .line 809
    const/4 v3, 0x1

    .line 814
    :cond_10
    packed-switch v3, :pswitch_data_0

    .line 943
    move/from16 v25, v3

    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    .end local v3    # "grant":I
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .local v25, "grant":I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_6

    :try_start_d
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto/16 :goto_1c

    .line 912
    .end local v25    # "grant":I
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "grant":I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    :pswitch_0
    nop

    .line 913
    :try_start_e
    invoke-virtual {v9, v15}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 915
    .local v5, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v5, :cond_11

    :try_start_f
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v17
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_9

    :cond_11
    const/16 v17, 0x0

    :goto_9
    move/from16 v24, v17

    .line 917
    .local v24, "flags":I
    move/from16 v25, v3

    :try_start_10
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .end local v3    # "grant":I
    .restart local v25    # "grant":I
    move-object/from16 v26, v5

    const/4 v5, -0x1

    if-eq v3, v5, :cond_12

    .line 920
    .end local v5    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v26, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    move/from16 v27, v7

    const/4 v3, 0x0

    const/16 v7, 0xff

    :try_start_11
    invoke-virtual {v9, v0, v5, v7, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 922
    .end local v7    # "isLegacySystemApp":Z
    .restart local v27    # "isLegacySystemApp":Z
    const/4 v3, 0x1

    .line 927
    .end local v13    # "changedInstallPermission":Z
    .local v3, "changedInstallPermission":Z
    move v13, v3

    goto :goto_a

    .line 988
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "changedInstallPermission":Z
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v24    # "flags":I
    .end local v25    # "grant":I
    .end local v26    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v13    # "changedInstallPermission":Z
    :catchall_3
    move-exception v0

    move-object v3, v6

    goto/16 :goto_5

    .line 927
    .end local v27    # "isLegacySystemApp":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "i":I
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v21    # "allowedSig":Z
    .restart local v24    # "flags":I
    .restart local v25    # "grant":I
    .restart local v26    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_12
    move/from16 v27, v7

    .end local v7    # "isLegacySystemApp":Z
    .restart local v27    # "isLegacySystemApp":Z
    :goto_a
    move/from16 v3, v24

    and-int/lit8 v5, v3, 0x8

    .end local v24    # "flags":I
    .local v3, "flags":I
    if-nez v5, :cond_15

    .line 928
    :try_start_12
    array-length v5, v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    move/from16 v28, v13

    move-object/from16 v13, v20

    const/4 v7, 0x0

    .end local v20    # "updatedUserIds":[I
    .local v13, "updatedUserIds":[I
    .local v28, "changedInstallPermission":Z
    :goto_b
    if-ge v7, v5, :cond_14

    :try_start_13
    aget v17, v10, v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    move/from16 v29, v17

    .line 929
    .local v29, "userId":I
    move/from16 v30, v5

    move-object/from16 v31, v10

    move/from16 v5, v29

    :try_start_14
    invoke-virtual {v8, v0, v5}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .end local v10    # "currentUserIds":[I
    .end local v29    # "userId":I
    .local v5, "userId":I
    .restart local v31    # "currentUserIds":[I
    move-object/from16 v32, v6

    const/4 v6, -0x1

    if-eq v10, v6, :cond_13

    .line 932
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_15
    invoke-virtual {v8, v0, v5, v3, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 935
    invoke-static {v13, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    move-object v13, v6

    .end local v5    # "userId":I
    goto :goto_c

    .line 988
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "flags":I
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v25    # "grant":I
    .end local v26    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :catchall_4
    move-exception v0

    move-object v12, v13

    move/from16 v11, v16

    move/from16 v13, v28

    goto/16 :goto_1f

    .line 928
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "flags":I
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "i":I
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v21    # "allowedSig":Z
    .restart local v25    # "grant":I
    .restart local v26    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_13
    :goto_c
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v30

    move-object/from16 v10, v31

    move-object/from16 v6, v32

    goto :goto_b

    .line 988
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "flags":I
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v25    # "grant":I
    .end local v26    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_5
    move-exception v0

    move-object v3, v6

    move-object v12, v13

    move/from16 v11, v16

    move/from16 v13, v28

    move-object/from16 v5, p4

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_27

    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    :catchall_6
    move-exception v0

    move-object/from16 v31, v10

    move-object v3, v6

    move-object v12, v13

    move/from16 v11, v16

    move/from16 v13, v28

    move-object/from16 v5, p4

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_27

    .line 940
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "i":I
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v21    # "allowedSig":Z
    .restart local v25    # "grant":I
    :cond_14
    move-object/from16 v32, v6

    move-object/from16 v31, v10

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_d

    .line 988
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v25    # "grant":I
    .end local v28    # "changedInstallPermission":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    .local v13, "changedInstallPermission":Z
    .restart local v20    # "updatedUserIds":[I
    :catchall_7
    move-exception v0

    move-object/from16 v31, v10

    move/from16 v28, v13

    move-object v3, v6

    move/from16 v11, v16

    move-object/from16 v12, v20

    move-object/from16 v5, p4

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .end local v13    # "changedInstallPermission":Z
    .restart local v28    # "changedInstallPermission":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_27

    .line 940
    .end local v28    # "changedInstallPermission":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "i":I
    .restart local v13    # "changedInstallPermission":Z
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v21    # "allowedSig":Z
    .restart local v25    # "grant":I
    :cond_15
    move-object/from16 v32, v6

    move-object/from16 v31, v10

    move/from16 v28, v13

    move-object/from16 v13, v20

    .line 719
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .end local v20    # "updatedUserIds":[I
    .local v13, "updatedUserIds":[I
    .restart local v28    # "changedInstallPermission":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_d
    move-object v15, v13

    move/from16 v13, v28

    goto/16 :goto_18

    .line 841
    .end local v25    # "grant":I
    .end local v27    # "isLegacySystemApp":Z
    .end local v28    # "changedInstallPermission":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v3, "grant":I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .local v13, "changedInstallPermission":Z
    .restart local v20    # "updatedUserIds":[I
    :pswitch_1
    move/from16 v25, v3

    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    .end local v3    # "grant":I
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .restart local v25    # "grant":I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_16
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    array-length v5, v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    move-object/from16 v7, v20

    const/4 v6, 0x0

    .end local v20    # "updatedUserIds":[I
    .local v7, "updatedUserIds":[I
    :goto_e
    if-ge v6, v5, :cond_21

    :try_start_17
    aget v10, v3, v6

    .line 842
    .local v10, "userId":I
    nop

    .line 843
    invoke-virtual {v9, v15, v10}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v20

    move-object/from16 v33, v20

    .line 844
    .local v33, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    move-object/from16 v34, v3

    move-object/from16 v3, v33

    if-eqz v3, :cond_16

    .line 845
    .end local v33    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v3, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v20

    goto :goto_f

    :cond_16
    const/16 v20, 0x0

    .line 846
    .local v20, "flags":I
    :goto_f
    invoke-virtual {v9, v15, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 854
    and-int/lit8 v22, v20, 0x8

    if-eqz v22, :cond_17

    const/16 v22, 0x1

    goto :goto_10

    :cond_17
    const/16 v22, 0x0

    .line 856
    .local v22, "revokeOnUpgrade":Z
    :goto_10
    if-eqz v22, :cond_18

    .line 857
    and-int/lit8 v20, v20, -0x9

    .line 859
    invoke-static {v7, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v23

    move-object/from16 v7, v23

    .line 862
    :cond_18
    move-object/from16 v35, v3

    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .end local v3    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v35, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    iget-boolean v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v3, :cond_1a

    if-nez v22, :cond_19

    goto :goto_11

    .line 873
    :cond_19
    move/from16 v36, v5

    goto :goto_12

    .line 863
    :cond_1a
    :goto_11
    invoke-virtual {v8, v0, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v3

    move/from16 v36, v5

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1b

    .line 867
    invoke-static {v7, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .end local v7    # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    goto :goto_13

    .line 873
    .end local v3    # "updatedUserIds":[I
    .restart local v7    # "updatedUserIds":[I
    :cond_1b
    :goto_12
    move-object v3, v7

    .end local v7    # "updatedUserIds":[I
    .restart local v3    # "updatedUserIds":[I
    :goto_13
    :try_start_18
    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v5, :cond_1c

    if-eqz v11, :cond_1c

    and-int/lit8 v5, v20, 0x40

    if-eqz v5, :cond_1c

    .line 877
    and-int/lit8 v5, v20, -0x41

    .line 879
    .end local v20    # "flags":I
    .local v5, "flags":I
    invoke-static {v3, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    move-object v3, v7

    .line 882
    .end local v22    # "revokeOnUpgrade":Z
    move/from16 v20, v5

    .line 906
    .end local v5    # "flags":I
    .local v3, "flags":I
    .restart local v7    # "updatedUserIds":[I
    :cond_1c
    :goto_14
    move-object v7, v3

    goto :goto_16

    .line 988
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "updatedUserIds":[I
    .end local v10    # "userId":I
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v25    # "grant":I
    .end local v35    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v3, "updatedUserIds":[I
    :catchall_8
    move-exception v0

    move-object v12, v3

    goto/16 :goto_1b

    .line 882
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v3, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v7    # "updatedUserIds":[I
    .restart local v10    # "userId":I
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "i":I
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v20    # "flags":I
    .restart local v21    # "allowedSig":Z
    .restart local v25    # "grant":I
    :cond_1d
    move-object/from16 v35, v3

    move/from16 v36, v5

    .end local v3    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v35    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :try_start_19
    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v3, :cond_20

    if-nez v11, :cond_20

    .line 890
    const-string v3, "android"

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 891
    and-int/lit8 v3, v20, 0x40

    if-nez v3, :cond_1e

    .line 892
    or-int/lit8 v3, v20, 0x40

    .line 894
    .end local v20    # "flags":I
    .local v3, "flags":I
    invoke-static {v7, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 898
    .end local v7    # "updatedUserIds":[I
    .local v5, "updatedUserIds":[I
    move/from16 v20, v3

    goto :goto_15

    .end local v3    # "flags":I
    .end local v5    # "updatedUserIds":[I
    .restart local v7    # "updatedUserIds":[I
    .restart local v20    # "flags":I
    :cond_1e
    move-object v5, v7

    .end local v7    # "updatedUserIds":[I
    .restart local v5    # "updatedUserIds":[I
    :goto_15
    :try_start_1a
    invoke-virtual {v8, v0, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_1f

    .line 901
    invoke-static {v5, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .end local v5    # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    goto :goto_14

    .line 906
    .end local v3    # "updatedUserIds":[I
    .restart local v5    # "updatedUserIds":[I
    :cond_1f
    move-object v7, v5

    goto :goto_16

    .line 988
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v10    # "userId":I
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v20    # "flags":I
    .end local v21    # "allowedSig":Z
    .end local v25    # "grant":I
    .end local v35    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :catchall_9
    move-exception v0

    move-object v12, v5

    goto :goto_1b

    .line 906
    .end local v5    # "updatedUserIds":[I
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v3, "flags":I
    .restart local v7    # "updatedUserIds":[I
    .restart local v10    # "userId":I
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "i":I
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v21    # "allowedSig":Z
    .restart local v25    # "grant":I
    .restart local v35    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_20
    :goto_16
    move/from16 v3, v20

    :try_start_1b
    invoke-virtual {v8, v0, v10, v3, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 841
    .end local v3    # "flags":I
    .end local v10    # "userId":I
    .end local v35    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v34

    move/from16 v5, v36

    goto/16 :goto_e

    .line 908
    :cond_21
    nop

    .line 719
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "updatedUserIds":[I
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v25    # "grant":I
    .local v15, "updatedUserIds":[I
    :cond_22
    :goto_17
    move-object v15, v7

    :goto_18
    const/4 v1, 0x0

    goto/16 :goto_21

    .line 820
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v3, "grant":I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v7, "isLegacySystemApp":Z
    .local v10, "currentUserIds":[I
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .local v15, "perm":Ljava/lang/String;
    .restart local v19    # "permName":Ljava/lang/String;
    .local v20, "updatedUserIds":[I
    .restart local v21    # "allowedSig":Z
    :pswitch_2
    move/from16 v25, v3

    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    .end local v3    # "grant":I
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .restart local v25    # "grant":I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_1c
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    array-length v5, v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    move-object/from16 v7, v20

    const/4 v6, 0x0

    .end local v20    # "updatedUserIds":[I
    .local v7, "updatedUserIds":[I
    :goto_19
    if-ge v6, v5, :cond_24

    :try_start_1d
    aget v10, v3, v6

    .line 821
    .local v10, "userId":I
    invoke-virtual {v9, v15, v10}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v17

    if-eqz v17, :cond_23

    .line 824
    invoke-virtual {v9, v0, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 825
    move-object/from16 v37, v3

    const/4 v1, 0x0

    const/16 v3, 0xff

    invoke-virtual {v9, v0, v10, v3, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 828
    invoke-static {v7, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    move-object v7, v1

    .end local v10    # "userId":I
    goto :goto_1a

    .line 820
    :cond_23
    move-object/from16 v37, v3

    :goto_1a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v37

    move-object/from16 v1, p0

    goto :goto_19

    .line 988
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v25    # "grant":I
    :catchall_a
    move-exception v0

    move-object v12, v7

    .end local v7    # "updatedUserIds":[I
    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "runtimePermissionsRevoked":Z
    .local v12, "updatedUserIds":[I
    :goto_1b
    move/from16 v11, v16

    goto/16 :goto_1f

    .line 833
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "updatedUserIds":[I
    .local v11, "appSupportsRuntimePermissions":Z
    .local v12, "i":I
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v21    # "allowedSig":Z
    .restart local v25    # "grant":I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_24
    invoke-virtual {v8, v0}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    const/4 v3, -0x1

    if-eq v1, v3, :cond_22

    .line 835
    const/4 v1, 0x1

    .line 719
    .end local v13    # "changedInstallPermission":Z
    .local v1, "changedInstallPermission":Z
    move v13, v1

    goto :goto_17

    .line 944
    .end local v1    # "changedInstallPermission":Z
    .end local v7    # "updatedUserIds":[I
    .restart local v13    # "changedInstallPermission":Z
    .restart local v20    # "updatedUserIds":[I
    :goto_1c
    :try_start_1e
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_4

    .line 954
    .end local v25    # "grant":I
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v3, "grant":I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v7, "isLegacySystemApp":Z
    .local v10, "currentUserIds":[I
    :cond_25
    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v8, v0}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_26

    .line 957
    const/4 v1, 0x0

    const/16 v6, 0xff

    invoke-virtual {v8, v0, v5, v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 959
    const/4 v13, 0x1

    .line 960
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Un-granting permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (protectionLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " flags=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 963
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 960
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 965
    :cond_26
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    goto :goto_20

    .line 988
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "grant":I
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    :catchall_b
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v31, v10

    move-object v3, v6

    move/from16 v11, v16

    move-object/from16 v12, v20

    move-object/from16 v5, p4

    goto :goto_1d

    :catchall_c
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v31, v10

    move-object v3, v6

    move/from16 v11, v16

    move-object/from16 v12, v20

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v20    # "updatedUserIds":[I
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "runtimePermissionsRevoked":Z
    .local v12, "updatedUserIds":[I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_1d
    goto/16 :goto_27

    .line 730
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .local v11, "appSupportsRuntimePermissions":Z
    .local v12, "i":I
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v20    # "updatedUserIds":[I
    :cond_27
    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    const/4 v1, 0x0

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_1e
    if-eqz v4, :cond_28

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    goto :goto_20

    .line 988
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move/from16 v11, v16

    move-object/from16 v12, v20

    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v20    # "updatedUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "runtimePermissionsRevoked":Z
    .local v12, "updatedUserIds":[I
    :goto_1f
    move-object/from16 v3, v32

    goto :goto_24

    .line 719
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "runtimePermissionsRevoked":Z
    .local v12, "i":I
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v18    # "N":I
    .restart local v20    # "updatedUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_28
    :goto_20
    move-object/from16 v15, v20

    .end local v20    # "updatedUserIds":[I
    .local v15, "updatedUserIds":[I
    :goto_21
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v16

    move/from16 v0, v18

    move/from16 v7, v27

    move-object/from16 v10, v31

    move-object/from16 v6, v32

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    goto/16 :goto_1

    .line 988
    .end local v12    # "i":I
    .end local v18    # "N":I
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    :catchall_e
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v31, v10

    move-object/from16 v20, v15

    move-object v3, v6

    move/from16 v11, v16

    move-object/from16 v12, v20

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v15    # "updatedUserIds":[I
    .restart local v20    # "updatedUserIds":[I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_27

    .line 981
    .end local v20    # "updatedUserIds":[I
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v0, "N":I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .restart local v15    # "updatedUserIds":[I
    :cond_29
    move/from16 v18, v0

    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    move-object/from16 v20, v15

    .end local v0    # "N":I
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v15    # "updatedUserIds":[I
    .restart local v18    # "N":I
    .restart local v20    # "updatedUserIds":[I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_2b

    if-eqz p2, :cond_2a

    goto :goto_22

    .line 982
    :cond_2a
    move-object/from16 v3, v32

    goto :goto_25

    .line 981
    :cond_2b
    :goto_22
    move-object/from16 v3, v32

    :try_start_1f
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_2c

    .line 982
    :try_start_20
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    if-eqz v0, :cond_2d

    goto :goto_25

    .line 988
    .end local v18    # "N":I
    :catchall_f
    move-exception v0

    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v20    # "updatedUserIds":[I
    .restart local v11    # "runtimePermissionsRevoked":Z
    .local v12, "updatedUserIds":[I
    :goto_23
    move/from16 v11, v16

    move-object/from16 v12, v20

    :goto_24
    move-object/from16 v5, p4

    goto :goto_27

    .line 982
    .end local v11    # "runtimePermissionsRevoked":Z
    .end local v12    # "updatedUserIds":[I
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v18    # "N":I
    .restart local v20    # "updatedUserIds":[I
    :cond_2c
    :goto_25
    :try_start_21
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystem()Z

    move-result v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    if-eqz v0, :cond_2e

    .line 986
    :cond_2d
    const/4 v0, 0x1

    :try_start_22
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    .line 988
    .end local v18    # "N":I
    :cond_2e
    :try_start_23
    monitor-exit v14
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    .line 993
    move-object/from16 v5, p4

    if-eqz v5, :cond_2f

    .line 994
    move/from16 v11, v16

    move-object/from16 v12, v20

    invoke-virtual {v5, v12, v11}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    goto :goto_26

    .line 996
    :cond_2f
    move/from16 v11, v16

    move-object/from16 v12, v20

    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v20    # "updatedUserIds":[I
    .restart local v11    # "runtimePermissionsRevoked":Z
    .restart local v12    # "updatedUserIds":[I
    :goto_26
    return-void

    .line 988
    .end local v11    # "runtimePermissionsRevoked":Z
    .end local v12    # "updatedUserIds":[I
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v20    # "updatedUserIds":[I
    :catchall_10
    move-exception v0

    move/from16 v11, v16

    move-object/from16 v12, v20

    move-object/from16 v5, p4

    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v20    # "updatedUserIds":[I
    .restart local v11    # "runtimePermissionsRevoked":Z
    .restart local v12    # "updatedUserIds":[I
    goto :goto_27

    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    :catchall_11
    move-exception v0

    move-object v3, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    :goto_27
    :try_start_24
    monitor-exit v14
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_12

    throw v0

    :catchall_12
    move-exception v0

    goto :goto_27

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userIds"    # [I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 1322
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v8, p2, v1

    .line 1323
    .local v8, "userId":I
    move-object v2, p0

    move-object v3, p1

    move v4, v8

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissionsForUser(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1322
    .end local v8    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1326
    :cond_0
    return-void
.end method

.method private grantRequestedRuntimePermissionsForUser(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 21
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    .line 1330
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 1331
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_0

    .line 1332
    return-void

    .line 1335
    :cond_0
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v14

    .line 1337
    .local v14, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/16 v15, 0x14

    .line 1340
    .local v15, "immutableFlags":I
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move/from16 v16, v0

    .line 1343
    .local v16, "supportsRuntimePermissions":Z
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v11}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v17

    .line 1345
    .local v17, "instantApp":Z
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 1347
    .local v8, "permission":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1348
    :try_start_0
    iget-object v2, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    move-object v7, v2

    .line 1349
    .local v7, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    if-eqz v17, :cond_3

    .line 1351
    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_3
    if-nez v16, :cond_4

    .line 1352
    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_4
    if-eqz v12, :cond_5

    .line 1354
    invoke-static {v12, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1355
    :cond_5
    invoke-virtual {v14, v8, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v18

    .line 1356
    .local v18, "flags":I
    if-eqz v16, :cond_6

    .line 1358
    and-int/lit8 v1, v18, 0x14

    if-nez v1, :cond_7

    .line 1359
    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v1, v9

    move-object v2, v8

    move/from16 v5, p4

    move v6, v11

    move-object/from16 v19, v7

    move-object/from16 v7, p5

    .end local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v19, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    goto :goto_2

    .line 1362
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_6
    move-object/from16 v19, v7

    .end local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v1, :cond_7

    .line 1365
    and-int/lit8 v1, v18, 0x40

    if-eqz v1, :cond_7

    .line 1366
    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v4, 0x40

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, v8

    move/from16 v6, p4

    move v7, v11

    move-object/from16 v20, v8

    move-object/from16 v8, p5

    .end local v8    # "permission":Ljava/lang/String;
    .local v20, "permission":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1372
    .end local v18    # "flags":I
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v20    # "permission":Ljava/lang/String;
    :cond_7
    :goto_2
    goto :goto_1

    .line 1349
    .restart local v8    # "permission":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v8

    .end local v8    # "permission":Ljava/lang/String;
    .restart local v20    # "permission":Ljava/lang/String;
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1373
    .end local v20    # "permission":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 28
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p5

    .line 1377
    move-object/from16 v13, p6

    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v12}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1378
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    return-void

    .line 1382
    :cond_0
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v2, "grantRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "grantRuntimePermission"

    move-object v1, v9

    move/from16 v2, p4

    move v3, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1392
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    .line 1393
    .local v14, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v14, :cond_15

    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 1397
    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1398
    :try_start_0
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    move-object v15, v0

    .line 1399
    .local v15, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 1400
    if-eqz v15, :cond_14

    .line 1403
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v8, p4

    invoke-virtual {v0, v14, v8, v12}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1407
    invoke-virtual {v15, v14}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V

    .line 1413
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v0, v0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    const/16 v7, 0x17

    if-eqz v0, :cond_1

    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v7, :cond_1

    .line 1415
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1416
    return-void

    .line 1419
    :cond_1
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 1421
    .local v6, "uid":I
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1422
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 1424
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4, v10, v12}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v16

    .line 1426
    .local v16, "flags":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v2, v0

    .line 1428
    .local v2, "identity":J
    :try_start_1
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->nubia_replace_packages:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v0, :cond_2

    .line 1429
    move/from16 v0, v16

    .line 1430
    .local v0, "newFlags":I
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 1431
    and-int/lit8 v0, v0, -0x11

    .line 1432
    :try_start_2
    const-string v1, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide/from16 v18, v2

    :try_start_3
    const-string/jumbo v2, "zzw pms grantRuntimePermission update package = "

    .line 1432
    .end local v2    # "identity":J
    .local v18, "identity":J
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", permName = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1433
    const/16 v7, 0x10

    const/16 v20, 0x0

    move-object v1, v9

    move-wide/from16 v21, v18

    move-object v2, v10

    .line 1433
    .end local v18    # "identity":J
    .local v21, "identity":J
    move-object v3, v11

    move-object v9, v4

    move v4, v7

    .line 1433
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v9, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move-object v7, v5

    move v5, v0

    .line 1433
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    move/from16 v23, v6

    move v6, v8

    .line 1433
    .end local v6    # "uid":I
    .local v23, "uid":I
    move-object/from16 v24, v7

    move v7, v12

    .line 1433
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v24, "ps":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v8, v20

    :try_start_4
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1433
    .end local v0    # "newFlags":I
    goto :goto_0

    .line 1438
    :catchall_0
    move-exception v0

    move-object v7, v9

    move-wide/from16 v1, v21

    move/from16 v8, v23

    move-object/from16 v5, v24

    goto/16 :goto_8

    .line 1438
    .end local v9    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v21    # "identity":J
    .end local v23    # "uid":I
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "uid":I
    .restart local v18    # "identity":J
    :catchall_1
    move-exception v0

    move-object v7, v4

    move v8, v6

    move-wide/from16 v1, v18

    .line 1438
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "uid":I
    .end local v18    # "identity":J
    .restart local v9    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v21    # "identity":J
    .restart local v23    # "uid":I
    .restart local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_8

    .line 1438
    .end local v9    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v21    # "identity":J
    .end local v23    # "uid":I
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "identity":J
    .restart local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "uid":I
    :catchall_2
    move-exception v0

    move-wide v1, v2

    move-object v7, v4

    move v8, v6

    .line 1438
    .end local v2    # "identity":J
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "uid":I
    .restart local v9    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v21    # "identity":J
    .restart local v23    # "uid":I
    .restart local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_8

    .line 1438
    .end local v9    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v21    # "identity":J
    .end local v23    # "uid":I
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "identity":J
    .restart local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "uid":I
    :cond_2
    move-wide/from16 v21, v2

    move-object v9, v4

    move-object/from16 v24, v5

    move/from16 v23, v6

    .line 1438
    .end local v2    # "identity":J
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "uid":I
    .restart local v9    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v21    # "identity":J
    .restart local v23    # "uid":I
    .restart local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_0
    move-wide/from16 v1, v21

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1439
    .end local v21    # "identity":J
    .local v1, "identity":J
    nop

    .line 1441
    and-int/lit8 v0, v16, 0x10

    if-nez v0, :cond_12

    .line 1445
    if-nez p3, :cond_4

    and-int/lit8 v0, v16, 0x4

    if-nez v0, :cond_3

    goto :goto_1

    .line 1446
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot grant policy fixed permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1450
    :cond_4
    :goto_1
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_6

    .line 1453
    invoke-virtual {v9, v15}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 1455
    if-eqz v13, :cond_5

    .line 1456
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onInstallPermissionGranted()V

    .line 1459
    :cond_5
    return-void

    .line 1462
    :cond_6
    move-object/from16 v5, v24

    invoke-virtual {v5, v12}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    .line 1462
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_8

    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 1463
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot grant non-ephemeral permission"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_8
    :goto_2
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x17

    if-ge v0, v6, :cond_9

    .line 1468
    const-string v0, "PackageManager"

    const-string v4, "Cannot grant runtime permission to a legacy app"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    return-void

    .line 1472
    :cond_9
    invoke-virtual {v9, v15, v12}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v6

    .line 1473
    .local v6, "result":I
    if-eq v6, v4, :cond_11

    const/4 v0, 0x1

    if-eq v6, v0, :cond_a

    goto :goto_3

    .line 1479
    :cond_a
    if-eqz v13, :cond_b

    .line 1480
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v13, v0, v12}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onGidsChanged(II)V

    .line 1486
    :cond_b
    :goto_3
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1487
    const/16 v0, 0x4db

    move-object v7, v9

    move-object/from16 v4, p0

    invoke-direct {v4, v0, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1490
    :cond_c
    move-object v7, v9

    move-object/from16 v4, p0

    .line 1490
    .end local v9    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v7, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :goto_4
    if-eqz v13, :cond_d

    .line 1491
    move/from16 v8, v23

    invoke-virtual {v13, v8, v12}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionGranted(II)V

    goto :goto_5

    .line 1497
    :cond_d
    move/from16 v8, v23

    .line 1497
    .end local v23    # "uid":I
    .local v8, "uid":I
    :goto_5
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1498
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1499
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    move-wide/from16 v25, v17

    .line 1501
    .local v25, "token":J
    :try_start_5
    iget-object v0, v4, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v12}, Landroid/os/UserManagerInternal;->isUserInitialized(I)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_f

    .line 1502
    :try_start_6
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 1504
    .local v0, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-virtual {v0, v8, v11}, Landroid/os/storage/StorageManagerInternal;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1504
    .end local v0    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    goto :goto_6

    .line 1507
    :catchall_3
    move-exception v0

    move-wide/from16 v3, v25

    goto :goto_7

    :cond_f
    :goto_6
    move-wide/from16 v3, v25

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1508
    .end local v25    # "token":J
    .local v3, "token":J
    nop

    .line 1511
    .end local v3    # "token":J
    :cond_10
    return-void

    .line 1507
    .restart local v25    # "token":J
    :catchall_4
    move-exception v0

    move-wide/from16 v3, v25

    .line 1507
    .end local v25    # "token":J
    .restart local v3    # "token":J
    :goto_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1475
    .end local v3    # "token":J
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v8    # "uid":I
    .restart local v9    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v23    # "uid":I
    :cond_11
    move-object v7, v9

    move/from16 v8, v23

    .line 1475
    .end local v9    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v23    # "uid":I
    .restart local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v8    # "uid":I
    return-void

    .line 1442
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "result":I
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v8    # "uid":I
    .restart local v9    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v23    # "uid":I
    .restart local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_12
    move-object v7, v9

    move/from16 v8, v23

    move-object/from16 v5, v24

    .line 1442
    .end local v9    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v23    # "uid":I
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v8    # "uid":I
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot grant system fixed permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1438
    .end local v1    # "identity":J
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v8    # "uid":I
    .restart local v2    # "identity":J
    .restart local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v6, "uid":I
    :catchall_5
    move-exception v0

    move-wide v1, v2

    move-object v7, v4

    move v8, v6

    .line 1438
    .end local v2    # "identity":J
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v6    # "uid":I
    .restart local v1    # "identity":J
    .restart local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v8    # "uid":I
    :goto_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1404
    .end local v1    # "identity":J
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v8    # "uid":I
    .end local v16    # "flags":I
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1401
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1399
    .end local v15    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0

    .line 1394
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 20
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1289
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_0

    .line 1290
    return-void

    .line 1292
    :cond_0
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1293
    return-void

    .line 1295
    :cond_1
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1296
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 1297
    .local v9, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_9

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 1300
    :cond_2
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 1301
    .local v10, "disabledPs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->hasChildPackages()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    .line 1304
    :cond_3
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1305
    .local v11, "permCount":I
    const/4 v12, 0x0

    move v0, v12

    .local v0, "i":I
    :goto_0
    move v13, v0

    .end local v0    # "i":I
    .local v13, "i":I
    if-ge v13, v11, :cond_7

    .line 1306
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 1307
    .local v14, "permission":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v15

    .line 1308
    .local v15, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1309
    goto :goto_3

    .line 1311
    :cond_4
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v6

    array-length v5, v6

    move v4, v12

    :goto_1
    if-ge v4, v5, :cond_6

    aget v3, v6, v4

    .line 1312
    .local v3, "userId":I
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v0, v14, v3}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1313
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v14

    move/from16 v17, v3

    move/from16 v3, v16

    .end local v3    # "userId":I
    .local v17, "userId":I
    move/from16 v16, v4

    move/from16 v4, p2

    move/from16 v18, v5

    move/from16 v5, v17

    move-object/from16 v19, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .end local v17    # "userId":I
    goto :goto_2

    .line 1311
    :cond_5
    move/from16 v16, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    :goto_2
    add-int/lit8 v4, v16, 0x1

    move/from16 v5, v18

    move-object/from16 v6, v19

    goto :goto_1

    .line 1305
    .end local v14    # "permission":Ljava/lang/String;
    .end local v15    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_6
    :goto_3
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1318
    .end local v0    # "i":I
    :cond_7
    return-void

    .line 1302
    .end local v11    # "permCount":I
    :cond_8
    :goto_4
    return-void

    .line 1298
    .end local v10    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_9
    :goto_5
    return-void
.end method

.method private grantSignaturePermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z
    .locals 21
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p4, "origPermissions"    # Lcom/android/server/pm/permission/PermissionsState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1042
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isOEM()Z

    move-result v3

    .line 1043
    .local v3, "oemPermission":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v4

    .line 1044
    .local v4, "vendorPrivilegedPermission":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPrivileged()Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 1045
    .local v5, "privilegedPermission":Z
    :goto_1
    sget-boolean v8, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    .line 1047
    .local v8, "privappPermissionsDisable":Z
    const-string v9, "android"

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1048
    .local v9, "platformPermission":Z
    const-string v10, "android"

    iget-object v11, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1049
    .local v10, "platformPackage":Z
    if-nez v8, :cond_9

    if-eqz v5, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v11

    if-eqz v11, :cond_9

    if-nez v10, :cond_9

    if-eqz v9, :cond_9

    .line 1051
    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 1053
    iget-boolean v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-nez v11, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1055
    const/4 v11, 0x0

    .line 1056
    .local v11, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1057
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v12

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1058
    invoke-virtual {v12, v13}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v11

    goto :goto_2

    .line 1059
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isProduct()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1060
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v12

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1061
    invoke-virtual {v12, v13}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v11

    goto :goto_2

    .line 1063
    :cond_3
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v12

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1064
    invoke-virtual {v12, v13}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v11

    .line 1066
    :goto_2
    if-eqz v11, :cond_5

    .line 1067
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_3

    :cond_4
    move v12, v7

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v12, 0x1

    .line 1068
    .local v12, "permissionViolation":Z
    :goto_4
    if-eqz v12, :cond_7

    .line 1069
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Privileged permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " - not in privapp-permissions whitelist"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    sget-boolean v13, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v13, :cond_8

    .line 1073
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v13, :cond_6

    .line 1074
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 1076
    :cond_6
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1079
    :cond_7
    return v7

    .line 1082
    .end local v11    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "permissionViolation":Z
    :cond_8
    :goto_5
    sget-boolean v11, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v11, :cond_9

    .line 1083
    return v7

    .line 1087
    :cond_9
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v11, v7, v7}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v11

    .line 1089
    .local v11, "systemPackageName":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1090
    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 1099
    .local v12, "systemPackage":Landroid/content/pm/PackageParser$Package;
    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1101
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSettingBase;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v14

    .line 1100
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 1102
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSettingBase;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v15, 0x4

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-nez v13, :cond_b

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v14, v12, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1105
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_b

    iget-object v13, v12, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1106
    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_6

    :cond_a
    move v13, v7

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v13, 0x1

    .line 1109
    .local v13, "allowed":Z
    :goto_7
    if-nez v13, :cond_1f

    if-nez v5, :cond_c

    if-eqz v3, :cond_1f

    .line 1110
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 1113
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 1114
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1115
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    .line 1117
    .local v14, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v14, :cond_d

    iget-object v15, v14, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    goto :goto_8

    :cond_d
    const/4 v15, 0x0

    .line 1118
    .local v15, "disabledPs":Lcom/android/server/pm/PackageSetting;
    :goto_8
    if-eqz v15, :cond_10

    .line 1119
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1123
    if-eqz v5, :cond_e

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_f

    :cond_e
    if-eqz v3, :cond_1a

    .line 1124
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1125
    invoke-static {v15, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1126
    :cond_f
    const/4 v13, 0x1

    goto/16 :goto_c

    .line 1135
    :cond_10
    if-eqz v15, :cond_13

    if-eqz v14, :cond_13

    .line 1136
    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    if-eqz v5, :cond_11

    .line 1137
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_12

    :cond_11
    if-eqz v3, :cond_13

    .line 1138
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1139
    invoke-static {v15, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1140
    :cond_12
    const/4 v13, 0x1

    .line 1145
    :cond_13
    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_1a

    .line 1146
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1147
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1148
    .local v6, "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_14

    .line 1149
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    goto :goto_9

    :cond_14
    const/4 v7, 0x0

    .line 1150
    .local v7, "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    :goto_9
    if-eqz v6, :cond_1a

    if-eqz v5, :cond_15

    .line 1151
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v16

    if-nez v16, :cond_16

    :cond_15
    if-eqz v3, :cond_1a

    .line 1152
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 1153
    :cond_16
    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 1154
    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 1155
    const/4 v13, 0x1

    goto :goto_c

    .line 1156
    :cond_17
    move-object/from16 v17, v7

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .end local v7    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .local v17, "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v7, :cond_1a

    .line 1158
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 1160
    .local v6, "disabledChildPkg":Landroid/content/pm/PackageParser$Package;
    .local v18, "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_18

    .line 1161
    move-object/from16 v19, v7

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    goto :goto_b

    .line 1162
    :cond_18
    move-object/from16 v19, v7

    const/4 v7, 0x0

    .line 1163
    .local v7, "disabledChildPs":Lcom/android/server/pm/PackageSetting;
    :goto_b
    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_19

    .line 1164
    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_19

    .line 1166
    const/4 v13, 0x1

    .line 1167
    goto :goto_c

    .line 1169
    .end local v6    # "disabledChildPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "disabledChildPs":Lcom/android/server/pm/PackageSetting;
    :cond_19
    nop

    .line 1158
    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_a

    .line 1174
    .end local v14    # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .end local v15    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .end local v18    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    :cond_1a
    :goto_c
    goto :goto_e

    .line 1175
    :cond_1b
    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 1176
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v7

    if-nez v7, :cond_1d

    :cond_1c
    if-eqz v3, :cond_1e

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isOem()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1178
    invoke-static {v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    :cond_1d
    const/4 v7, 0x1

    goto :goto_d

    :cond_1e
    const/4 v7, 0x0

    :goto_d
    move v6, v7

    .line 1183
    .end local v13    # "allowed":Z
    .local v6, "allowed":Z
    move v13, v6

    .end local v6    # "allowed":Z
    .restart local v13    # "allowed":Z
    :goto_e
    if-eqz v13, :cond_1f

    if-eqz v5, :cond_1f

    if-nez v4, :cond_1f

    .line 1184
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1185
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " cannot be granted to privileged vendor apk "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/4 v13, 0x0

    .line 1191
    :cond_1f
    if-nez v13, :cond_26

    .line 1192
    if-nez v13, :cond_20

    .line 1193
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPre23()Z

    move-result v6

    if-eqz v6, :cond_20

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_20

    .line 1198
    const/4 v13, 0x1

    .line 1200
    :cond_20
    if-nez v13, :cond_21

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isInstaller()Z

    move-result v6

    if-eqz v6, :cond_21

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x2

    .line 1201
    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1205
    const/4 v13, 0x1

    .line 1207
    :cond_21
    if-nez v13, :cond_22

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVerifier()Z

    move-result v6

    if-eqz v6, :cond_22

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x3

    .line 1208
    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1212
    const/4 v13, 0x1

    .line 1214
    :cond_22
    if-nez v13, :cond_23

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPreInstalled()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1215
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1217
    const/4 v13, 0x1

    .line 1219
    :cond_23
    if-nez v13, :cond_24

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1222
    move-object/from16 v6, p4

    invoke-virtual {v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v13

    goto :goto_f

    .line 1224
    :cond_24
    move-object/from16 v6, p4

    :goto_f
    if-nez v13, :cond_25

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isSetup()Z

    move-result v7

    if-eqz v7, :cond_25

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1225
    const/4 v1, 0x1

    const/4 v15, 0x0

    invoke-virtual {v14, v1, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1229
    const/4 v1, 0x1

    .line 1231
    .end local v13    # "allowed":Z
    .local v1, "allowed":Z
    move v13, v1

    .end local v1    # "allowed":Z
    .restart local v13    # "allowed":Z
    :cond_25
    if-nez v13, :cond_27

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isSystemTextClassifier()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x5

    .line 1232
    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1236
    const/4 v13, 0x1

    goto :goto_10

    .line 1239
    :cond_26
    move-object/from16 v6, p4

    :cond_27
    :goto_10
    return v13
.end method

.method private static hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkgInfo"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "permName"    # Ljava/lang/String;

    .line 2061
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2062
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2063
    return v1

    .line 2061
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2066
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .locals 5
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1023
    const/4 v0, 0x0

    .line 1024
    .local v0, "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_0

    .line 1027
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1029
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_0

    .line 1031
    :cond_1
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 1034
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 1036
    .local v3, "whitelisted":Z
    :goto_1
    if-nez v3, :cond_4

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_3

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 1037
    invoke-direct {p0, p1, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    .line 1036
    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    return v1
.end method

.method private isNewPlatformPermissionForPackage(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .locals 7
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 999
    const/4 v0, 0x0

    .line 1000
    .local v0, "allowed":Z
    sget-object v1, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v1, v1

    .line 1001
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1002
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v2

    .line 1004
    .local v3, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-ge v4, v5, :cond_0

    .line 1006
    const/4 v0, 0x1

    .line 1007
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auto-granting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to old pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    goto :goto_1

    .line 1001
    .end local v3    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1012
    .end local v2    # "ip":I
    :cond_1
    :goto_1
    return v0
.end method

.method private isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "permission"    # Ljava/lang/String;

    .line 1276
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1277
    .local v0, "permCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1278
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1279
    .local v3, "requestedPermission":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1280
    const/4 v1, 0x1

    return v1

    .line 1277
    .end local v3    # "requestedPermission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1283
    .end local v2    # "j":I
    :cond_1
    return v1
.end method

.method private isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1257
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v0, v0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1258
    return v1

    .line 1262
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 1263
    return v1

    .line 1267
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_2

    goto :goto_0

    .line 1270
    :cond_2
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1271
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 1272
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionsState;->isPermissionReviewRequired(I)Z

    move-result v2

    return v2

    .line 1268
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v1    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_3
    :goto_0
    return v1
.end method

.method private logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2077
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2078
    .local v0, "log":Landroid/metrics/LogMaker;
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 2079
    const/16 v1, 0x4d9

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2081
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2082
    return-void
.end method

.method private removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 556
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 558
    .local v1, "N":I
    const/4 v2, 0x0

    .line 559
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 560
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Permission;

    .line 561
    .local v5, "p":Landroid/content/pm/PackageParser$Permission;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    iget-object v7, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/BasePermission;

    .line 562
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_0

    .line 563
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/permission/BasePermission;

    move-object v6, v7

    .line 565
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/BasePermission;->isPermission(Landroid/content/pm/PackageParser$Permission;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 566
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/BasePermission;->setPermission(Landroid/content/pm/PackageParser$Permission;)V

    .line 576
    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Permission;->isAppOp()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 577
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 578
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 579
    .local v7, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    .line 580
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 559
    .end local v5    # "p":Landroid/content/pm/PackageParser$Permission;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 584
    .end local v4    # "i":I
    :cond_3
    nop

    .line 588
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 589
    const/4 v2, 0x0

    .line 590
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 591
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 592
    .local v4, "perm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionAppOp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 593
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 594
    .local v5, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_4

    .line 595
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 596
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 597
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 602
    .end local v3    # "i":I
    :cond_5
    nop

    .line 605
    .end local v1    # "N":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    monitor-exit v0

    .line 606
    return-void

    .line 605
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 644
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 647
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 648
    .local v0, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 649
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 650
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_0

    .line 651
    monitor-exit v1

    return-void

    .line 653
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 655
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 659
    if-eqz p3, :cond_2

    .line 660
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionRemoved()V

    .line 662
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_2
    monitor-exit v1

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 645
    .end local v0    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 22
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p5

    .line 1515
    move-object/from16 v13, p6

    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v12}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1516
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    return-void

    .line 1520
    :cond_0
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "revokeRuntimePermission"

    move-object v1, v9

    move v3, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1532
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    .line 1533
    .local v14, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v14, :cond_e

    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v0, :cond_e

    .line 1536
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v14, v1, v12}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1539
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v15

    .line 1540
    .local v15, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v15, :cond_c

    .line 1544
    invoke-virtual {v15, v14}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V

    .line 1550
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v0, v0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v0, :cond_1

    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 1552
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1553
    return-void

    .line 1556
    :cond_1
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 1557
    .local v8, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 1559
    .local v7, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v7, v10, v12}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v16

    .line 1561
    .local v16, "flags":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v5, v0

    .line 1563
    .local v5, "identity":J
    :try_start_0
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->nubia_replace_packages:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_2

    .line 1564
    move/from16 v0, v16

    .line 1565
    .local v0, "newFlags":I
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 1566
    and-int/lit8 v0, v0, -0x11

    .line 1567
    :try_start_1
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zzw pms revokeRuntimePermission update package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", permName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1568
    const/16 v4, 0x10

    const/16 v17, 0x0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-wide/from16 v18, v5

    move v5, v0

    .line 1568
    .end local v5    # "identity":J
    .local v18, "identity":J
    move/from16 v6, p4

    move-object/from16 v20, v7

    move v7, v12

    .line 1568
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v20, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move-object/from16 v21, v8

    move-object/from16 v8, v17

    .line 1568
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v21, "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_2
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1568
    .end local v0    # "newFlags":I
    goto :goto_0

    .line 1573
    :catchall_0
    move-exception v0

    move-wide/from16 v1, v18

    move-object/from16 v5, v20

    goto/16 :goto_3

    .line 1573
    .end local v18    # "identity":J
    .end local v20    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v21    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "identity":J
    .restart local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_1
    move-exception v0

    move-object/from16 v21, v8

    move-wide v1, v5

    move-object v5, v7

    .line 1573
    .end local v5    # "identity":J
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v18    # "identity":J
    .restart local v20    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v21    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_3

    .line 1573
    .end local v18    # "identity":J
    .end local v20    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v21    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "identity":J
    .restart local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    move-wide/from16 v18, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    .line 1573
    .end local v5    # "identity":J
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v18    # "identity":J
    .restart local v20    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v21    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_0
    move-wide/from16 v1, v18

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1574
    .end local v18    # "identity":J
    .local v1, "identity":J
    nop

    .line 1577
    and-int/lit8 v0, v16, 0x10

    if-eqz v0, :cond_4

    .line 1578
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_3

    goto :goto_1

    .line 1579
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1582
    :cond_4
    :goto_1
    if-nez p3, :cond_6

    and-int/lit8 v0, v16, 0x4

    if-nez v0, :cond_5

    goto :goto_2

    .line 1583
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot revoke policy fixed permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1587
    :cond_6
    :goto_2
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_8

    .line 1590
    move-object/from16 v5, v20

    invoke-virtual {v5, v15}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    .line 1590
    .end local v20    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    if-eq v0, v4, :cond_7

    .line 1592
    if-eqz v13, :cond_7

    .line 1593
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onInstallPermissionRevoked()V

    .line 1596
    :cond_7
    return-void

    .line 1599
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v20    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_8
    move-object/from16 v5, v20

    .line 1599
    .end local v20    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v5, v15, v12}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 1601
    return-void

    .line 1604
    :cond_9
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1605
    const/16 v0, 0x4dd

    invoke-direct {v9, v0, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1608
    :cond_a
    if-eqz v13, :cond_b

    .line 1609
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1610
    .local v0, "uid":I
    iget-object v4, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v4, v12}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionRevoked(II)V

    .line 1612
    .end local v0    # "uid":I
    :cond_b
    return-void

    .line 1573
    .end local v1    # "identity":J
    .end local v21    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v5, "identity":J
    .restart local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_2
    move-exception v0

    move-wide v1, v5

    move-object v5, v7

    move-object/from16 v21, v8

    .line 1573
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v1    # "identity":J
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v21    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1541
    .end local v1    # "identity":J
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v16    # "flags":I
    .end local v21    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1537
    .end local v15    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1534
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 26
    .param p1, "newPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "oldPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p4, "permissionCallback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .local p3, "allPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 413
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 414
    .local v11, "numOldPackagePermissions":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v11}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v12, v0

    .line 417
    .local v12, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v11, :cond_1

    .line 418
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    .line 420
    .local v1, "permission":Landroid/content/pm/PackageParser$Permission;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-eqz v2, :cond_0

    .line 421
    iget-object v2, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v3, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .end local v1    # "permission":Landroid/content/pm/PackageParser$Permission;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "i":I
    :cond_1
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 427
    .local v14, "numNewPackagePermissions":I
    const/4 v0, 0x0

    .local v0, "newPermissionNum":I
    :goto_1
    move v15, v0

    .end local v0    # "newPermissionNum":I
    .local v15, "newPermissionNum":I
    if-ge v15, v14, :cond_6

    .line 429
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 430
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/PackageParser$Permission;

    .line 431
    .local v7, "newPermission":Landroid/content/pm/PackageParser$Permission;
    iget-object v0, v7, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v16

    .line 433
    .local v16, "newProtection":I
    and-int/lit8 v0, v16, 0x1

    if-eqz v0, :cond_5

    .line 434
    iget-object v0, v7, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 436
    .local v6, "permissionName":Ljava/lang/String;
    iget-object v0, v7, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, v7, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    :goto_2
    move-object v5, v0

    .line 437
    .local v5, "newPermissionGroupName":Ljava/lang/String;
    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 440
    .local v4, "oldPermissionGroupName":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 441
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 442
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    .line 443
    .local v3, "userIds":[I
    array-length v2, v3

    .line 444
    .local v2, "numUserIds":I
    const/4 v0, 0x0

    .local v0, "userIdNum":I
    :goto_3
    move v1, v0

    .end local v0    # "userIdNum":I
    .local v1, "userIdNum":I
    if-ge v1, v2, :cond_5

    .line 445
    aget v13, v3, v1

    .line 447
    .local v13, "userId":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 448
    .local v10, "numPackages":I
    const/4 v0, 0x0

    .local v0, "packageNum":I
    :goto_4
    move/from16 v18, v0

    .end local v0    # "packageNum":I
    .local v18, "packageNum":I
    move/from16 v19, v11

    move/from16 v11, v18

    if-ge v11, v10, :cond_4

    .line 449
    .end local v18    # "packageNum":I
    .local v11, "packageNum":I
    .local v19, "numOldPackagePermissions":I
    move/from16 v20, v10

    move-object/from16 v10, p3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v10    # "numPackages":I
    .local v20, "numPackages":I
    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 451
    .local v10, "packageName":Ljava/lang/String;
    move-object/from16 v21, v12

    const/4 v12, 0x0

    invoke-direct {v8, v6, v10, v12, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .end local v12    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v21, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_3

    .line 453
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v17, "72710897"

    aput-object v17, v0, v12

    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 454
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x1

    aput-object v12, v0, v17

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v1

    const-string v1, "Revoking permission "

    .end local v1    # "userIdNum":I
    .local v24, "userIdNum":I
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from package "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as the group changed from "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x2

    aput-object v1, v0, v12

    .line 453
    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 461
    const/4 v0, 0x0

    const/16 v12, 0x3e8

    move/from16 v17, v24

    move-object v1, v8

    .end local v24    # "userIdNum":I
    .local v17, "userIdNum":I
    move/from16 v18, v2

    move-object v2, v6

    .end local v2    # "numUserIds":I
    .local v18, "numUserIds":I
    move-object/from16 v22, v3

    move-object v3, v10

    .end local v3    # "userIds":[I
    .local v22, "userIds":[I
    move-object/from16 v23, v4

    move v4, v0

    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .local v23, "oldPermissionGroupName":Ljava/lang/String;
    move-object/from16 v24, v5

    move v5, v12

    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .local v24, "newPermissionGroupName":Ljava/lang/String;
    move-object v12, v6

    move v6, v13

    .end local v6    # "permissionName":Ljava/lang/String;
    .local v12, "permissionName":Ljava/lang/String;
    move-object/from16 v25, v7

    move-object/from16 v7, p4

    .end local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .local v25, "newPermission":Landroid/content/pm/PackageParser$Permission;
    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    goto :goto_5

    .line 463
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 464
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not revoke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "packageName":Ljava/lang/String;
    goto :goto_5

    .line 448
    .end local v12    # "permissionName":Ljava/lang/String;
    .end local v17    # "userIdNum":I
    .end local v18    # "numUserIds":I
    .end local v22    # "userIds":[I
    .end local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v24    # "newPermissionGroupName":Ljava/lang/String;
    .end local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .restart local v1    # "userIdNum":I
    .restart local v2    # "numUserIds":I
    .restart local v3    # "userIds":[I
    .restart local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "permissionName":Ljava/lang/String;
    .restart local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    :cond_3
    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object v12, v6

    move-object/from16 v25, v7

    .end local v1    # "userIdNum":I
    .end local v2    # "numUserIds":I
    .end local v3    # "userIds":[I
    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .restart local v12    # "permissionName":Ljava/lang/String;
    .restart local v17    # "userIdNum":I
    .restart local v18    # "numUserIds":I
    .restart local v22    # "userIds":[I
    .restart local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v24    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    :goto_5
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "packageNum":I
    .local v0, "packageNum":I
    move-object v6, v12

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v11, v19

    move/from16 v10, v20

    move-object/from16 v12, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v7, v25

    goto/16 :goto_4

    .line 444
    .end local v0    # "packageNum":I
    .end local v13    # "userId":I
    .end local v17    # "userIdNum":I
    .end local v18    # "numUserIds":I
    .end local v20    # "numPackages":I
    .end local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "userIds":[I
    .end local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v24    # "newPermissionGroupName":Ljava/lang/String;
    .end local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .restart local v1    # "userIdNum":I
    .restart local v2    # "numUserIds":I
    .restart local v3    # "userIds":[I
    .restart local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "permissionName":Ljava/lang/String;
    .restart local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .local v12, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    move-object/from16 v21, v12

    move-object v12, v6

    .end local v1    # "userIdNum":I
    .end local v2    # "numUserIds":I
    .end local v3    # "userIds":[I
    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .local v12, "permissionName":Ljava/lang/String;
    .restart local v17    # "userIdNum":I
    .restart local v18    # "numUserIds":I
    .restart local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "userIds":[I
    .restart local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v24    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "userIdNum":I
    .local v0, "userIdNum":I
    move/from16 v11, v19

    move-object/from16 v12, v21

    move-object/from16 v10, p2

    goto/16 :goto_3

    .line 428
    .end local v0    # "userIdNum":I
    .end local v16    # "newProtection":I
    .end local v18    # "numUserIds":I
    .end local v19    # "numOldPackagePermissions":I
    .end local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "userIds":[I
    .end local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v24    # "newPermissionGroupName":Ljava/lang/String;
    .end local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .local v11, "numOldPackagePermissions":I
    .local v12, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    move/from16 v19, v11

    move-object/from16 v21, v12

    .end local v11    # "numOldPackagePermissions":I
    .end local v12    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "numOldPackagePermissions":I
    .restart local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v0, v15, 0x1

    .line 427
    .end local v15    # "newPermissionNum":I
    .local v0, "newPermissionNum":I
    move/from16 v11, v19

    move-object/from16 v12, v21

    move-object/from16 v10, p2

    goto/16 :goto_1

    .line 473
    .end local v0    # "newPermissionNum":I
    .end local v19    # "numOldPackagePermissions":I
    .end local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "numOldPackagePermissions":I
    .restart local v12    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    move/from16 v19, v11

    move-object/from16 v21, v12

    .end local v11    # "numOldPackagePermissions":I
    .end local v12    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "numOldPackagePermissions":I
    .restart local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method private revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I
    .locals 18
    .param p1, "suSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "allUserIds"    # [I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v0, p0

    .line 1618
    move-object/from16 v1, p2

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1619
    .local v2, "usedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v3

    .line 1620
    .local v3, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_6

    .line 1623
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 1624
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    .line 1625
    goto :goto_0

    .line 1627
    :cond_1
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1628
    .local v7, "requestedPermCount":I
    nop

    .local v6, "j":I
    :goto_1
    if-ge v6, v7, :cond_3

    .line 1629
    iget-object v8, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1630
    .local v8, "permission":Ljava/lang/String;
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v9

    .line 1631
    .local v9, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v9, :cond_2

    .line 1632
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1628
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1635
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "j":I
    .end local v7    # "requestedPermCount":I
    :cond_3
    goto :goto_0

    .line 1637
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 1639
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v5

    .line 1640
    .local v5, "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 1641
    .local v7, "installPermCount":I
    add-int/lit8 v8, v7, -0x1

    .local v8, "i":I
    :goto_2
    const/16 v9, 0xff

    if-ltz v8, :cond_6

    .line 1642
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 1643
    .local v10, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1644
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v11

    .line 1645
    .local v11, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v11, :cond_5

    .line 1646
    invoke-virtual {v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 1647
    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12, v9, v6}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1641
    .end local v10    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v11    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 1653
    .end local v8    # "i":I
    :cond_6
    sget-object v8, Llibcore/util/EmptyArray;->INT:[I

    .line 1656
    .local v8, "runtimePermissionChangedUserIds":[I
    array-length v10, v1

    move-object v11, v8

    move v8, v6

    .end local v8    # "runtimePermissionChangedUserIds":[I
    .local v11, "runtimePermissionChangedUserIds":[I
    :goto_3
    if-ge v8, v10, :cond_9

    aget v12, v1, v8

    .line 1657
    .local v12, "userId":I
    nop

    .line 1658
    invoke-virtual {v4, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v13

    .line 1659
    .local v13, "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 1660
    .local v14, "runtimePermCount":I
    add-int/lit8 v15, v14, -0x1

    .local v15, "i":I
    :goto_4
    if-ltz v15, :cond_8

    .line 1661
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 1662
    .local v6, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1663
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 1664
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v0, :cond_7

    .line 1665
    invoke-virtual {v4, v0, v12}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 1666
    const/16 v1, 0xff

    const/4 v9, 0x0

    invoke-virtual {v4, v0, v12, v1, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1668
    invoke-static {v11, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v11

    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_5

    .line 1660
    :cond_7
    const/16 v1, 0xff

    const/4 v9, 0x0

    :goto_5
    add-int/lit8 v15, v15, -0x1

    move v6, v9

    move-object/from16 v0, p0

    move v9, v1

    move-object/from16 v1, p2

    goto :goto_4

    .line 1656
    .end local v12    # "userId":I
    .end local v13    # "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v14    # "runtimePermCount":I
    .end local v15    # "i":I
    :cond_8
    move v1, v9

    move v9, v6

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move v9, v1

    move-object/from16 v1, p2

    goto :goto_3

    .line 1675
    :cond_9
    return-object v11

    .line 1621
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v7    # "installPermCount":I
    .end local v11    # "runtimePermissionChangedUserIds":[I
    :cond_a
    :goto_6
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0
.end method

.method private systemReady()V
    .locals 3

    .line 2038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    .line 2039
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 2043
    return-void

    .line 2040
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature|privileged permissions not in privapp-permissions whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "sdkUpdated"    # Z
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 1743
    .local p3, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    nop

    .line 1744
    if-eqz p2, :cond_0

    .line 1745
    const/4 v0, 0x6

    goto :goto_0

    .line 1746
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    or-int/2addr v0, v1

    .line 1747
    .local v0, "flags":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move v6, v0

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1748
    return-void
.end method

.method private updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 17
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move/from16 v12, p6

    .line 1886
    move-object/from16 v13, p7

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v12}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1887
    return-void

    .line 1890
    :cond_0
    const-string/jumbo v0, "updatePermissionFlags"

    invoke-direct {v8, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 1892
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlags"

    move-object v1, v8

    move v2, v11

    move v3, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1899
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_1

    .line 1900
    and-int/lit8 v0, p3, -0x11

    .line 1901
    .end local p3    # "flagMask":I
    .local v0, "flagMask":I
    and-int/lit8 v1, p4, -0x11

    .line 1902
    .end local p4    # "flagValues":I
    .local v1, "flagValues":I
    and-int/lit8 v0, v0, -0x21

    .line 1903
    and-int/lit8 v1, v1, -0x21

    .line 1904
    and-int/lit8 v1, v1, -0x41

    .line 1907
    move v2, v1

    move v1, v0

    goto :goto_0

    .line 1907
    .end local v0    # "flagMask":I
    .end local v1    # "flagValues":I
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    :cond_1
    move/from16 v1, p3

    move/from16 v2, p4

    .line 1907
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .local v1, "flagMask":I
    .local v2, "flagValues":I
    :goto_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1908
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_8

    iget-object v0, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 1911
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1916
    iget-object v4, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1917
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 1918
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1919
    if-eqz v0, :cond_6

    .line 1923
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 1924
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 1925
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 1926
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v14, 0x0

    if-eqz v6, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v14

    .line 1927
    .local v6, "hadState":Z
    :goto_1
    nop

    .line 1928
    invoke-virtual {v5, v0, v12, v1, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    move-result v15

    .line 1929
    .local v15, "permissionUpdated":Z
    if-eqz v15, :cond_5

    if-eqz v13, :cond_5

    .line 1932
    invoke-virtual {v5, v9}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 1933
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onInstallPermissionUpdated()V

    goto :goto_2

    .line 1934
    :cond_3
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v16

    if-nez v16, :cond_4

    if-eqz v6, :cond_5

    .line 1936
    :cond_4
    new-array v7, v7, [I

    aput v12, v7, v14

    invoke-virtual {v13, v7, v14}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    .line 1939
    :cond_5
    :goto_2
    return-void

    .line 1920
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v6    # "hadState":Z
    .end local v15    # "permissionUpdated":Z
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1918
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1912
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1909
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .locals 8
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")Z"
        }
    .end annotation

    .line 1943
    .local p5, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1944
    const/4 v0, 0x0

    return v0

    .line 1947
    :cond_0
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 1949
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlagsForAllApps"

    move-object v1, p0

    move v2, p3

    move v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1956
    const/16 v0, 0x3e8

    if-eq p3, v0, :cond_1

    .line 1957
    and-int/lit8 p1, p1, -0x11

    .line 1958
    and-int/lit8 p2, p2, -0x11

    .line 1961
    :cond_1
    const/4 v0, 0x0

    .line 1962
    .local v0, "changed":Z
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1963
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1964
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_2

    .line 1965
    goto :goto_0

    .line 1967
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 1968
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4, p4, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlagsForAllPermissions(III)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1970
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_0

    .line 1971
    :cond_3
    return v0
.end method

.method private updatePermissionTrees(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "flags"    # I

    .line 1842
    const/4 v0, 0x0

    .line 1843
    .local v0, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1844
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1845
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1846
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 1847
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1848
    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    .line 1849
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1850
    :cond_1
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing old permission tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1850
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    or-int/lit8 p3, p3, 0x1

    .line 1853
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1857
    :cond_2
    if-nez v0, :cond_3

    .line 1858
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v4

    .line 1860
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1861
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_0

    .line 1862
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1863
    if-eqz v0, :cond_7

    .line 1864
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 1865
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1866
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1867
    .local v3, "sourcePkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1868
    if-eqz v3, :cond_6

    :try_start_1
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 1869
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1870
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v6

    if-nez v6, :cond_5

    .line 1871
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/BasePermission;->setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V

    .line 1873
    :cond_5
    monitor-exit v4

    goto :goto_1

    .line 1878
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1875
    :cond_6
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1875
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 1878
    monitor-exit v4

    .line 1879
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_1

    .line 1878
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1881
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :cond_7
    return p3

    .line 1862
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "flags"    # I

    .line 1795
    const/4 v0, 0x0

    .line 1796
    .local v0, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1797
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1798
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1799
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 1800
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1801
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/BasePermission;->updateDynamicPermission(Ljava/util/Collection;)V

    .line 1803
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1804
    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_2

    .line 1805
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1806
    :cond_2
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing old permission tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1806
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    or-int/lit8 p3, p3, 0x1

    .line 1809
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1813
    :cond_3
    if-nez v0, :cond_4

    .line 1814
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v4

    .line 1816
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1817
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_0

    .line 1818
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1819
    if-eqz v0, :cond_8

    .line 1820
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 1821
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1822
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1823
    .local v3, "sourcePkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1824
    if-eqz v3, :cond_7

    :try_start_1
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 1825
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1826
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v6

    if-nez v6, :cond_6

    .line 1827
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/BasePermission;->setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V

    .line 1829
    :cond_6
    monitor-exit v4

    goto :goto_1

    .line 1834
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1831
    :cond_7
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1831
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 1834
    monitor-exit v4

    .line 1835
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_1

    .line 1834
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1837
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :cond_8
    return p3

    .line 1818
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 8
    .param p1, "changingPkgName"    # Ljava/lang/String;
    .param p2, "changingPkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 1763
    .local p5, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionTrees(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I

    move-result p4

    .line 1767
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I

    move-result p4

    .line 1769
    const-string v0, "grantPermissions"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1772
    and-int/lit8 v0, p4, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 1773
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 1774
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eq v5, p2, :cond_1

    .line 1776
    invoke-static {v5}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v6

    .line 1777
    .local v6, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v7, p4, 0x4

    if-eqz v7, :cond_0

    .line 1778
    invoke-static {p3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    move v7, v3

    .line 1779
    .local v7, "replace":Z
    :goto_1
    invoke-direct {p0, v5, v7, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantPermissions(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1781
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "volumeUuid":Ljava/lang/String;
    .end local v7    # "replace":Z
    :cond_1
    goto :goto_0

    .line 1784
    :cond_2
    if-eqz p2, :cond_4

    .line 1786
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v0

    .line 1787
    .local v0, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_3

    .line 1788
    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    nop

    .line 1789
    .local v3, "replace":Z
    :cond_3
    invoke-direct {p0, p2, v3, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantPermissions(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1791
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v3    # "replace":Z
    :cond_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1792
    return-void
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "replaceGrant"    # Z
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 1729
    .local p4, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1730
    :cond_0
    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    const/4 v0, 0x2

    nop

    :cond_1
    or-int/2addr v0, v1

    .line 1731
    .local v0, "flags":I
    nop

    .line 1732
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    .line 1731
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, v0

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1733
    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1734
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/pm/PackageParser$Package;

    .line 1735
    .local v9, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1736
    invoke-static {v9}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    .line 1735
    move-object v2, p0

    move-object v4, v9

    move v6, v0

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1737
    .end local v9    # "childPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_1

    .line 1739
    :cond_2
    return-void
.end method


# virtual methods
.method getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
