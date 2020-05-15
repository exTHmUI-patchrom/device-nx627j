.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;,
        Lcom/android/server/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$Shell;,
        Lcom/android/server/AppOpsService$NoDialogRunnable;,
        Lcom/android/server/AppOpsService$AskRunnable;,
        Lcom/android/server/AppOpsService$ChangeRec;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$ActiveCallback;,
        Lcom/android/server/AppOpsService$ModeCallback;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$UidState;,
        Lcom/android/server/AppOpsService$Constants;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field static final DEBUG:Z = false

.field private static final NO_VERSION:I = -0x1

.field public static final OP_CHECK_AT_APP_START:[I

.field private static final PROCESS_STATE_TO_UID_STATE:[I

.field static final TAG:Ljava/lang/String; = "AppOps"

.field private static final UID_ANY:I = -0x2

.field static final UID_STATE_NAMES:[Ljava/lang/String;

.field static final UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

.field static final UID_STATE_TIME_ATTRS:[Ljava/lang/String;

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field final mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$ActiveCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstants:Lcom/android/server/AppOpsService$Constants;

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field mLastUptime:J

.field private final mLooper:Landroid/os/Looper;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mProfileOwners:Landroid/util/SparseIntArray;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 139
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/AppOpsService;->OP_CHECK_AT_APP_START:[I

    .line 149
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    .line 172
    const-string/jumbo v1, "pers "

    const-string/jumbo v2, "top  "

    const-string v3, "fgsvc"

    const-string v4, "fg   "

    const-string v5, "bg   "

    const-string v6, "cch  "

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    .line 181
    const-string/jumbo v1, "tp"

    const-string/jumbo v2, "tt"

    const-string/jumbo v3, "tfs"

    const-string/jumbo v4, "tf"

    const-string/jumbo v5, "tb"

    const-string/jumbo v6, "tc"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AppOpsService;->UID_STATE_TIME_ATTRS:[Ljava/lang/String;

    .line 190
    const-string/jumbo v1, "rp"

    const-string/jumbo v2, "rt"

    const-string/jumbo v3, "rfs"

    const-string/jumbo v4, "rf"

    const-string/jumbo v5, "rb"

    const-string/jumbo v6, "rc"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AppOpsService;->UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x10
        0x12
        0x58
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 2
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 614
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 206
    new-instance v0, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$1;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    .line 211
    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 235
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 475
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 476
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 477
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 478
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 479
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    .line 575
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 615
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 616
    new-instance v0, Landroid/util/AtomicFile;

    const-string v1, "appops"

    invoke-direct {v0, p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 617
    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 619
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    .line 621
    new-instance v0, Lcom/android/server/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/AppOpsService$Constants;-><init>(Lcom/android/server/AppOpsService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    .line 622
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 623
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/AppOpsService;[II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService;
    .param p1, "x1"    # [I
    .param p2, "x2"    # I

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->isContain([II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/AppOpsService;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->isPermissionGranted(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/AppOpsService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService;
    .param p1, "x1"    # I

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->isNotNeedShowPermission(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/AppOpsService;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->getApplicationInfoByName(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 127
    invoke-static {p0}, Lcom/android/server/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService;

    .line 127
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AppOpsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;
    .locals 10
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    .line 1206
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local p4, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-nez p4, :cond_0

    .line 1207
    return-object p0

    .line 1209
    :cond_0
    if-nez p0, :cond_1

    .line 1210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p0, v0

    .line 1212
    :cond_1
    const/4 v0, 0x0

    .line 1213
    .local v0, "duplicate":Z
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1214
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "duplicate":Z
    :goto_0
    if-ge v0, v1, :cond_6

    .line 1215
    invoke-virtual {p4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1216
    .local v4, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1217
    .local v5, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    if-nez v5, :cond_2

    .line 1218
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 1219
    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1221
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1222
    .local v6, "reportCount":I
    move v7, v2

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_4

    .line 1223
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$ChangeRec;

    .line 1224
    .local v8, "report":Lcom/android/server/AppOpsService$ChangeRec;
    iget v9, v8, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    if-ne v9, p1, :cond_3

    iget-object v9, v8, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1225
    const/4 v3, 0x1

    .line 1226
    goto :goto_2

    .line 1222
    .end local v8    # "report":Lcom/android/server/AppOpsService$ChangeRec;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1230
    .end local v6    # "reportCount":I
    .end local v7    # "j":I
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 1231
    new-instance v6, Lcom/android/server/AppOpsService$ChangeRec;

    invoke-direct {v6, p1, p2, p3}, Lcom/android/server/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    .end local v4    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v5    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1234
    .end local v0    # "i":I
    :cond_6
    return-object p0
.end method

.method private askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # Lcom/android/server/AppOpsService$Op;

    .line 1867
    new-instance v0, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    invoke-direct {v0}, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;-><init>()V

    .line 1868
    .local v0, "request":Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/AppOpsService$AskRunnable;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/AppOpsService$AskRunnable;-><init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/AppOpsService$Op;Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1869
    return-object v0
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1522
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1523
    .local v0, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-eqz v0, :cond_0

    .line 1524
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Restriction;

    .line 1525
    .local v1, "r":Lcom/android/server/AppOpsService$Restriction;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1526
    iget v2, v1, Lcom/android/server/AppOpsService$Restriction;->mode:I

    return v2

    .line 1529
    .end local v1    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .line 4141
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4142
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 4145
    return-void

    .line 4143
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;
    .locals 16
    .param p1, "uidOps"    # Landroid/util/SparseIntArray;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 887
    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 888
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 889
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 890
    nop

    .local v3, "j":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 891
    new-instance v4, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 895
    .end local v3    # "j":I
    :cond_0
    nop

    .restart local v3    # "j":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 896
    aget v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 897
    .local v4, "index":I
    if-ltz v4, :cond_2

    .line 898
    if-nez v2, :cond_1

    .line 899
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 901
    :cond_1
    new-instance v15, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    .end local v4    # "index":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 906
    .end local v3    # "j":I
    :cond_3
    return-object v2
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 26
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 852
    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 853
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 854
    .local v3, "elapsedNow":J
    const/4 v5, -0x1

    if-nez v1, :cond_3

    .line 855
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 856
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 857
    invoke-virtual {v0, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Op;

    .line 858
    .local v9, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v10, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    if-ne v10, v5, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 859
    .local v10, "running":Z
    :goto_1
    if-eqz v10, :cond_1

    .line 860
    iget-wide v11, v9, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v11, v3, v11

    goto :goto_2

    .line 861
    :cond_1
    iget v11, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v11, v11

    :goto_2
    move-wide v14, v11

    .line 862
    .local v14, "duration":J
    new-instance v13, Landroid/app/AppOpsManager$OpEntry;

    iget v12, v9, Lcom/android/server/AppOpsService$Op;->op:I

    iget v11, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-object v6, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v7, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    long-to-int v5, v14

    move-wide/from16 v20, v3

    iget v3, v9, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .end local v3    # "elapsedNow":J
    .local v20, "elapsedNow":J
    iget-object v4, v9, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    move/from16 v16, v11

    move-object v11, v13

    move-object/from16 v22, v9

    move-object v9, v13

    move/from16 v13, v16

    .end local v9    # "curOp":Lcom/android/server/AppOpsService$Op;
    .local v22, "curOp":Lcom/android/server/AppOpsService$Op;
    move-wide/from16 v23, v14

    move-object v14, v6

    .end local v14    # "duration":J
    .local v23, "duration":J
    move-object v15, v7

    move/from16 v16, v5

    move/from16 v17, v10

    move/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v11 .. v19}, Landroid/app/AppOpsManager$OpEntry;-><init>(II[J[JIZILjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    .end local v10    # "running":Z
    .end local v22    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v23    # "duration":J
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v3, v20

    const/4 v5, -0x1

    goto :goto_0

    .line 883
    .end local v8    # "j":I
    .end local v20    # "elapsedNow":J
    .restart local v3    # "elapsedNow":J
    :cond_2
    move-wide/from16 v20, v3

    .end local v3    # "elapsedNow":J
    .restart local v20    # "elapsedNow":J
    goto :goto_6

    .line 867
    .end local v20    # "elapsedNow":J
    .restart local v3    # "elapsedNow":J
    :cond_3
    move-wide/from16 v20, v3

    .end local v3    # "elapsedNow":J
    .restart local v20    # "elapsedNow":J
    move-object v3, v2

    const/4 v2, 0x0

    .local v2, "j":I
    .local v3, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :goto_3
    array-length v4, v1

    if-ge v2, v4, :cond_8

    .line 868
    aget v4, v1, v2

    invoke-virtual {v0, v4}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Op;

    .line 869
    .local v4, "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v4, :cond_7

    .line 870
    if-nez v3, :cond_4

    .line 871
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 873
    :cond_4
    iget v5, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    .line 874
    .local v5, "running":Z
    :goto_4
    if-eqz v5, :cond_6

    .line 875
    iget-wide v7, v4, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v7, v20, v7

    goto :goto_5

    .line 876
    :cond_6
    iget v7, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v7, v7

    :goto_5
    move-wide v14, v7

    .line 877
    .restart local v14    # "duration":J
    new-instance v13, Landroid/app/AppOpsManager$OpEntry;

    iget v8, v4, Lcom/android/server/AppOpsService$Op;->op:I

    iget v9, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-object v10, v4, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v11, v4, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    long-to-int v12, v14

    iget v7, v4, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v6, v4, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    move/from16 v16, v7

    move-object v7, v13

    move-object v0, v13

    move v13, v5

    move-wide/from16 v17, v14

    move/from16 v14, v16

    .end local v14    # "duration":J
    .local v17, "duration":J
    move-object v15, v6

    invoke-direct/range {v7 .. v15}, Landroid/app/AppOpsManager$OpEntry;-><init>(II[J[JIZILjava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    .end local v4    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v5    # "running":Z
    .end local v17    # "duration":J
    :cond_7
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    goto :goto_3

    .line 883
    .end local v2    # "j":I
    :cond_8
    move-object v2, v3

    .end local v3    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :goto_6
    return-object v2
.end method

.method private commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V
    .locals 21
    .param p1, "uidState"    # Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v6, p0

    .line 2436
    move-object/from16 v7, p1

    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->state:I

    const/4 v1, 0x2

    const/4 v9, 0x1

    if-gt v0, v1, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 2437
    .local v10, "lastForeground":Z
    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    if-gt v0, v1, :cond_1

    move v0, v9

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v11, v0

    .line 2438
    .local v11, "nowForeground":Z
    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    iput v0, v7, Lcom/android/server/AppOpsService$UidState;->state:I

    .line 2439
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 2440
    iget-boolean v0, v7, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    if-eqz v0, :cond_9

    if-eq v10, v11, :cond_9

    .line 2441
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    sub-int/2addr v0, v9

    .local v0, "fgi":I
    :goto_2
    move v12, v0

    .end local v0    # "fgi":I
    .local v12, "fgi":I
    if-ltz v12, :cond_9

    .line 2442
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2443
    goto/16 :goto_9

    .line 2445
    :cond_2
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    .line 2447
    .local v13, "code":I
    iget-object v0, v6, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/util/ArraySet;

    .line 2448
    .local v14, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-eqz v14, :cond_8

    .line 2449
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v9

    .local v0, "cbi":I
    :goto_3
    move v15, v0

    .end local v0    # "cbi":I
    .local v15, "cbi":I
    if-ltz v15, :cond_8

    .line 2450
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/AppOpsService$ModeCallback;

    .line 2451
    .local v5, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    iget v0, v5, Lcom/android/server/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_7

    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 2452
    invoke-virtual {v5, v0}, Lcom/android/server/AppOpsService$ModeCallback;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2453
    goto/16 :goto_8

    .line 2455
    :cond_3
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v4, 0x4

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2456
    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v4, :cond_4

    move v0, v9

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    move/from16 v16, v0

    .line 2457
    .local v16, "doAllPackages":Z
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_7

    .line 2458
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v9

    .local v0, "pkgi":I
    :goto_5
    move v3, v0

    .end local v0    # "pkgi":I
    .local v3, "pkgi":I
    if-ltz v3, :cond_7

    .line 2459
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Ops;

    invoke-virtual {v0, v13}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/AppOpsService$Op;

    .line 2460
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v16, :cond_6

    if-eqz v2, :cond_5

    iget v0, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v0, v4, :cond_5

    goto :goto_6

    .line 2458
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_5
    move/from16 v20, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    goto :goto_7

    .line 2462
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_6
    :goto_6
    iget-object v1, v6, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    .line 2464
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v4, v7, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2465
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2462
    move-object v9, v1

    move-object v1, v6

    move-object/from16 v19, v2

    move-object v2, v5

    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .local v19, "op":Lcom/android/server/AppOpsService$Op;
    move/from16 v20, v3

    move-object/from16 v3, v17

    .end local v3    # "pkgi":I
    .local v20, "pkgi":I
    const/16 v17, 0x4

    move-object/from16 v18, v5

    move-object v5, v8

    .end local v5    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    .local v18, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2458
    .end local v19    # "op":Lcom/android/server/AppOpsService$Op;
    :goto_7
    add-int/lit8 v0, v20, -0x1

    .end local v20    # "pkgi":I
    .restart local v0    # "pkgi":I
    move/from16 v4, v17

    move-object/from16 v5, v18

    const/4 v9, 0x1

    goto :goto_5

    .line 2449
    .end local v0    # "pkgi":I
    .end local v16    # "doAllPackages":Z
    .end local v18    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    :cond_7
    :goto_8
    add-int/lit8 v0, v15, -0x1

    .end local v15    # "cbi":I
    .local v0, "cbi":I
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 2441
    .end local v0    # "cbi":I
    .end local v13    # "code":I
    .end local v14    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_8
    :goto_9
    add-int/lit8 v0, v12, -0x1

    .end local v12    # "fgi":I
    .local v0, "fgi":I
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 2473
    .end local v0    # "fgi":I
    :cond_9
    return-void
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3270
    const-string v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3271
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3272
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3273
    const-string v0, "  start [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3274
    const-string v0, "    Starts a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3275
    const-string v0, "  stop [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3276
    const-string v0, "    Stops a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3277
    const-string v0, "  set [--user <USER_ID>] <PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3278
    const-string v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3279
    const-string v0, "  get [--user <USER_ID>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3280
    const-string v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3281
    const-string v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3282
    const-string v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3283
    const-string v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3284
    const-string v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3285
    const-string v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3286
    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3287
    const-string v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3288
    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3289
    const-string v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3290
    const-string v0, "    <PACKAGE> an Android package name."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3291
    const-string v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3292
    const-string v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3293
    const-string v0, "    <USER_ID> the user id under which the package is installed. If --user is not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3294
    const-string v0, "              specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3295
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3511
    const-string v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3512
    const-string v0, "  -h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3513
    const-string v0, "    Print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3514
    const-string v0, "  --op [OP]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3515
    const-string v0, "    Limit output to data associated with the given app op code."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3516
    const-string v0, "  --mode [MODE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3517
    const-string v0, "    Limit output to data associated with the given app op mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3518
    const-string v0, "  --package [PACKAGE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3519
    const-string v0, "    Limit output to data associated with the given package name."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3520
    return-void
.end method

.method private dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "firstPrefix"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "times"    # [J
    .param p5, "now"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p8, "date"    # Ljava/util/Date;

    move-object v0, p1

    .line 3524
    const/4 v1, 0x0

    .line 3525
    .local v1, "hasTime":Z
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    if-ge v3, v6, :cond_1

    .line 3526
    aget-wide v7, p4, v3

    cmp-long v7, v7, v4

    if-eqz v7, :cond_0

    .line 3527
    const/4 v1, 0x1

    .line 3528
    goto :goto_1

    .line 3525
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3531
    .end local v3    # "i":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 3532
    return-void

    .line 3534
    :cond_2
    const/4 v3, 0x1

    .line 3535
    .local v3, "first":Z
    nop

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_5

    .line 3536
    aget-wide v7, p4, v2

    cmp-long v7, v7, v4

    if-eqz v7, :cond_4

    .line 3537
    if-eqz v3, :cond_3

    move-object v7, p2

    goto :goto_3

    :cond_3
    move-object v7, p3

    :goto_3
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3538
    const/4 v3, 0x0

    .line 3539
    sget-object v7, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3540
    const-string v7, " = "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3541
    aget-wide v7, p4, v2

    move-object/from16 v9, p8

    invoke-virtual {v9, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 3542
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3543
    const-string v7, " ("

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3544
    aget-wide v7, p4, v2

    sub-long v7, v7, p5

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3545
    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3535
    :cond_4
    move-object/from16 v9, p8

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3548
    .end local v2    # "i":I
    :cond_5
    move-object/from16 v9, p8

    return-void
.end method

.method private evalAllForegroundOpsLocked()V
    .locals 3

    .line 1367
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidi":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1368
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$UidState;

    .line 1369
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_0

    .line 1370
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1367
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1373
    .end local v0    # "uidi":I
    :cond_1
    return-void
.end method

.method private getApplicationInfoByName(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1762
    const/4 v0, 0x0

    move-object v1, v0

    .line 1764
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v2, p2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1767
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 1768
    return-object v0

    .line 1765
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 1766
    .local v2, "re":Landroid/os/RemoteException;
    return-object v0
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .line 2573
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 2575
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 2576
    const/4 v1, 0x0

    return-object v1

    .line 2578
    :cond_0
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .locals 4
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .line 2582
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 2583
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_1

    .line 2584
    if-nez p3, :cond_0

    .line 2585
    const/4 v1, 0x0

    return-object v1

    .line 2587
    :cond_0
    new-instance v1, Lcom/android/server/AppOpsService$Op;

    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V

    move-object v0, v1

    .line 2588
    invoke-virtual {p1, p2, v0}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2590
    :cond_1
    if-eqz p3, :cond_2

    .line 2591
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 2593
    :cond_2
    return-object v0
.end method

.method private getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;
    .locals 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z
    .param p4, "uidMismatchExpected"    # Z

    .line 2477
    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    .line 2478
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2479
    return-object v1

    .line 2482
    :cond_0
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    .line 2483
    if-nez p3, :cond_1

    .line 2484
    return-object v1

    .line 2486
    :cond_1
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2489
    :cond_2
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;

    .line 2490
    .local v2, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v2, :cond_c

    .line 2491
    if-nez p3, :cond_3

    .line 2492
    return-object v1

    .line 2494
    :cond_3
    const/4 v3, 0x0

    .line 2497
    .local v3, "isPrivileged":Z
    if-eqz p1, :cond_b

    .line 2498
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2500
    .local v4, "ident":J
    const/4 v6, -0x1

    .line 2502
    .local v6, "pkgUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/high16 v8, 0x10000000

    .line 2505
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2503
    invoke-interface {v7, p2, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 2506
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_5

    .line 2507
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move v6, v8

    .line 2508
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    :goto_0
    move v3, v8

    goto :goto_1

    .line 2511
    :cond_5
    invoke-static {p2}, Lcom/android/server/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v8

    .line 2512
    if-ltz v6, :cond_6

    .line 2513
    const/4 v3, 0x0

    .line 2518
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    :goto_1
    goto :goto_2

    .line 2537
    .end local v6    # "pkgUid":I
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 2516
    .restart local v6    # "pkgUid":I
    :catch_0
    move-exception v7

    .line 2517
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v8, "AppOps"

    const-string v9, "Could not contact PackageManager"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2519
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_2
    if-eq v6, p1, :cond_a

    .line 2522
    if-nez p4, :cond_7

    .line 2523
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "here"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2524
    .local v7, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2525
    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad call: specified package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " under uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " but it is really "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2528
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :cond_7
    if-eqz p2, :cond_9

    const-string v7, "com.android.settings"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "cn.nubia.factory"

    .line 2529
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2530
    :cond_8
    new-instance v1, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v1, p2, v0, v3}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    move-object v2, v1

    .line 2531
    iget-object v1, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2532
    nop

    .line 2537
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2532
    return-object v2

    .line 2534
    :cond_9
    nop

    .line 2537
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2534
    return-object v1

    .line 2537
    .end local v6    # "pkgUid":I
    :cond_a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2538
    goto :goto_4

    .line 2537
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2540
    .end local v4    # "ident":J
    :cond_b
    :goto_4
    new-instance v1, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v1, p2, v0, v3}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    move-object v2, v1

    .line 2541
    iget-object v1, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2543
    .end local v3    # "isPrivileged":Z
    :cond_c
    return-object v2
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # I

    .line 4184
    const/4 v0, 0x0

    .line 4186
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 4189
    goto :goto_0

    .line 4187
    :catch_0
    move-exception v1

    .line 4190
    :goto_0
    if-nez v0, :cond_0

    .line 4191
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 4193
    :cond_0
    return-object v0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    .line 2413
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 2414
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_1

    .line 2415
    if-nez p2, :cond_0

    .line 2416
    const/4 v1, 0x0

    return-object v1

    .line 2418
    :cond_0
    new-instance v1, Lcom/android/server/AppOpsService$UidState;

    invoke-direct {v1, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    move-object v0, v1

    .line 2419
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2421
    :cond_1
    iget-wide v1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 2422
    iget-wide v1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v3, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 2423
    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    goto :goto_0

    .line 2425
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    .line 2426
    iget-wide v1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v3, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 2427
    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    .line 2432
    :cond_3
    :goto_0
    return-object v0
.end method

.method private isContain([II)Z
    .locals 4
    .param p1, "src"    # [I
    .param p2, "dest"    # I

    .line 1814
    const/4 v0, 0x0

    .line 1815
    .local v0, "contain":Z
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 1816
    .local v3, "op":I
    if-ne v3, p2, :cond_0

    .line 1817
    const/4 v0, 0x1

    .line 1818
    goto :goto_1

    .line 1815
    .end local v3    # "op":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1821
    :cond_1
    :goto_1
    return v0
.end method

.method private isDangerousPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1776
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 1779
    :cond_0
    const/4 v1, 0x0

    .line 1781
    .local v1, "permissionInfo":Landroid/content/pm/PermissionInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1784
    nop

    .line 1785
    if-nez v1, :cond_1

    .line 1786
    return v0

    .line 1788
    :cond_1
    iget v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v3, v2, :cond_2

    move v0, v3

    nop

    :cond_2
    return v0

    .line 1782
    :catch_0
    move-exception v2

    .line 1783
    .local v2, "re":Landroid/os/RemoteException;
    return v0

    .line 1777
    .end local v1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return v0
.end method

.method private isNotNeedShowPermission(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 1772
    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2597
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2598
    .local v0, "userHandle":I
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2600
    .local v1, "restrictionSetCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2603
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 2604
    .local v4, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-virtual {v4, p2, p3, v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2605
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 2607
    monitor-enter p0

    .line 2608
    :try_start_0
    invoke-direct {p0, p1, p3, v6, v2}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v5

    .line 2610
    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v5, :cond_0

    iget-boolean v7, v5, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    if-eqz v7, :cond_0

    .line 2611
    monitor-exit p0

    return v2

    .line 2613
    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2615
    :cond_1
    :goto_1
    return v6

    .line 2600
    .end local v4    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2618
    .end local v3    # "i":I
    :cond_3
    return v2
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1514
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1515
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1514
    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1516
    :catch_0
    move-exception v0

    .line 1517
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Could not talk to package manager service"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isPermissionGranted(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1793
    const/4 v0, 0x0

    .line 1795
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v2, p2, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1798
    nop

    .line 1799
    if-eqz v0, :cond_4

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    .line 1802
    :cond_0
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    .line 1803
    .local v2, "permissionCount":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 1804
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 1805
    .local v4, "requestedPermission":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1806
    nop

    .line 1803
    .end local v4    # "requestedPermission":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1808
    .restart local v4    # "requestedPermission":Ljava/lang/String;
    :cond_1
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v5, v5, v3

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 1810
    .end local v3    # "i":I
    .end local v4    # "requestedPermission":Ljava/lang/String;
    :cond_3
    return v1

    .line 1800
    .end local v2    # "permissionCount":I
    :cond_4
    :goto_1
    return v1

    .line 1796
    :catch_0
    move-exception v2

    .line 1797
    .local v2, "e":Ljava/lang/Exception;
    return v1
.end method

.method public static synthetic lambda$1lQKm3WHEUQsD7KzYyJ5stQSc04(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$NC5g1JY4YR6y4VePru4TO7AKp8M(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$UKMH8n9xZqCOX59uFPylskhjBgo(Lcom/android/server/AppOpsService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method public static synthetic lambda$lxgFmOnGguOiLyfUZbyOpNBfTVw(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V

    return-void
.end method

.method private notAskOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
    .locals 9
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # Lcom/android/server/AppOpsService$Op;

    .line 1920
    new-instance v0, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    invoke-direct {v0}, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;-><init>()V

    .line 1921
    .local v0, "request":Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/AppOpsService$NoDialogRunnable;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AppOpsService$NoDialogRunnable;-><init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1922
    return-object v0
.end method

.method private notConvertAskToAllowed(II)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "mode"    # I

    .line 2181
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2182
    return v0

    .line 2184
    :cond_0
    const-string v1, "1"

    const-string/jumbo v2, "sys.nubia.cts.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2185
    .local v1, "isCtsRunning":Z
    const/16 v2, 0x10

    if-eq p1, v2, :cond_2

    const/16 v2, 0x12

    if-eq p1, v2, :cond_2

    if-eqz v1, :cond_1

    const/16 v2, 0x3b

    if-eq p1, v2, :cond_2

    const/16 v2, 0x3c

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private notNeedAskOperation(IILjava/lang/String;)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1735
    const/4 v0, 0x0

    .line 1736
    .local v0, "isDangerousPermission":Z
    const/4 v1, 0x1

    .line 1737
    .local v1, "isTargetSdkVersionMAbove":Z
    const/4 v2, 0x0

    .line 1739
    .local v2, "isNotNeedShowPermission":Z
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/android/server/AppOpsService;->isDangerousPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1740
    .local v3, "opDangerous":Z
    const/4 v4, 0x0

    .line 1741
    .local v4, "switchDangerous":Z
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 1742
    move v4, v3

    goto :goto_0

    .line 1744
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v5

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p3}, Lcom/android/server/AppOpsService;->isDangerousPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1746
    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v7, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v5

    :goto_2
    move v0, v7

    .line 1748
    invoke-direct {p0, p2, p3}, Lcom/android/server/AppOpsService;->getApplicationInfoByName(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 1749
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v7, :cond_3

    .line 1750
    return v6

    .line 1753
    :cond_3
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_4

    move v8, v5

    goto :goto_3

    :cond_4
    move v8, v6

    :goto_3
    move v1, v8

    .line 1754
    if-nez v1, :cond_5

    .line 1756
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->isNotNeedShowPermission(I)Z

    move-result v2

    .line 1758
    :cond_5
    if-eqz v0, :cond_6

    if-nez v1, :cond_7

    :cond_6
    if-eqz v2, :cond_8

    :cond_7
    goto :goto_4

    :cond_8
    move v5, v6

    :goto_4
    return v5
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I
    .locals 18
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyUid"    # I
    .param p5, "proxyPackageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1628
    move-object/from16 v6, p5

    monitor-enter p0

    .line 1629
    const/4 v0, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-direct {v1, v3, v4, v7, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v8

    .line 1631
    .local v8, "ops":Lcom/android/server/AppOpsService$Ops;
    const/4 v9, 0x2

    if-nez v8, :cond_0

    .line 1634
    monitor-exit p0

    return v9

    .line 1636
    :cond_0
    invoke-direct {v1, v8, v2, v7}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v10

    .line 1637
    .local v10, "op":Lcom/android/server/AppOpsService$Op;
    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1638
    monitor-exit p0

    return v7

    .line 1640
    :cond_1
    iget-object v11, v8, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1641
    .local v11, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget v12, v10, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    .line 1642
    const-string v12, "AppOps"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Noting op not finished: uid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " pkg "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " time="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v15, v11, Lcom/android/server/AppOpsService$UidState;->state:I

    aget-wide v14, v14, v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " duration="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_2
    iput v0, v10, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1647
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v12

    .line 1650
    .local v12, "switchCode":I
    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v13, :cond_3

    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v13

    if-ltz v13, :cond_3

    .line 1651
    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/android/server/AppOpsService$UidState;->evalMode(I)I

    move-result v13

    .line 1652
    .local v13, "uidMode":I
    if-eqz v13, :cond_3

    .line 1656
    iget-object v0, v10, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v7, v11, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v0, v7

    .line 1657
    monitor-exit p0

    return v13

    .line 1661
    .end local v13    # "uidMode":I
    :cond_3
    if-eq v12, v2, :cond_4

    invoke-direct {v1, v8, v12, v7}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v13

    goto :goto_0

    :cond_4
    move-object v13, v10

    .line 1662
    .local v13, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    iget v14, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v15, 0x4

    const-wide/16 v16, 0x0

    if-ne v14, v15, :cond_6

    .line 1663
    iget v14, v11, Lcom/android/server/AppOpsService$UidState;->state:I

    if-gt v14, v9, :cond_5

    .line 1667
    iget-object v7, v10, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v9, v11, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v7, v9

    .line 1668
    iget-object v7, v10, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v9, v11, Lcom/android/server/AppOpsService$UidState;->state:I

    aput-wide v16, v7, v9

    .line 1669
    iput v5, v10, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1670
    iput-object v6, v10, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 1671
    monitor-exit p0

    return v0

    .line 1677
    :cond_5
    iget-object v0, v10, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v9, v11, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v0, v9

    .line 1678
    monitor-exit p0

    return v7

    .line 1680
    :cond_6
    iget v9, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v9, :cond_7

    iget v9, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v14, 0x5

    if-eq v9, v14, :cond_7

    .line 1685
    iget-object v0, v10, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v7, v11, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v0, v7

    .line 1686
    iget v0, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    return v0

    .line 1687
    :cond_7
    iget v9, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v9, :cond_8

    .line 1690
    iget-object v7, v10, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v9, v11, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v7, v9

    .line 1691
    iget-object v7, v10, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v9, v11, Lcom/android/server/AppOpsService$UidState;->state:I

    aput-wide v16, v7, v9

    .line 1692
    iput v5, v10, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1693
    iput-object v6, v10, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 1694
    monitor-exit p0

    return v0

    .line 1696
    :cond_8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    if-ne v0, v9, :cond_9

    .line 1697
    const-string v0, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "noteOperation: This method will deadlock if called from the main thread. (Code: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " uid: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " package: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget v0, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    return v0

    .line 1706
    :cond_9
    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_a

    const-string v0, "cn.nubia.security2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "cn.nubia.security2"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "appops_app_state_monitor"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1707
    const-string v0, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "noteOperation: This method will deadlock if called from the SYSTEM_UID process. (code: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " uid: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " package: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget v0, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    return v0

    .line 1715
    :cond_a
    invoke-direct/range {p0 .. p3}, Lcom/android/server/AppOpsService;->notNeedAskOperation(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1716
    const-string v0, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "do not show dialog !!! application "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " targetSdkversion below M , and op "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " is dangerous permission ."

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1720
    monitor-exit p0

    return v7

    .line 1722
    :cond_b
    invoke-direct {v1, v2, v3, v4, v13}, Lcom/android/server/AppOpsService;->notAskOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    move-result-object v0

    .line 1722
    .local v0, "req":Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
    goto :goto_1

    .line 1724
    .end local v0    # "req":Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
    :cond_c
    iget v0, v10, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    add-int/2addr v0, v7

    iput v0, v10, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 1725
    invoke-direct {v1, v2, v3, v4, v13}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;

    move-result-object v0

    .line 1728
    .end local v8    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v10    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v12    # "switchCode":I
    .end local v13    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .restart local v0    # "req":Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    invoke-virtual {v0}, Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;->get()I

    move-result v7

    return v7

    .line 1728
    .end local v0    # "req":Lcom/android/server/NubiaPermissionDialogReqQueue$NubiaPermissionDialogReq;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private noteOperationUncheckedForM(IILjava/lang/String;ILjava/lang/String;)I
    .locals 20
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyUid"    # I
    .param p5, "proxyPackageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 2089
    move-object/from16 v6, p5

    monitor-enter p0

    .line 2090
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {v1, v3, v4, v0, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v7

    .line 2091
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    const/4 v8, 0x2

    if-nez v7, :cond_0

    .line 2094
    monitor-exit p0

    return v8

    .line 2096
    :cond_0
    invoke-direct {v1, v7, v2, v0}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v9

    .line 2097
    .local v9, "op":Lcom/android/server/AppOpsService$Op;
    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2098
    monitor-exit p0

    return v0

    .line 2100
    :cond_1
    iget v10, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 2101
    const-string v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "noteOperationForM Noting op not finished: uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " pkg "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " code "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " duration="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    :cond_2
    const/4 v10, 0x0

    iput v10, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 2105
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v11

    .line 2106
    .local v11, "switchCode":I
    iget-object v12, v7, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 2107
    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v13, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v14, 0x5

    const/4 v15, 0x4

    const-wide/16 v16, 0x0

    if-eqz v13, :cond_6

    .line 2108
    iget-object v13, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    .line 2109
    .local v13, "uidMode":I
    if-ne v13, v15, :cond_4

    .line 2110
    iget v14, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    if-gt v14, v8, :cond_3

    .line 2114
    iget-object v0, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v8, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v0, v8

    .line 2115
    iget-object v0, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v8, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    aput-wide v16, v0, v8

    .line 2116
    iput v5, v9, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 2117
    iput-object v6, v9, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 2118
    monitor-exit p0

    return v10

    .line 2124
    :cond_3
    iget-object v8, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v10, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v8, v10

    .line 2125
    monitor-exit p0

    return v0

    .line 2127
    :cond_4
    invoke-direct {v1, v11, v13}, Lcom/android/server/AppOpsService;->notConvertAskToAllowed(II)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 2131
    iget-object v0, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v8, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v0, v8

    .line 2132
    monitor-exit p0

    return v13

    .line 2133
    :cond_5
    if-eqz v13, :cond_6

    if-eq v13, v14, :cond_6

    .line 2137
    iget-object v0, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v8, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v0, v8

    .line 2138
    monitor-exit p0

    return v13

    .line 2141
    .end local v13    # "uidMode":I
    :cond_6
    if-eq v11, v2, :cond_7

    invoke-direct {v1, v7, v11, v0}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v13

    goto :goto_0

    :cond_7
    move-object v13, v9

    .line 2142
    .local v13, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    iget v14, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v14, v15, :cond_9

    .line 2143
    iget v14, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    if-gt v14, v8, :cond_8

    .line 2147
    iget-object v0, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v8, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v0, v8

    .line 2148
    iget-object v0, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v8, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    aput-wide v16, v0, v8

    .line 2149
    iput v5, v9, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 2150
    iput-object v6, v9, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 2151
    monitor-exit p0

    return v10

    .line 2157
    :cond_8
    iget-object v8, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v10, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v8, v10

    .line 2158
    monitor-exit p0

    return v0

    .line 2160
    :cond_9
    iget v0, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-direct {v1, v11, v0}, Lcom/android/server/AppOpsService;->notConvertAskToAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2163
    iget-object v0, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v8, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v0, v8

    .line 2164
    iget v0, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    return v0

    .line 2165
    :cond_a
    iget v0, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v0, :cond_b

    iget v0, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v8, 0x5

    if-eq v0, v8, :cond_b

    .line 2168
    iget-object v0, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v8, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v0, v8

    .line 2169
    iget v0, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    return v0

    .line 2173
    :cond_b
    iget-object v0, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v8, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v0, v8

    .line 2174
    iget-object v0, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v8, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    aput-wide v16, v0, v8

    .line 2175
    iput v5, v9, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 2176
    iput-object v6, v9, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 2177
    monitor-exit p0

    return v10

    .line 2178
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v9    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "switchCode":I
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v13    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .locals 6
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ActiveCallback;",
            ">;II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 2350
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2352
    .local v0, "identity":J
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2353
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2354
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ActiveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2356
    .local v4, "callback":Lcom/android/server/AppOpsService$ActiveCallback;
    :try_start_1
    iget-object v5, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {v5, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2359
    goto :goto_1

    .line 2357
    :catch_0
    move-exception v5

    .line 2353
    .end local v4    # "callback":Lcom/android/server/AppOpsService$ActiveCallback;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2362
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2363
    nop

    .line 2364
    return-void

    .line 2362
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 2
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1179
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1180
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1181
    .local v1, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V

    .line 1179
    .end local v1    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1183
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/server/AppOpsService$ModeCallback;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1187
    const/4 v0, -0x2

    if-eq p3, v0, :cond_0

    iget v0, p1, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-eq v0, p3, :cond_0

    .line 1188
    return-void

    .line 1193
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1195
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p1, Lcom/android/server/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v2, p2, p3, p4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1199
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1196
    :catch_0
    move-exception v2

    .line 1199
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1200
    nop

    .line 1201
    return-void
.end method

.method private notifyWatchersOfChange(II)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I

    .line 4082
    monitor-enter p0

    .line 4083
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 4084
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-nez v0, :cond_0

    .line 4085
    monitor-exit p0

    return-void

    .line 4087
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    move-object v0, v1

    .line 4088
    .local v0, "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4090
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    .line 4091
    return-void

    .line 4088
    .end local v0    # "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I
    .locals 18
    .param p0, "shell"    # Lcom/android/server/AppOpsService$Shell;
    .param p1, "cmd"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 3298
    move-object/from16 v2, p1

    if-nez v2, :cond_0

    .line 3299
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3301
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 3302
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    move-object v4, v0

    .line 3304
    .local v4, "err":Ljava/io/PrintWriter;
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "read-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "start"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "stop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "set"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_1

    :sswitch_5
    const-string v0, "get"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "query-op"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "write-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 3502
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_f

    .line 3488
    :pswitch_0
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3489
    .local v0, "res":I
    if-gez v0, :cond_2

    .line 3490
    return v0

    .line 3493
    :cond_2
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 3494
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v9, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v11, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 3499
    return v7

    .line 3497
    :cond_3
    return v5

    .line 3474
    .end local v0    # "res":I
    :pswitch_1
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3475
    .restart local v0    # "res":I
    if-gez v0, :cond_4

    .line 3476
    return v0

    .line 3479
    :cond_4
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 3480
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    .line 3485
    return v7

    .line 3483
    :cond_5
    return v5

    .line 3462
    .end local v0    # "res":I
    :pswitch_2
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3463
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3462
    invoke-virtual {v0, v6, v8, v5}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3464
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3466
    .local v8, "token":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/AppOpsService;->readState()V

    .line 3467
    const-string v0, "Last settings read."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3469
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3470
    nop

    .line 3471
    return v7

    .line 3469
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3447
    .end local v8    # "token":J
    :pswitch_3
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3448
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3447
    invoke-virtual {v0, v6, v8, v5}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3449
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3451
    .restart local v8    # "token":J
    :try_start_3
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3452
    :try_start_4
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    iget-object v10, v10, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3453
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3454
    :try_start_5
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 3455
    const-string v0, "Current settings written."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3457
    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 3458
    nop

    .line 3459
    return v7

    .line 3453
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3457
    :catchall_2
    move-exception v0

    :try_start_9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3411
    .end local v8    # "token":J
    :pswitch_4
    const/4 v0, 0x0

    .line 3412
    .local v0, "packageName":Ljava/lang/String;
    const/4 v6, -0x2

    move-object v8, v0

    move v0, v6

    .line 3413
    .local v0, "userId":I
    .local v8, "packageName":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 3413
    .local v10, "argument":Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 3414
    const-string v9, "--user"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3415
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 3416
    .local v9, "userStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v11

    move v0, v11

    .line 3417
    .end local v9    # "userStr":Ljava/lang/String;
    goto :goto_2

    .line 3418
    :cond_6
    if-nez v8, :cond_7

    .line 3419
    move-object v8, v10

    goto :goto_2

    .line 3421
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unsupported argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3422
    return v5

    .line 3427
    .end local v10    # "argument":Ljava/lang/String;
    :cond_8
    if-ne v0, v6, :cond_9

    .line 3428
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    move v0, v6

    .line 3431
    :cond_9
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v6, v0, v8}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 3432
    const-string v6, "Reset all modes for: "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3433
    if-ne v0, v5, :cond_a

    .line 3434
    const-string v6, "all users"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 3436
    :cond_a
    const-string/jumbo v6, "user "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3438
    :goto_3
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3439
    if-nez v8, :cond_b

    .line 3440
    const-string v6, "all packages"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3442
    :cond_b
    const-string/jumbo v6, "package "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3444
    :goto_4
    return v7

    .line 3383
    .end local v0    # "userId":I
    .end local v8    # "packageName":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v0

    .line 3384
    .local v0, "res":I
    if-gez v0, :cond_c

    .line 3385
    return v0

    .line 3387
    :cond_c
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    new-array v6, v6, [I

    iget v9, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v9, v6, v7

    invoke-interface {v8, v6}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 3389
    .local v6, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_12

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_d

    goto :goto_8

    .line 3393
    :cond_d
    move v8, v7

    .line 3393
    .local v8, "i":I
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_11

    .line 3394
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 3395
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    const/4 v10, 0x0

    .line 3396
    .local v10, "hasMatch":Z
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 3397
    .local v11, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v12, v7

    .line 3397
    .local v12, "j":I
    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_f

    .line 3398
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 3399
    .local v13, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    iget v15, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-ne v14, v15, :cond_e

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    iget v15, v1, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-ne v14, v15, :cond_e

    .line 3400
    const/4 v10, 0x1

    .line 3401
    goto :goto_7

    .line 3397
    .end local v13    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 3404
    .end local v12    # "j":I
    :cond_f
    :goto_7
    if-eqz v10, :cond_10

    .line 3405
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3393
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "hasMatch":Z
    .end local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 3408
    .end local v8    # "i":I
    :cond_11
    return v7

    .line 3390
    :cond_12
    :goto_8
    const-string v8, "No operations."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3391
    return v7

    .line 3330
    .end local v0    # "res":I
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_6
    invoke-virtual {v1, v7, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3331
    .restart local v0    # "res":I
    if-gez v0, :cond_13

    .line 3332
    return v0

    .line 3336
    :cond_13
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v8, :cond_15

    .line 3337
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v11, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3339
    iget v12, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-eq v12, v5, :cond_14

    new-array v9, v6, [I

    iget v6, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v6, v9, v7

    nop

    .line 3337
    :cond_14
    invoke-interface {v8, v10, v11, v9}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v6

    .line 3337
    .restart local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_9

    .line 3341
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_15
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    .line 3343
    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-eq v11, v5, :cond_16

    new-array v9, v6, [I

    iget v6, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v6, v9, v7

    nop

    .line 3341
    :cond_16
    invoke-interface {v8, v10, v9}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v6

    .line 3345
    .restart local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_9
    if-eqz v6, :cond_1e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_17

    goto/16 :goto_d

    .line 3353
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3354
    .local v8, "now":J
    move v10, v7

    .line 3354
    .local v10, "i":I
    :goto_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1d

    .line 3355
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 3356
    .restart local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v12, v7

    .line 3356
    .restart local v12    # "j":I
    :goto_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_1c

    .line 3357
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 3358
    .restart local v13    # "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3359
    const-string v14, ": "

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3360
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3361
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_18

    .line 3362
    const-string v14, "; time="

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3363
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v14

    sub-long v14, v8, v14

    invoke-static {v14, v15, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3364
    const-string v14, " ago"

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3366
    :cond_18
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v14

    cmp-long v14, v14, v16

    if-eqz v14, :cond_19

    .line 3367
    const-string v14, "; rejectTime="

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3368
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v14

    sub-long v14, v8, v14

    invoke-static {v14, v15, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3369
    const-string v14, " ago"

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3371
    :cond_19
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v14

    if-ne v14, v5, :cond_1a

    .line 3372
    const-string v14, " (running)"

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_c

    .line 3373
    :cond_1a
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v14

    if-eqz v14, :cond_1b

    .line 3374
    const-string v14, "; duration="

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3375
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v14

    int-to-long v14, v14

    invoke-static {v14, v15, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3377
    :cond_1b
    :goto_c
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 3356
    .end local v13    # "ent":Landroid/app/AppOpsManager$OpEntry;
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_b

    .line 3354
    .end local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v12    # "j":I
    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_a

    .line 3380
    .end local v10    # "i":I
    :cond_1d
    return v7

    .line 3346
    .end local v8    # "now":J
    :cond_1e
    :goto_d
    const-string v8, "No operations."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3347
    iget v8, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-le v8, v5, :cond_1f

    iget v8, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    const/16 v9, 0x59

    if-ge v8, v9, :cond_1f

    .line 3348
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Default mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 3349
    invoke-static {v9}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v9

    .line 3348
    invoke-static {v9}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3351
    :cond_1f
    return v7

    .line 3306
    .end local v0    # "res":I
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_7
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3307
    .restart local v0    # "res":I
    if-gez v0, :cond_20

    .line 3308
    return v0

    .line 3310
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 3311
    .local v6, "modeStr":Ljava/lang/String;
    if-nez v6, :cond_21

    .line 3312
    const-string v7, "Error: Mode not specified."

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3313
    return v5

    .line 3316
    :cond_21
    invoke-static {v6, v4}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v8

    .line 3317
    .local v8, "mode":I
    if-gez v8, :cond_22

    .line 3318
    return v5

    .line 3321
    :cond_22
    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_23

    .line 3322
    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v12, v8}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto :goto_e

    .line 3325
    :cond_23
    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v9, v10, v11, v8}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 3327
    :goto_e
    return v7

    .line 3502
    .end local v0    # "res":I
    .end local v6    # "modeStr":Ljava/lang/String;
    .end local v8    # "mode":I
    :goto_f
    return v0

    .line 3504
    :catch_0
    move-exception v0

    .line 3505
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3507
    .end local v0    # "e":Landroid/os/RemoteException;
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x658cadaf -> :sswitch_7
        -0x458a76fa -> :sswitch_6
        0x18f56 -> :sswitch_5
        0x1bc62 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x6761d4f -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x7c514e7a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "mode"    # I
    .param p3, "operation"    # Ljava/lang/String;

    .line 1986
    if-eqz p1, :cond_1

    .line 1987
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 1988
    .local v0, "switchCode":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .end local v0    # "switchCode":I
    goto :goto_0

    .line 1992
    .restart local v0    # "switchCode":I
    :cond_0
    nop

    .line 1998
    .end local v0    # "switchCode":I
    :cond_1
    :goto_0
    return-void
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 989
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Op;->hasAnyTime()Z

    move-result v0

    if-nez v0, :cond_1

    .line 990
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 992
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_1

    .line 993
    iget v1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    .line 994
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 995
    iget-object v1, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 996
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 997
    .local v2, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v2, :cond_1

    .line 998
    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1000
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1002
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1003
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1009
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v2    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_1
    return-void
.end method

.method private recordOperationLocked(IILjava/lang/String;I)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 1971
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 1972
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v0, :cond_2

    .line 1973
    iget-object v1, v0, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1974
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v1, :cond_0

    return-void

    .line 1975
    :cond_0
    const-string/jumbo v2, "noteOperartion"

    invoke-direct {p0, v0, p4, v2}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1976
    const/4 v2, 0x1

    if-ne p4, v2, :cond_1

    .line 1977
    iget-object v2, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    goto :goto_0

    .line 1978
    :cond_1
    if-nez p4, :cond_2

    .line 1979
    iget-object v2, v0, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 1980
    iget-object v2, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 1983
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    :goto_0
    return-void
.end method

.method private removeUidsForUserLocked(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 4132
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4133
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 4134
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 4135
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4132
    .end local v1    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4138
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4148
    if-nez p0, :cond_0

    .line 4149
    const-string/jumbo v0, "root"

    return-object v0

    .line 4150
    :cond_0
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_1

    .line 4151
    const-string v0, "com.android.shell"

    return-object v0

    .line 4152
    :cond_1
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_2

    .line 4153
    const-string/jumbo v0, "media"

    return-object v0

    .line 4154
    :cond_2
    const/16 v0, 0x411

    if-ne p0, v0, :cond_3

    .line 4155
    const-string v0, "audioserver"

    return-object v0

    .line 4156
    :cond_3
    const/16 v0, 0x417

    if-ne p0, v0, :cond_4

    .line 4157
    const-string v0, "cameraserver"

    return-object v0

    .line 4158
    :cond_4
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_5

    if-nez p1, :cond_5

    .line 4159
    const-string v0, "android"

    return-object v0

    .line 4161
    :cond_5
    return-object p1
.end method

.method private static resolveUid(Ljava/lang/String;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 4165
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 4166
    return v0

    .line 4168
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "audioserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "shell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_4
    const-string v1, "cameraserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 4180
    return v0

    .line 4178
    :pswitch_0
    const/16 v0, 0x417

    return v0

    .line 4176
    :pswitch_1
    const/16 v0, 0x411

    return v0

    .line 4174
    :pswitch_2
    const/16 v0, 0x3f5

    return v0

    .line 4172
    :pswitch_3
    const/16 v0, 0x7d0

    return v0

    .line 4170
    :pswitch_4
    return v2

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1dbbd58 -> :sswitch_4
        0x3580e2 -> :sswitch_3
        0x62f6fe4 -> :sswitch_2
        0x6855e30 -> :sswitch_1
        0x50251299 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scheduleFastWriteLocked()V
    .locals 4

    .line 2554
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    .line 2555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 2556
    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    .line 2557
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2558
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2560
    :cond_0
    return-void
.end method

.method private scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z

    .line 2322
    const/4 v0, 0x0

    .line 2323
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2324
    .local v1, "callbackListCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2325
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2326
    .local v3, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ActiveCallback;

    .line 2327
    .local v4, "callback":Lcom/android/server/AppOpsService$ActiveCallback;
    if-eqz v4, :cond_2

    .line 2328
    iget v5, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v5, :cond_0

    iget v5, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-eq v5, p2, :cond_0

    .line 2329
    goto :goto_1

    .line 2331
    :cond_0
    if-nez v0, :cond_1

    .line 2332
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 2334
    :cond_1
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2324
    .end local v3    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    .end local v4    # "callback":Lcom/android/server/AppOpsService$ActiveCallback;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2337
    .end local v2    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 2338
    return-void

    .line 2340
    :cond_4
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;

    .line 2342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 2340
    move-object v4, p0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2343
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .line 2547
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 2548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 2549
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2551
    :cond_0
    return-void
.end method

.method private scheduleWriteNowLocked()V
    .locals 2

    .line 2564
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 2565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 2567
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2568
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2569
    return-void
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 4056
    monitor-enter p0

    .line 4057
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4059
    .local v0, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    if-nez v0, :cond_0

    .line 4061
    :try_start_1
    new-instance v1, Lcom/android/server/AppOpsService$ClientRestrictionState;

    invoke-direct {v1, p0, p3}, Lcom/android/server/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 4064
    nop

    .line 4065
    :try_start_2
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4062
    :catch_0
    move-exception v1

    .line 4063
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit p0

    return-void

    .line 4068
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4069
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;

    .line 4070
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4069
    invoke-static {v2, p0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4073
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4074
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4075
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V

    .line 4077
    .end local v0    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :cond_2
    monitor-exit p0

    .line 4078
    return-void

    .line 4077
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private specialOpHanding(IILjava/lang/String;)I
    .locals 2
    .param p1, "mode"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2065
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 2068
    :cond_0
    const/16 v0, 0x18

    if-eq p2, v0, :cond_2

    const/16 v0, 0x54

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 2079
    :cond_1
    goto :goto_0

    .line 2070
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v1, p3, v0}, Lcn/nubia/server/appmgmt/permission/ToastUtils;->showTosat(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2071
    nop

    .line 2083
    :goto_0
    return p1

    .line 2066
    :cond_3
    :goto_1
    return p1
.end method

.method private upgradeLocked(I)V
    .locals 4
    .param p1, "oldVersion"    # I

    .line 2736
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 2737
    return-void

    .line 2739
    :cond_0
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading app-ops xml from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2742
    :cond_1
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->upgradeRunAnyInBackgroundLocked()V

    .line 2747
    :goto_0
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 2748
    return-void
.end method

.method private upgradeRunAnyInBackgroundLocked()V
    .locals 12

    .line 2700
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 2701
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    .line 2702
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v2, :cond_0

    .line 2703
    goto :goto_2

    .line 2705
    :cond_0
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/16 v4, 0x3f

    const/16 v5, 0x46

    if-eqz v3, :cond_1

    .line 2706
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 2707
    .local v3, "idx":I
    if-ltz v3, :cond_1

    .line 2708
    iget-object v6, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2709
    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 2708
    invoke-virtual {v6, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2712
    .end local v3    # "idx":I
    :cond_1
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_2

    .line 2713
    goto :goto_2

    .line 2715
    :cond_2
    const/4 v3, 0x0

    .line 2716
    .local v3, "changed":Z
    move v6, v3

    move v3, v0

    .local v3, "j":I
    .local v6, "changed":Z
    :goto_1
    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 2717
    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;

    .line 2718
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v7, :cond_3

    .line 2719
    invoke-virtual {v7, v4}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    .line 2720
    .local v8, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v8, :cond_3

    iget v9, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iget v10, v8, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 2721
    new-instance v9, Lcom/android/server/AppOpsService$Op;

    iget-object v10, v8, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v11, v8, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v5}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 2723
    .local v9, "copy":Lcom/android/server/AppOpsService$Op;
    iget v10, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iput v10, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 2724
    invoke-virtual {v7, v5, v9}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2725
    const/4 v6, 0x1

    .line 2716
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v9    # "copy":Lcom/android/server/AppOpsService$Op;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2729
    .end local v3    # "j":I
    :cond_4
    if-eqz v6, :cond_5

    .line 2730
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2700
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v6    # "changed":Z
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2733
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method private verifyIncomingOp(I)V
    .locals 3
    .param p1, "op"    # I

    .line 2406
    if-ltz p1, :cond_0

    const/16 v0, 0x59

    if-ge p1, v0, :cond_0

    .line 2407
    return-void

    .line 2409
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 2395
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2396
    return-void

    .line 2398
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2399
    return-void

    .line 2401
    :cond_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 2402
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 2401
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2403
    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 4
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1492
    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/android/server/AppOpsService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    .local v0, "suspended":Z
    goto :goto_0

    .line 1493
    .end local v0    # "suspended":Z
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 1498
    .local v0, "suspended":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1499
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio disabled for suspended package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    const/4 v1, 0x1

    return v1

    .line 1503
    :cond_0
    monitor-enter p0

    .line 1504
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I

    move-result v1

    .line 1505
    .local v1, "mode":I
    if-eqz v1, :cond_1

    .line 1506
    monitor-exit p0

    return v1

    .line 1508
    .end local v1    # "mode":I
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1509
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    return v1

    .line 1508
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 4
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1464
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1465
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1466
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1467
    .local v0, "resolvedPackageName":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1468
    return v1

    .line 1470
    :cond_0
    monitor-enter p0

    .line 1471
    :try_start_0
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1472
    monitor-exit p0

    return v1

    .line 1474
    :cond_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    move p1, v1

    .line 1475
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v2

    .line 1476
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1477
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 1478
    iget-object v1, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    monitor-exit p0

    return v1

    .line 1480
    :cond_2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 1481
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_3

    .line 1482
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    monitor-exit p0

    return v3

    .line 1484
    :cond_3
    iget v3, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    return v3

    .line 1485
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1568
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    monitor-enter p0

    .line 1570
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1572
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_0

    .line 1573
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1575
    :cond_0
    const/4 v1, 0x2

    monitor-exit p0

    return v1

    .line 1577
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 59
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    .line 3552
    move-object/from16 v13, p3

    iget-object v0, v15, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "AppOps"

    invoke-static {v0, v1, v14}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3554
    :cond_0
    const/4 v0, -0x1

    .line 3555
    .local v0, "dumpOp":I
    const/4 v1, 0x0

    .line 3556
    .local v1, "dumpPackage":Ljava/lang/String;
    const/4 v2, -0x1

    .line 3557
    .local v2, "dumpUid":I
    const/4 v3, -0x1

    .line 3559
    .local v3, "dumpMode":I
    const/4 v12, 0x0

    const/4 v11, 0x1

    if-eqz v13, :cond_d

    .line 3560
    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v12

    .line 3560
    .local v0, "i":I
    .local v2, "dumpOp":I
    .local v3, "dumpUid":I
    .local v4, "dumpMode":I
    :goto_0
    array-length v5, v13

    if-ge v0, v5, :cond_c

    .line 3561
    aget-object v5, v13, v0

    .line 3562
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "-h"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3563
    invoke-direct {v15, v14}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3564
    return-void

    .line 3565
    :cond_1
    const-string v6, "-a"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3565
    .end local v5    # "arg":Ljava/lang/String;
    goto/16 :goto_2

    .line 3567
    .restart local v5    # "arg":Ljava/lang/String;
    :cond_2
    const-string v6, "--op"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3568
    add-int/lit8 v0, v0, 0x1

    .line 3569
    array-length v6, v13

    if-lt v0, v6, :cond_3

    .line 3570
    const-string v6, "No argument for --op option"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3571
    return-void

    .line 3573
    :cond_3
    aget-object v6, v13, v0

    invoke-static {v6, v14}, Lcom/android/server/AppOpsService$Shell;->access$700(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v2

    .line 3574
    if-gez v2, :cond_9

    .line 3575
    return-void

    .line 3577
    :cond_4
    const-string v6, "--package"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3578
    add-int/lit8 v6, v0, 0x1

    .line 3579
    .end local v0    # "i":I
    .local v6, "i":I
    array-length v0, v13

    if-lt v6, v0, :cond_5

    .line 3580
    const-string v0, "No argument for --package option"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3581
    return-void

    .line 3583
    :cond_5
    aget-object v1, v13, v6

    .line 3585
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v7, 0xc02000

    invoke-interface {v0, v1, v7, v12}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    .line 3589
    goto :goto_1

    .line 3588
    :catch_0
    move-exception v0

    .line 3590
    :goto_1
    if-gez v3, :cond_6

    .line 3591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3592
    return-void

    .line 3594
    :cond_6
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3560
    .end local v3    # "dumpUid":I
    .local v0, "dumpUid":I
    move v3, v0

    move v0, v6

    goto :goto_2

    .line 3595
    .end local v6    # "i":I
    .local v0, "i":I
    .restart local v3    # "dumpUid":I
    :cond_7
    const-string v6, "--mode"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3596
    add-int/lit8 v0, v0, 0x1

    .line 3597
    array-length v6, v13

    if-lt v0, v6, :cond_8

    .line 3598
    const-string v6, "No argument for --mode option"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3599
    return-void

    .line 3601
    :cond_8
    aget-object v6, v13, v0

    invoke-static {v6, v14}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v4

    .line 3602
    if-gez v4, :cond_9

    .line 3603
    return-void

    .line 3560
    .end local v5    # "arg":Ljava/lang/String;
    :cond_9
    :goto_2
    add-int/2addr v0, v11

    goto/16 :goto_0

    .line 3605
    .restart local v5    # "arg":Ljava/lang/String;
    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_b

    .line 3606
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3607
    return-void

    .line 3609
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3610
    return-void

    .line 3615
    .end local v0    # "i":I
    .end local v5    # "arg":Ljava/lang/String;
    :cond_c
    move v10, v2

    move v5, v4

    move-object v4, v1

    goto :goto_3

    .line 3615
    .end local v4    # "dumpMode":I
    .local v0, "dumpOp":I
    .local v2, "dumpUid":I
    .local v3, "dumpMode":I
    :cond_d
    move v10, v0

    move-object v4, v1

    move v5, v3

    move v3, v2

    .line 3615
    .end local v0    # "dumpOp":I
    .end local v1    # "dumpPackage":Ljava/lang/String;
    .end local v2    # "dumpUid":I
    .local v3, "dumpUid":I
    .local v4, "dumpPackage":Ljava/lang/String;
    .local v5, "dumpMode":I
    .local v10, "dumpOp":I
    :goto_3
    monitor-enter p0

    .line 3616
    :try_start_1
    const-string v0, "Current AppOps Service state:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3617
    iget-object v0, v15, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    invoke-virtual {v0, v14}, Lcom/android/server/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 3618
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3620
    .local v6, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide/from16 v19, v0

    .line 3621
    .local v19, "nowElapsed":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3622
    .local v0, "nowUptime":J
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v8, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3623
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 3624
    .local v9, "date":Ljava/util/Date;
    const/4 v2, 0x0

    .line 3625
    .local v2, "needSep":Z
    if-gez v10, :cond_f

    if-gez v5, :cond_f

    if-nez v4, :cond_f

    :try_start_2
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v11, :cond_f

    .line 3626
    const-string v11, "  Profile owners:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3627
    move v11, v12

    .line 3627
    .local v11, "poi":I
    :goto_4
    iget-object v12, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_e

    .line 3628
    const-string v12, "    User #"

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3629
    iget-object v12, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 3630
    const-string v12, ": "

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3631
    iget-object v12, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-static {v14, v12}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3632
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3627
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x0

    goto :goto_4

    .line 3634
    .end local v11    # "poi":I
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 4010
    .end local v0    # "nowUptime":J
    .end local v2    # "needSep":Z
    .end local v6    # "now":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v19    # "nowElapsed":J
    :catchall_0
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    goto/16 :goto_45

    .line 3636
    .restart local v0    # "nowUptime":J
    .restart local v2    # "needSep":Z
    .restart local v6    # "now":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v19    # "nowElapsed":J
    :cond_f
    :goto_5
    :try_start_3
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-lez v11, :cond_17

    .line 3637
    const/4 v11, 0x0

    .line 3638
    .local v11, "printedHeader":Z
    move v12, v11

    move v11, v2

    const/4 v2, 0x0

    .line 3638
    .local v2, "i":I
    .local v11, "needSep":Z
    .local v12, "printedHeader":Z
    :goto_6
    move/from16 v23, v11

    :try_start_4
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 3638
    .end local v11    # "needSep":Z
    .local v23, "needSep":Z
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v2, v11, :cond_16

    .line 3639
    if-ltz v10, :cond_10

    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    if-eq v10, v11, :cond_10

    .line 3640
    nop

    .line 3638
    .end local v23    # "needSep":Z
    .restart local v11    # "needSep":Z
    :goto_7
    move/from16 v11, v23

    goto/16 :goto_a

    .line 3642
    .end local v11    # "needSep":Z
    .restart local v23    # "needSep":Z
    :cond_10
    const/4 v11, 0x0

    .line 3643
    .local v11, "printedOpHeader":Z
    move/from16 v24, v11

    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 3643
    .end local v11    # "printedOpHeader":Z
    .local v24, "printedOpHeader":Z
    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 3644
    .local v11, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    move/from16 v16, v12

    const/4 v12, 0x0

    .line 3644
    .local v12, "j":I
    .local v16, "printedHeader":Z
    :goto_8
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_15

    .line 3645
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$ModeCallback;

    .line 3646
    .local v13, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    if-eqz v4, :cond_11

    move-object/from16 v26, v11

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3646
    .end local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .local v26, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-ltz v11, :cond_12

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3647
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v3, v11, :cond_12

    .line 3648
    goto :goto_9

    .line 3650
    .end local v26    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .restart local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_11
    move-object/from16 v26, v11

    .line 3650
    .end local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .restart local v26    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_12
    const/16 v23, 0x1

    .line 3651
    if-nez v16, :cond_13

    .line 3652
    const-string v11, "  Op mode watchers:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3653
    const/16 v16, 0x1

    .line 3655
    :cond_13
    if-nez v24, :cond_14

    .line 3656
    const-string v11, "    Op "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3657
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3658
    const-string v11, ":"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3659
    const/16 v24, 0x1

    .line 3661
    :cond_14
    const-string v11, "      #"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3662
    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3644
    .end local v13    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    :goto_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, v26

    move-object/from16 v13, p3

    goto :goto_8

    .line 3638
    .end local v12    # "j":I
    .end local v24    # "printedOpHeader":Z
    .end local v26    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_15
    move/from16 v12, v16

    goto :goto_7

    .line 3638
    .end local v16    # "printedHeader":Z
    .end local v23    # "needSep":Z
    .local v11, "needSep":Z
    .local v12, "printedHeader":Z
    :goto_a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, p3

    goto/16 :goto_6

    .line 3666
    .end local v2    # "i":I
    .end local v11    # "needSep":Z
    .end local v12    # "printedHeader":Z
    .restart local v23    # "needSep":Z
    :cond_16
    move/from16 v2, v23

    .line 3666
    .end local v23    # "needSep":Z
    .local v2, "needSep":Z
    :cond_17
    :try_start_5
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-lez v11, :cond_1b

    if-gez v10, :cond_1b

    .line 3667
    const/4 v11, 0x0

    .line 3668
    .local v11, "printedHeader":Z
    move v12, v11

    move v11, v2

    const/4 v2, 0x0

    .line 3668
    .local v2, "i":I
    .local v11, "needSep":Z
    .restart local v12    # "printedHeader":Z
    :goto_b
    :try_start_6
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_1c

    .line 3669
    if-eqz v4, :cond_18

    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18

    .line 3670
    goto :goto_d

    .line 3672
    :cond_18
    const/4 v11, 0x1

    .line 3673
    if-nez v12, :cond_19

    .line 3674
    const-string v13, "  Package mode watchers:"

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3675
    const/4 v12, 0x1

    .line 3677
    :cond_19
    const-string v13, "    Pkg "

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3678
    const-string v13, ":"

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3679
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    .line 3680
    .local v13, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    const/16 v16, 0x0

    .line 3680
    .local v16, "j":I
    :goto_c
    move/from16 v27, v16

    .line 3680
    .end local v16    # "j":I
    .local v27, "j":I
    move/from16 v28, v11

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 3680
    .end local v11    # "needSep":Z
    .local v28, "needSep":Z
    move/from16 v29, v12

    move/from16 v12, v27

    if-ge v12, v11, :cond_1a

    .line 3681
    .end local v27    # "j":I
    .local v12, "j":I
    .local v29, "printedHeader":Z
    const-string v11, "      #"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3682
    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3680
    add-int/lit8 v16, v12, 0x1

    .line 3680
    .end local v12    # "j":I
    .restart local v16    # "j":I
    move/from16 v11, v28

    move/from16 v12, v29

    goto :goto_c

    .line 3668
    .end local v13    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .end local v16    # "j":I
    :cond_1a
    move/from16 v11, v28

    move/from16 v12, v29

    .line 3668
    .end local v28    # "needSep":Z
    .end local v29    # "printedHeader":Z
    .restart local v11    # "needSep":Z
    .local v12, "printedHeader":Z
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3686
    .end local v11    # "needSep":Z
    .end local v12    # "printedHeader":Z
    .local v2, "needSep":Z
    :cond_1b
    move v11, v2

    .line 3686
    .end local v2    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_1c
    :try_start_7
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-lez v2, :cond_21

    if-gez v10, :cond_21

    .line 3687
    const/4 v2, 0x0

    .line 3688
    .local v2, "printedHeader":Z
    move v12, v2

    const/4 v2, 0x0

    .line 3688
    .local v2, "i":I
    .restart local v12    # "printedHeader":Z
    :goto_e
    :try_start_8
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_20

    .line 3689
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$ModeCallback;

    .line 3690
    .local v13, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    if-eqz v4, :cond_1d

    move/from16 v30, v11

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3690
    .end local v11    # "needSep":Z
    .local v30, "needSep":Z
    if-ltz v11, :cond_1e

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3691
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v3, v11, :cond_1e

    .line 3692
    nop

    .line 3688
    move/from16 v11, v30

    goto :goto_10

    .line 3694
    .end local v30    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_1d
    move/from16 v30, v11

    .line 3694
    .end local v11    # "needSep":Z
    .restart local v30    # "needSep":Z
    :cond_1e
    const/4 v11, 0x1

    .line 3695
    .end local v30    # "needSep":Z
    .restart local v11    # "needSep":Z
    if-nez v12, :cond_1f

    .line 3696
    move/from16 v31, v11

    const-string v11, "  All op mode watchers:"

    .line 3696
    .end local v11    # "needSep":Z
    .local v31, "needSep":Z
    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3697
    const/4 v12, 0x1

    goto :goto_f

    .line 3699
    .end local v31    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_1f
    move/from16 v31, v11

    .line 3699
    .end local v11    # "needSep":Z
    .restart local v31    # "needSep":Z
    :goto_f
    const-string v11, "    "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3700
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3701
    const-string v11, ": "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3688
    .end local v13    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    move/from16 v11, v31

    .line 3688
    .end local v31    # "needSep":Z
    .restart local v11    # "needSep":Z
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3704
    .end local v2    # "i":I
    .end local v12    # "printedHeader":Z
    :cond_20
    move/from16 v30, v11

    :cond_21
    :try_start_9
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-lez v2, :cond_2b

    if-gez v5, :cond_2b

    .line 3705
    const/4 v11, 0x1

    .line 3706
    const/4 v2, 0x0

    .line 3707
    .local v2, "printedHeader":Z
    move v12, v2

    const/4 v2, 0x0

    .line 3707
    .local v2, "i":I
    .restart local v12    # "printedHeader":Z
    :goto_11
    :try_start_a
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_2a

    .line 3708
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 3709
    .local v13, "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v16

    if-gtz v16, :cond_22

    .line 3710
    nop

    .line 3707
    move-wide/from16 v34, v6

    move/from16 v32, v11

    goto/16 :goto_13

    .line 3712
    :cond_22
    move/from16 v32, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    .line 3712
    .end local v11    # "needSep":Z
    .local v32, "needSep":Z
    check-cast v16, Lcom/android/server/AppOpsService$ActiveCallback;

    move-object/from16 v33, v16

    .line 3713
    .local v33, "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    if-ltz v10, :cond_23

    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v16

    if-gez v16, :cond_23

    .line 3714
    nop

    .line 3707
    move-wide/from16 v34, v6

    goto/16 :goto_13

    .line 3716
    :cond_23
    if-eqz v4, :cond_24

    move-wide/from16 v34, v6

    move-object/from16 v11, v33

    iget v6, v11, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 3716
    .end local v6    # "now":J
    .end local v33    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .local v11, "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .local v34, "now":J
    if-ltz v6, :cond_25

    iget v6, v11, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 3717
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eq v3, v6, :cond_25

    .line 3718
    goto :goto_13

    .line 3720
    .end local v11    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .end local v34    # "now":J
    .restart local v6    # "now":J
    .restart local v33    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    :cond_24
    move-wide/from16 v34, v6

    move-object/from16 v11, v33

    .line 3720
    .end local v6    # "now":J
    .end local v33    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .restart local v11    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .restart local v34    # "now":J
    :cond_25
    if-nez v12, :cond_26

    .line 3721
    const-string v6, "  All op active watchers:"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3722
    const/4 v12, 0x1

    .line 3724
    :cond_26
    const-string v6, "    "

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3725
    iget-object v6, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3726
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 3725
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3727
    const-string v6, " ->"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3728
    const-string v6, "        ["

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3729
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 3730
    .local v6, "opCount":I
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v6, :cond_29

    .line 3731
    if-lez v2, :cond_27

    .line 3732
    const/16 v7, 0x20

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 3734
    :cond_27
    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3735
    add-int/lit8 v7, v6, -0x1

    if-ge v2, v7, :cond_28

    .line 3736
    const/16 v7, 0x2c

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 3730
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 3739
    :cond_29
    const-string v7, "]"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3740
    const-string v7, "        "

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3741
    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3707
    .end local v6    # "opCount":I
    .end local v11    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .end local v13    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    :goto_13
    const/16 v22, 0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v11, v32

    move-wide/from16 v6, v34

    goto/16 :goto_11

    .line 3744
    .end local v2    # "i":I
    .end local v12    # "printedHeader":Z
    .end local v32    # "needSep":Z
    .end local v34    # "now":J
    .local v6, "now":J
    .local v11, "needSep":Z
    :cond_2a
    move-wide/from16 v34, v6

    move/from16 v32, v11

    const/16 v22, 0x1

    .line 3744
    .end local v6    # "now":J
    .end local v11    # "needSep":Z
    .restart local v32    # "needSep":Z
    .restart local v34    # "now":J
    goto :goto_14

    .line 3744
    .end local v32    # "needSep":Z
    .end local v34    # "now":J
    .restart local v6    # "now":J
    .restart local v11    # "needSep":Z
    :cond_2b
    move-wide/from16 v34, v6

    const/16 v22, 0x1

    .line 3744
    .end local v6    # "now":J
    .restart local v34    # "now":J
    :goto_14
    :try_start_b
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-lez v2, :cond_35

    if-gez v5, :cond_35

    .line 3745
    const/4 v11, 0x1

    .line 3746
    const/4 v2, 0x0

    .line 3747
    .local v2, "printedHeader":Z
    move v6, v2

    const/4 v2, 0x0

    .line 3747
    .local v2, "i":I
    .local v6, "printedHeader":Z
    :goto_15
    :try_start_c
    iget-object v7, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v2, v7, :cond_34

    .line 3748
    const/4 v7, 0x0

    .line 3749
    .local v7, "printedClient":Z
    iget-object v12, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$ClientState;

    .line 3750
    .local v12, "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v13, v12, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-lez v13, :cond_33

    .line 3751
    const/4 v13, 0x0

    .line 3752
    .local v13, "printedStarted":Z
    move/from16 v16, v13

    move v13, v7

    move v7, v6

    const/4 v6, 0x0

    .line 3752
    .local v6, "j":I
    .local v7, "printedHeader":Z
    .local v13, "printedClient":Z
    .local v16, "printedStarted":Z
    :goto_16
    move/from16 v36, v3

    :try_start_d
    iget-object v3, v12, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    .line 3752
    .end local v3    # "dumpUid":I
    .local v36, "dumpUid":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_32

    .line 3753
    iget-object v3, v12, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Op;

    .line 3754
    .local v3, "op":Lcom/android/server/AppOpsService$Op;
    if-ltz v10, :cond_2c

    move/from16 v37, v11

    iget v11, v3, Lcom/android/server/AppOpsService$Op;->op:I

    .line 3754
    .end local v11    # "needSep":Z
    .local v37, "needSep":Z
    if-eq v11, v10, :cond_2d

    .line 3755
    goto :goto_17

    .line 3757
    .end local v37    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_2c
    move/from16 v37, v11

    .line 3757
    .end local v11    # "needSep":Z
    .restart local v37    # "needSep":Z
    :cond_2d
    if-eqz v4, :cond_2e

    iget-object v11, v3, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2e

    .line 3758
    goto :goto_17

    .line 3760
    :cond_2e
    if-nez v7, :cond_2f

    .line 3761
    const-string v11, "  Clients:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3762
    const/4 v7, 0x1

    .line 3764
    :cond_2f
    if-nez v13, :cond_30

    .line 3765
    const-string v11, "    "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v11, ":"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3766
    const-string v11, "      "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3767
    const/4 v13, 0x1

    .line 3769
    :cond_30
    if-nez v16, :cond_31

    .line 3770
    const-string v11, "      Started ops:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3771
    const/16 v16, 0x1

    .line 3773
    :cond_31
    const-string v11, "        "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "uid="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v3, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 3774
    const-string v11, " pkg="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3775
    const-string v11, " op="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v3, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 3752
    .end local v3    # "op":Lcom/android/server/AppOpsService$Op;
    :goto_17
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v36

    move/from16 v11, v37

    goto/16 :goto_16

    .line 3747
    .end local v6    # "j":I
    .end local v12    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v13    # "printedClient":Z
    .end local v16    # "printedStarted":Z
    .end local v37    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_32
    move/from16 v37, v11

    move v6, v7

    .line 3747
    .end local v11    # "needSep":Z
    .restart local v37    # "needSep":Z
    goto :goto_18

    .line 3747
    .end local v7    # "printedHeader":Z
    .end local v36    # "dumpUid":I
    .end local v37    # "needSep":Z
    .local v3, "dumpUid":I
    .local v6, "printedHeader":Z
    .restart local v11    # "needSep":Z
    :cond_33
    move/from16 v36, v3

    move/from16 v37, v11

    .line 3747
    .end local v3    # "dumpUid":I
    .end local v11    # "needSep":Z
    .restart local v36    # "dumpUid":I
    .restart local v37    # "needSep":Z
    :goto_18
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v36

    move/from16 v11, v37

    goto/16 :goto_15

    .line 3780
    .end local v2    # "i":I
    .end local v6    # "printedHeader":Z
    .end local v36    # "dumpUid":I
    .end local v37    # "needSep":Z
    .restart local v3    # "dumpUid":I
    .restart local v11    # "needSep":Z
    :cond_34
    move/from16 v36, v3

    move/from16 v37, v11

    .line 3780
    .end local v3    # "dumpUid":I
    .end local v11    # "needSep":Z
    .restart local v36    # "dumpUid":I
    .restart local v37    # "needSep":Z
    goto :goto_19

    .line 4010
    .end local v0    # "nowUptime":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v19    # "nowElapsed":J
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .end local v37    # "needSep":Z
    .restart local v3    # "dumpUid":I
    :catchall_1
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    .line 4010
    .end local v3    # "dumpUid":I
    .restart local v36    # "dumpUid":I
    goto/16 :goto_45

    .line 3780
    .end local v36    # "dumpUid":I
    .restart local v0    # "nowUptime":J
    .restart local v3    # "dumpUid":I
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v11    # "needSep":Z
    .restart local v19    # "nowElapsed":J
    .restart local v34    # "now":J
    :cond_35
    move/from16 v36, v3

    .line 3780
    .end local v3    # "dumpUid":I
    .restart local v36    # "dumpUid":I
    :goto_19
    :try_start_e
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-lez v2, :cond_3a

    if-gez v10, :cond_3a

    if-eqz v4, :cond_3a

    if-gez v5, :cond_3a

    .line 3782
    const/4 v2, 0x0

    .line 3783
    .local v2, "printedHeader":Z
    move v3, v2

    const/4 v2, 0x0

    .line 3783
    .local v2, "o":I
    .local v3, "printedHeader":Z
    :goto_1a
    :try_start_f
    iget-object v6, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3a

    .line 3784
    iget-object v6, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v6

    .line 3785
    .local v6, "op":Ljava/lang/String;
    iget-object v7, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 3786
    .local v7, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    move v12, v3

    const/4 v3, 0x0

    .line 3786
    .local v3, "i":I
    .local v12, "printedHeader":Z
    :goto_1b
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v3, v13, :cond_39

    .line 3787
    if-nez v12, :cond_36

    .line 3788
    const-string v13, "  Audio Restrictions:"

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3789
    const/4 v12, 0x1

    .line 3790
    const/4 v11, 0x1

    .line 3792
    :cond_36
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 3793
    .local v13, "usage":I
    move/from16 v38, v11

    const-string v11, "    "

    .line 3793
    .end local v11    # "needSep":Z
    .local v38, "needSep":Z
    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3794
    const-string v11, " usage="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3795
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Restriction;

    .line 3796
    .local v11, "r":Lcom/android/server/AppOpsService$Restriction;
    move-object/from16 v39, v6

    const-string v6, ": mode="

    .line 3796
    .end local v6    # "op":Ljava/lang/String;
    .local v39, "op":Ljava/lang/String;
    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v11, Lcom/android/server/AppOpsService$Restriction;->mode:I

    invoke-static {v6}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3797
    iget-object v6, v11, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_37

    .line 3798
    const-string v6, "      Exceptions:"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3799
    const/4 v6, 0x0

    .line 3799
    .local v6, "j":I
    :goto_1c
    move-object/from16 v40, v7

    iget-object v7, v11, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 3799
    .end local v7    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .local v40, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_38

    .line 3800
    const-string v7, "        "

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v11, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3799
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, v40

    goto :goto_1c

    .line 3786
    .end local v6    # "j":I
    .end local v11    # "r":Lcom/android/server/AppOpsService$Restriction;
    .end local v13    # "usage":I
    .end local v40    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .restart local v7    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_37
    move-object/from16 v40, v7

    .line 3786
    .end local v7    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .restart local v40    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_38
    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v38

    move-object/from16 v6, v39

    move-object/from16 v7, v40

    goto :goto_1b

    .line 3783
    .end local v3    # "i":I
    .end local v38    # "needSep":Z
    .end local v39    # "op":Ljava/lang/String;
    .end local v40    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .local v11, "needSep":Z
    :cond_39
    add-int/lit8 v2, v2, 0x1

    move v3, v12

    goto/16 :goto_1a

    .line 3806
    .end local v2    # "o":I
    .end local v12    # "printedHeader":Z
    :cond_3a
    if-eqz v11, :cond_3b

    .line 3807
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_1d

    .line 4010
    .end local v0    # "nowUptime":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v11    # "needSep":Z
    .end local v19    # "nowElapsed":J
    .end local v34    # "now":J
    :catchall_2
    move-exception v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move/from16 v26, v36

    goto/16 :goto_45

    .line 3809
    .restart local v0    # "nowUptime":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v11    # "needSep":Z
    .restart local v19    # "nowElapsed":J
    .restart local v34    # "now":J
    :cond_3b
    :goto_1d
    const/4 v2, 0x0

    .line 3809
    .local v2, "i":I
    :goto_1e
    move v13, v2

    .line 3809
    .end local v2    # "i":I
    .local v13, "i":I
    :try_start_10
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v13, v2, :cond_6b

    .line 3810
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    move-object v12, v2

    .line 3811
    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object v6, v2

    .line 3812
    .local v6, "opModes":Landroid/util/SparseIntArray;
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object v7, v2

    .line 3814
    .local v7, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-gez v10, :cond_3d

    if-nez v4, :cond_3d

    if-ltz v5, :cond_3c

    goto :goto_1f

    .line 3856
    :cond_3c
    move-object/from16 v47, v8

    move/from16 v46, v11

    move/from16 v44, v13

    goto/16 :goto_2c

    .line 3815
    :cond_3d
    :goto_1f
    if-ltz v10, :cond_3f

    :try_start_11
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_3e

    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3816
    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3e

    goto :goto_20

    :cond_3e
    const/4 v2, 0x0

    goto :goto_21

    :cond_3f
    :goto_20
    move/from16 v2, v22

    .line 3817
    .local v2, "hasOp":Z
    :goto_21
    if-nez v4, :cond_40

    move/from16 v3, v22

    goto :goto_22

    :cond_40
    const/4 v3, 0x0

    .line 3818
    .local v3, "hasPackage":Z
    :goto_22
    if-gez v5, :cond_41

    move/from16 v16, v22

    goto :goto_23

    :cond_41
    const/16 v16, 0x0

    .line 3819
    .local v16, "hasMode":Z
    :goto_23
    if-nez v16, :cond_45

    if-eqz v6, :cond_45

    .line 3820
    move/from16 v17, v16

    const/16 v16, 0x0

    .line 3820
    .local v16, "opi":I
    .local v17, "hasMode":Z
    :goto_24
    move/from16 v41, v16

    .line 3820
    .end local v16    # "opi":I
    .local v41, "opi":I
    if-nez v17, :cond_43

    move/from16 v42, v2

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 3820
    .end local v2    # "hasOp":Z
    .local v42, "hasOp":Z
    move/from16 v43, v3

    move/from16 v3, v41

    if-ge v3, v2, :cond_44

    .line 3821
    .end local v41    # "opi":I
    .local v3, "opi":I
    .local v43, "hasPackage":Z
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, v5, :cond_42

    .line 3822
    const/16 v17, 0x1

    .line 3820
    :cond_42
    add-int/lit8 v16, v3, 0x1

    .line 3820
    .end local v3    # "opi":I
    .restart local v16    # "opi":I
    move/from16 v2, v42

    move/from16 v3, v43

    goto :goto_24

    .line 3826
    .end local v16    # "opi":I
    .end local v42    # "hasOp":Z
    .end local v43    # "hasPackage":Z
    .restart local v2    # "hasOp":Z
    .local v3, "hasPackage":Z
    :cond_43
    move/from16 v42, v2

    move/from16 v43, v3

    .line 3826
    .end local v2    # "hasOp":Z
    .end local v3    # "hasPackage":Z
    .restart local v42    # "hasOp":Z
    .restart local v43    # "hasPackage":Z
    :cond_44
    move/from16 v16, v17

    goto :goto_25

    .line 3826
    .end local v17    # "hasMode":Z
    .end local v42    # "hasOp":Z
    .end local v43    # "hasPackage":Z
    .restart local v2    # "hasOp":Z
    .restart local v3    # "hasPackage":Z
    .local v16, "hasMode":Z
    :cond_45
    move/from16 v42, v2

    move/from16 v43, v3

    .line 3826
    .end local v2    # "hasOp":Z
    .end local v3    # "hasPackage":Z
    .restart local v42    # "hasOp":Z
    .restart local v43    # "hasPackage":Z
    :goto_25
    if-eqz v7, :cond_4f

    .line 3827
    move/from16 v3, v43

    const/4 v2, 0x0

    .line 3828
    .end local v43    # "hasPackage":Z
    .local v2, "pkgi":I
    .restart local v3    # "hasPackage":Z
    :goto_26
    if-eqz v42, :cond_47

    if-eqz v3, :cond_47

    if-nez v16, :cond_46

    goto :goto_27

    .line 3846
    .end local v2    # "pkgi":I
    :cond_46
    move-object/from16 v47, v8

    move/from16 v46, v11

    move/from16 v44, v13

    goto/16 :goto_2a

    .line 3828
    .restart local v2    # "pkgi":I
    :cond_47
    :goto_27
    move/from16 v44, v13

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 3828
    .end local v13    # "i":I
    .local v44, "i":I
    if-ge v2, v13, :cond_4e

    .line 3830
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Ops;

    .line 3831
    .local v13, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v42, :cond_48

    if-eqz v13, :cond_48

    invoke-virtual {v13, v10}, Lcom/android/server/AppOpsService$Ops;->indexOfKey(I)I

    move-result v17

    if-ltz v17, :cond_48

    .line 3832
    const/16 v42, 0x1

    .line 3834
    :cond_48
    if-nez v16, :cond_4c

    .line 3835
    move/from16 v17, v16

    const/16 v16, 0x0

    .line 3835
    .local v16, "opi":I
    .restart local v17    # "hasMode":Z
    :goto_28
    move/from16 v45, v16

    .line 3835
    .end local v16    # "opi":I
    .local v45, "opi":I
    if-nez v17, :cond_4a

    move/from16 v46, v11

    invoke-virtual {v13}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v11

    .line 3835
    .end local v11    # "needSep":Z
    .local v46, "needSep":Z
    move-object/from16 v47, v8

    move/from16 v8, v45

    if-ge v8, v11, :cond_4b

    .line 3836
    .end local v45    # "opi":I
    .local v8, "opi":I
    .local v47, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v13, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Op;

    iget v11, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v11, v5, :cond_49

    .line 3837
    const/16 v17, 0x1

    .line 3835
    :cond_49
    add-int/lit8 v16, v8, 0x1

    .line 3835
    .end local v8    # "opi":I
    .restart local v16    # "opi":I
    move/from16 v11, v46

    move-object/from16 v8, v47

    goto :goto_28

    .line 3841
    .end local v16    # "opi":I
    .end local v46    # "needSep":Z
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "needSep":Z
    :cond_4a
    move-object/from16 v47, v8

    move/from16 v46, v11

    .line 3841
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "needSep":Z
    .restart local v46    # "needSep":Z
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_4b
    move/from16 v16, v17

    goto :goto_29

    .line 3841
    .end local v17    # "hasMode":Z
    .end local v46    # "needSep":Z
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "needSep":Z
    .local v16, "hasMode":Z
    :cond_4c
    move-object/from16 v47, v8

    move/from16 v46, v11

    .line 3841
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "needSep":Z
    .restart local v46    # "needSep":Z
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_29
    if-nez v3, :cond_4d

    iget-object v8, v13, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v8, :cond_4d

    .line 3842
    const/4 v3, 0x1

    .line 3829
    .end local v13    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    .line 3827
    move/from16 v13, v44

    move/from16 v11, v46

    move-object/from16 v8, v47

    goto :goto_26

    .line 3846
    .end local v2    # "pkgi":I
    .end local v46    # "needSep":Z
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "needSep":Z
    :cond_4e
    move-object/from16 v47, v8

    move/from16 v46, v11

    .line 3846
    .end local v44    # "i":I
    .local v13, "i":I
    :goto_2a
    move/from16 v43, v3

    goto :goto_2b

    .line 3846
    .end local v3    # "hasPackage":Z
    .restart local v43    # "hasPackage":Z
    :cond_4f
    move-object/from16 v47, v8

    move/from16 v46, v11

    move/from16 v44, v13

    .line 3846
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "needSep":Z
    .end local v13    # "i":I
    .restart local v44    # "i":I
    .restart local v46    # "needSep":Z
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_2b
    :try_start_12
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v2, :cond_50

    if-nez v42, :cond_50

    .line 3847
    :try_start_13
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-lez v2, :cond_50

    .line 3848
    const/16 v42, 0x1

    .line 3851
    :cond_50
    if-eqz v42, :cond_6a

    if-eqz v43, :cond_6a

    if-nez v16, :cond_51

    .line 3852
    nop

    .line 3809
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    goto/16 :goto_3b

    .line 3856
    .end local v16    # "hasMode":Z
    .end local v42    # "hasOp":Z
    .end local v43    # "hasPackage":Z
    :cond_51
    :goto_2c
    :try_start_14
    const-string v2, "  Uid "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v14, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v2, ":"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3857
    const-string v2, "    state="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3858
    sget-object v2, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    iget v3, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    aget-object v2, v2, v3

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3859
    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    iget v3, v12, Lcom/android/server/AppOpsService$UidState;->pendingState:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eq v2, v3, :cond_52

    .line 3860
    :try_start_15
    const-string v2, "    pendingState="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3861
    sget-object v2, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    iget v3, v12, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    aget-object v2, v2, v3

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 3863
    :cond_52
    :try_start_16
    iget-wide v2, v12, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    const-wide/16 v16, 0x0

    cmp-long v2, v2, v16

    if-eqz v2, :cond_53

    .line 3864
    :try_start_17
    const-string v2, "    pendingStateCommitTime="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3865
    iget-wide v2, v12, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    invoke-static {v2, v3, v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3866
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 3868
    :cond_53
    :try_start_18
    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->startNesting:I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    if-eqz v2, :cond_54

    .line 3869
    :try_start_19
    const-string v2, "    startNesting="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3870
    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 3872
    :cond_54
    :try_start_1a
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    if-eqz v2, :cond_59

    if-ltz v5, :cond_55

    const/4 v2, 0x4

    if-ne v5, v2, :cond_59

    .line 3874
    :cond_55
    :try_start_1b
    const-string v2, "    foregroundOps:"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3875
    const/4 v2, 0x0

    .line 3875
    .local v2, "j":I
    :goto_2d
    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 3876
    if-ltz v10, :cond_56

    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-eq v10, v3, :cond_56

    .line 3877
    goto :goto_2f

    .line 3879
    :cond_56
    const-string v3, "      "

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3880
    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3881
    const-string v3, ": "

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3882
    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_57

    const-string v3, "WATCHER"

    goto :goto_2e

    :cond_57
    const-string v3, "SILENT"

    :goto_2e
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3875
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 3884
    .end local v2    # "j":I
    :cond_58
    const-string v2, "    hasForegroundWatchers="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3885
    iget-boolean v2, v12, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3887
    :cond_59
    const/16 v21, 0x1

    .line 3889
    .end local v46    # "needSep":Z
    .local v21, "needSep":Z
    if-eqz v6, :cond_5c

    .line 3890
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 3891
    .local v2, "opModeCount":I
    const/4 v3, 0x0

    .line 3891
    .local v3, "j":I
    :goto_30
    if-ge v3, v2, :cond_5c

    .line 3892
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 3893
    .local v8, "code":I
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    .line 3894
    .local v11, "mode":I
    if-ltz v10, :cond_5a

    if-eq v10, v8, :cond_5a

    .line 3895
    goto :goto_31

    .line 3897
    :cond_5a
    if-ltz v5, :cond_5b

    if-eq v5, v11, :cond_5b

    .line 3898
    goto :goto_31

    .line 3900
    :cond_5b
    const-string v13, "      "

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3901
    const-string v13, ": mode="

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 3891
    .end local v8    # "code":I
    .end local v11    # "mode":I
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 3905
    .end local v2    # "opModeCount":I
    .end local v3    # "j":I
    :cond_5c
    if-nez v7, :cond_5d

    .line 3906
    nop

    .line 3809
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    goto/16 :goto_3a

    .line 3909
    :cond_5d
    const/4 v2, 0x0

    .line 3909
    .local v2, "pkgi":I
    :goto_32
    move v13, v2

    .line 3909
    .end local v2    # "pkgi":I
    .local v13, "pkgi":I
    :try_start_1c
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v13, v2, :cond_69

    .line 3910
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    move-object v11, v2

    .line 3911
    .local v11, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v4, :cond_5e

    :try_start_1d
    iget-object v2, v11, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    if-nez v2, :cond_5e

    .line 3912
    nop

    .line 3909
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v53, v10

    move-object/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    goto/16 :goto_39

    .line 3914
    :cond_5e
    const/4 v2, 0x0

    .line 3915
    .local v2, "printedPackage":Z
    move v3, v2

    const/4 v2, 0x0

    .line 3915
    .local v2, "j":I
    .local v3, "printedPackage":Z
    :goto_33
    move v8, v2

    .line 3915
    .end local v2    # "j":I
    .local v8, "j":I
    :try_start_1e
    invoke-virtual {v11}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v2

    if-ge v8, v2, :cond_68

    .line 3916
    invoke-virtual {v11, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Op;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 3917
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-ltz v10, :cond_5f

    move-wide/from16 v48, v0

    :try_start_1f
    iget v0, v2, Lcom/android/server/AppOpsService$Op;->op:I

    .line 3917
    .end local v0    # "nowUptime":J
    .local v48, "nowUptime":J
    if-eq v10, v0, :cond_60

    .line 3918
    goto :goto_34

    .line 3920
    .end local v48    # "nowUptime":J
    .restart local v0    # "nowUptime":J
    :cond_5f
    move-wide/from16 v48, v0

    .line 3920
    .end local v0    # "nowUptime":J
    .restart local v48    # "nowUptime":J
    :cond_60
    if-ltz v5, :cond_61

    iget v0, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v5, v0, :cond_61

    .line 3921
    nop

    .line 3915
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :goto_34
    move/from16 v50, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v31, v8

    move/from16 v53, v10

    move-object v5, v11

    move-object/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    move-wide/from16 v23, v48

    const/16 v32, 0x0

    goto/16 :goto_38

    .line 3923
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_61
    if-nez v3, :cond_62

    .line 3924
    const-string v0, "    Package "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 3925
    const/4 v3, 0x1

    .line 3927
    .end local v3    # "printedPackage":Z
    .local v0, "printedPackage":Z
    :cond_62
    move v0, v3

    :try_start_20
    const-string v1, "      "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3928
    const-string v1, " ("

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3929
    iget v1, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    move v3, v1

    .line 3930
    .local v3, "switchOp":I
    iget v1, v2, Lcom/android/server/AppOpsService$Op;->op:I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    if-eq v3, v1, :cond_64

    .line 3931
    :try_start_21
    const-string v1, " / switch "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3932
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3933
    invoke-virtual {v11, v3}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Op;

    .line 3934
    .local v1, "switchObj":Lcom/android/server/AppOpsService$Op;
    if-eqz v1, :cond_63

    .line 3935
    move/from16 v50, v0

    iget v0, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 3935
    .end local v0    # "printedPackage":Z
    .local v50, "printedPackage":Z
    goto :goto_35

    .line 3935
    .end local v50    # "printedPackage":Z
    .restart local v0    # "printedPackage":Z
    :cond_63
    move/from16 v50, v0

    .line 3935
    .end local v0    # "printedPackage":Z
    .restart local v50    # "printedPackage":Z
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 3936
    .local v0, "mode":I
    :goto_35
    move-object/from16 v51, v1

    const-string v1, "="

    .line 3936
    .end local v1    # "switchObj":Lcom/android/server/AppOpsService$Op;
    .local v51, "switchObj":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 3936
    .end local v0    # "mode":I
    .end local v51    # "switchObj":Lcom/android/server/AppOpsService$Op;
    goto :goto_36

    .line 3938
    .end local v50    # "printedPackage":Z
    .local v0, "printedPackage":Z
    :cond_64
    move/from16 v50, v0

    .line 3938
    .end local v0    # "printedPackage":Z
    .restart local v50    # "printedPackage":Z
    :goto_36
    :try_start_22
    const-string v0, "): "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3939
    const-string v0, "          Access: "

    const-string v16, "                  "

    iget-object v1, v2, Lcom/android/server/AppOpsService$Op;->time:[J
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    move-object/from16 v17, v1

    move-wide/from16 v23, v48

    move-object v1, v15

    .line 3939
    .end local v48    # "nowUptime":J
    .local v23, "nowUptime":J
    move/from16 v52, v13

    move-object v13, v2

    move-object v2, v14

    .line 3939
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .local v13, "op":Lcom/android/server/AppOpsService$Op;
    .local v52, "pkgi":I
    move/from16 v27, v3

    move/from16 v26, v36

    move-object v3, v0

    .line 3939
    .end local v3    # "switchOp":I
    .end local v36    # "dumpUid":I
    .local v26, "dumpUid":I
    .local v27, "switchOp":I
    move-object/from16 v28, v4

    move-object/from16 v4, v16

    .line 3939
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .local v28, "dumpPackage":Ljava/lang/String;
    move/from16 v29, v5

    move-object/from16 v5, v17

    .line 3939
    .end local v5    # "dumpMode":I
    .local v29, "dumpMode":I
    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-wide/from16 v6, v34

    move-object/from16 v8, v47

    :try_start_23
    invoke-direct/range {v1 .. v9}, Lcom/android/server/AppOpsService;->dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V

    .line 3942
    .end local v7    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v34    # "now":J
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .local v0, "opModes":Landroid/util/SparseIntArray;
    .local v6, "now":J
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    .local v30, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .local v31, "j":I
    const-string v1, "          Reject: "

    const-string v2, "                  "

    iget-object v3, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:[J
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    move v4, v10

    move-object v10, v15

    .line 3942
    .end local v10    # "dumpOp":I
    .local v4, "dumpOp":I
    move/from16 v53, v4

    move-object v5, v11

    move/from16 v4, v22

    const/16 v16, 0x0

    move-object v11, v14

    .line 3942
    .end local v4    # "dumpOp":I
    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    .local v53, "dumpOp":I
    move-object/from16 v22, v12

    move/from16 v32, v16

    move-object v12, v1

    .line 3942
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .local v22, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object v4, v13

    move/from16 v1, v44

    move/from16 v25, v52

    move-object v13, v2

    .line 3942
    .end local v13    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v44    # "i":I
    .end local v52    # "pkgi":I
    .local v1, "i":I
    .local v4, "op":Lcom/android/server/AppOpsService$Op;
    .local v25, "pkgi":I
    move-object v2, v14

    move-object v14, v3

    move-object v3, v15

    move-wide v15, v6

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    :try_start_24
    invoke-direct/range {v10 .. v18}, Lcom/android/server/AppOpsService;->dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V

    .line 3945
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_65

    .line 3946
    const-string v10, "          Running start at: "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3947
    iget-wide v10, v4, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v10, v19, v10

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3948
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_37

    .line 3949
    :cond_65
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    if-eqz v10, :cond_66

    .line 3950
    const-string v10, "          duration="

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3951
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v10, v10

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3952
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3954
    :cond_66
    :goto_37
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-eqz v10, :cond_67

    .line 3955
    const-string v10, "          startNesting="

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3956
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->startNesting:I

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 3915
    .end local v4    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v27    # "switchOp":I
    :cond_67
    :goto_38
    add-int/lit8 v4, v31, 0x1

    .line 3915
    .end local v31    # "j":I
    .local v4, "j":I
    move/from16 v44, v1

    move-object v14, v2

    move-object v15, v3

    move v2, v4

    move-object v11, v5

    move-wide/from16 v34, v6

    move-object/from16 v47, v8

    move-object/from16 v12, v22

    move/from16 v13, v25

    move/from16 v36, v26

    move-object/from16 v4, v28

    move/from16 v5, v29

    move-object/from16 v7, v30

    move/from16 v3, v50

    move/from16 v10, v53

    const/16 v22, 0x1

    move-object v6, v0

    move-wide/from16 v0, v23

    goto/16 :goto_33

    .line 4010
    .end local v0    # "opModes":Landroid/util/SparseIntArray;
    .end local v1    # "i":I
    .end local v4    # "j":I
    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v6    # "now":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v19    # "nowElapsed":J
    .end local v21    # "needSep":Z
    .end local v22    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v23    # "nowUptime":J
    .end local v25    # "pkgi":I
    .end local v30    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v50    # "printedPackage":Z
    .end local v53    # "dumpOp":I
    .restart local v10    # "dumpOp":I
    :catchall_3
    move-exception v0

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    .line 4010
    .end local v10    # "dumpOp":I
    .restart local v53    # "dumpOp":I
    goto/16 :goto_45

    .line 3909
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .local v0, "nowUptime":J
    .local v4, "dumpPackage":Ljava/lang/String;
    .local v5, "dumpMode":I
    .local v6, "opModes":Landroid/util/SparseIntArray;
    .restart local v7    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v10    # "dumpOp":I
    .restart local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .local v13, "pkgi":I
    .restart local v19    # "nowElapsed":J
    .restart local v21    # "needSep":Z
    .restart local v34    # "now":J
    .restart local v36    # "dumpUid":I
    .restart local v44    # "i":I
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_68
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v53, v10

    move-object/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v7    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v10    # "dumpOp":I
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v13    # "pkgi":I
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .end local v44    # "i":I
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .local v0, "opModes":Landroid/util/SparseIntArray;
    .restart local v1    # "i":I
    .local v6, "now":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v22    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v23    # "nowUptime":J
    .restart local v25    # "pkgi":I
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v30    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v53    # "dumpOp":I
    :goto_39
    add-int/lit8 v4, v25, 0x1

    .line 3909
    .end local v25    # "pkgi":I
    .local v4, "pkgi":I
    move/from16 v44, v1

    move-object v14, v2

    move-object v15, v3

    move v2, v4

    move-wide/from16 v34, v6

    move-object/from16 v47, v8

    move-object/from16 v12, v22

    move/from16 v36, v26

    move-object/from16 v4, v28

    move/from16 v5, v29

    move-object/from16 v7, v30

    move/from16 v10, v53

    const/16 v22, 0x1

    move-object v6, v0

    move-wide/from16 v0, v23

    goto/16 :goto_32

    .line 3809
    .end local v1    # "i":I
    .end local v6    # "now":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v22    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v23    # "nowUptime":J
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v30    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v53    # "dumpOp":I
    .local v0, "nowUptime":J
    .local v4, "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpMode":I
    .restart local v10    # "dumpOp":I
    .restart local v34    # "now":J
    .restart local v36    # "dumpUid":I
    .restart local v44    # "i":I
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_69
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    :goto_3a
    move/from16 v11, v21

    .end local v0    # "nowUptime":J
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .end local v44    # "i":I
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v1    # "i":I
    .restart local v6    # "now":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v23    # "nowUptime":J
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v53    # "dumpOp":I
    goto :goto_3c

    .line 3809
    .end local v1    # "i":I
    .end local v6    # "now":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v21    # "needSep":Z
    .end local v23    # "nowUptime":J
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .restart local v0    # "nowUptime":J
    .restart local v4    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpMode":I
    .restart local v10    # "dumpOp":I
    .restart local v34    # "now":J
    .restart local v36    # "dumpUid":I
    .restart local v44    # "i":I
    .restart local v46    # "needSep":Z
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_6a
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    .end local v0    # "nowUptime":J
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .end local v44    # "i":I
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v1    # "i":I
    .restart local v6    # "now":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v23    # "nowUptime":J
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v53    # "dumpOp":I
    :goto_3b
    move/from16 v11, v46

    .line 3809
    .end local v46    # "needSep":Z
    .local v11, "needSep":Z
    :goto_3c
    add-int/lit8 v0, v1, 0x1

    .line 3809
    .end local v1    # "i":I
    .local v0, "i":I
    move-object v14, v2

    move-object v15, v3

    move-wide/from16 v34, v6

    move/from16 v36, v26

    move-object/from16 v4, v28

    move/from16 v5, v29

    move/from16 v10, v53

    const/16 v22, 0x1

    move v2, v0

    move-wide/from16 v0, v23

    goto/16 :goto_1e

    .line 3961
    .end local v6    # "now":J
    .end local v23    # "nowUptime":J
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .local v0, "nowUptime":J
    .restart local v4    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpMode":I
    .restart local v10    # "dumpOp":I
    .restart local v34    # "now":J
    .restart local v36    # "dumpUid":I
    :cond_6b
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move/from16 v46, v11

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    const/16 v32, 0x0

    .end local v0    # "nowUptime":J
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .end local v11    # "needSep":Z
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .restart local v6    # "now":J
    .restart local v23    # "nowUptime":J
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v46    # "needSep":Z
    .restart local v53    # "dumpOp":I
    if-eqz v46, :cond_6c

    .line 3962
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3965
    :cond_6c
    iget-object v0, v3, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3966
    .local v0, "userRestrictionCount":I
    move/from16 v1, v32

    .line 3966
    .restart local v1    # "i":I
    :goto_3d
    if-ge v1, v0, :cond_75

    .line 3967
    iget-object v4, v3, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 3968
    .local v4, "token":Landroid/os/IBinder;
    iget-object v5, v3, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 3969
    .local v5, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  User restrictions for token "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3971
    iget-object v10, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v10, :cond_6d

    .line 3972
    iget-object v10, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v12

    goto :goto_3e

    :cond_6d
    move/from16 v12, v32

    :goto_3e
    move v10, v12

    .line 3973
    .local v10, "restrictionCount":I
    if-lez v10, :cond_72

    .line 3974
    const-string v11, "      Restricted ops:"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3975
    move/from16 v11, v32

    .line 3975
    .local v11, "j":I
    :goto_3f
    if-ge v11, v10, :cond_72

    .line 3976
    iget-object v12, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 3977
    .local v12, "userId":I
    iget-object v13, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Z

    .line 3978
    .local v13, "restrictedOps":[Z
    if-nez v13, :cond_6e

    .line 3979
    nop

    .line 3975
    move/from16 v55, v0

    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    goto :goto_42

    .line 3981
    :cond_6e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 3982
    .local v14, "restrictedOpsValue":Ljava/lang/StringBuilder;
    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3983
    array-length v15, v13

    .line 3984
    .local v15, "restrictedOpCount":I
    move/from16 v16, v32

    .line 3984
    .local v16, "k":I
    :goto_40
    move/from16 v54, v16

    .line 3984
    .end local v16    # "k":I
    .local v54, "k":I
    move/from16 v55, v0

    move/from16 v0, v54

    if-ge v0, v15, :cond_71

    .line 3985
    .end local v54    # "k":I
    .local v0, "k":I
    .local v55, "userRestrictionCount":I
    aget-boolean v16, v13, v0

    if-eqz v16, :cond_70

    .line 3986
    move-object/from16 v56, v4

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 3986
    .end local v4    # "token":Landroid/os/IBinder;
    .local v56, "token":Landroid/os/IBinder;
    move-wide/from16 v57, v6

    const/4 v6, 0x1

    if-le v4, v6, :cond_6f

    .line 3987
    .end local v6    # "now":J
    .local v57, "now":J
    const-string v4, ", "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3989
    :cond_6f
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 3984
    .end local v56    # "token":Landroid/os/IBinder;
    .end local v57    # "now":J
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v6    # "now":J
    :cond_70
    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    .line 3984
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v6    # "now":J
    .restart local v56    # "token":Landroid/os/IBinder;
    .restart local v57    # "now":J
    :goto_41
    add-int/lit8 v16, v0, 0x1

    .line 3984
    .end local v0    # "k":I
    .restart local v16    # "k":I
    move/from16 v0, v55

    move-object/from16 v4, v56

    move-wide/from16 v6, v57

    goto :goto_40

    .line 3992
    .end local v16    # "k":I
    .end local v56    # "token":Landroid/os/IBinder;
    .end local v57    # "now":J
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v6    # "now":J
    :cond_71
    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    .line 3992
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v6    # "now":J
    .restart local v56    # "token":Landroid/os/IBinder;
    .restart local v57    # "now":J
    const-string v0, "]"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3993
    const-string v0, "        "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "user: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 3994
    const-string v0, " restricted ops: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3975
    .end local v12    # "userId":I
    .end local v13    # "restrictedOps":[Z
    .end local v14    # "restrictedOpsValue":Ljava/lang/StringBuilder;
    .end local v15    # "restrictedOpCount":I
    :goto_42
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v55

    move-object/from16 v4, v56

    move-wide/from16 v6, v57

    goto/16 :goto_3f

    .line 3998
    .end local v11    # "j":I
    .end local v55    # "userRestrictionCount":I
    .end local v56    # "token":Landroid/os/IBinder;
    .end local v57    # "now":J
    .local v0, "userRestrictionCount":I
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v6    # "now":J
    :cond_72
    move/from16 v55, v0

    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    .line 3998
    .end local v0    # "userRestrictionCount":I
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v6    # "now":J
    .restart local v55    # "userRestrictionCount":I
    .restart local v56    # "token":Landroid/os/IBinder;
    .restart local v57    # "now":J
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_73

    .line 3999
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v12

    goto :goto_43

    :cond_73
    move/from16 v12, v32

    :goto_43
    move v0, v12

    .line 4000
    .local v0, "excludedPackageCount":I
    if-lez v0, :cond_74

    .line 4001
    const-string v4, "      Excluded packages:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4002
    move/from16 v4, v32

    .line 4002
    .local v4, "j":I
    :goto_44
    if-ge v4, v0, :cond_74

    .line 4003
    iget-object v7, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 4004
    .local v7, "userId":I
    iget-object v11, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 4005
    .local v11, "packageNames":[Ljava/lang/String;
    const-string v12, "        "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "user: "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 4006
    const-string v12, " packages: "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4002
    .end local v7    # "userId":I
    .end local v11    # "packageNames":[Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 3966
    .end local v0    # "excludedPackageCount":I
    .end local v4    # "j":I
    .end local v5    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    .end local v10    # "restrictionCount":I
    .end local v56    # "token":Landroid/os/IBinder;
    :cond_74
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v55

    move-wide/from16 v6, v57

    goto/16 :goto_3d

    .line 4010
    .end local v1    # "i":I
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v19    # "nowElapsed":J
    .end local v23    # "nowUptime":J
    .end local v46    # "needSep":Z
    .end local v55    # "userRestrictionCount":I
    .end local v57    # "now":J
    :cond_75
    monitor-exit p0

    .line 4011
    return-void

    .line 4010
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .local v4, "dumpPackage":Ljava/lang/String;
    .local v5, "dumpMode":I
    .local v10, "dumpOp":I
    .restart local v36    # "dumpUid":I
    :catchall_4
    move-exception v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move/from16 v26, v36

    .line 4010
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .end local v36    # "dumpUid":I
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v53    # "dumpOp":I
    goto :goto_45

    .line 4010
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .local v3, "dumpUid":I
    .restart local v4    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpMode":I
    .restart local v10    # "dumpOp":I
    :catchall_5
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    .line 4010
    .end local v3    # "dumpUid":I
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v53    # "dumpOp":I
    :goto_45
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_45
.end method

.method enforceManageAppOpsModes(III)V
    .locals 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "targetUid"    # I

    .line 1012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1013
    return-void

    .line 1015
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1016
    .local v0, "callingUser":I
    monitor-enter p0

    .line 1017
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 1018
    if-ltz p3, :cond_1

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1021
    monitor-exit p0

    return-void

    .line 1024
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_APP_OPS_MODES"

    .line 1026
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    .line 1025
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1027
    return-void

    .line 1024
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2277
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 2278
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2279
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2280
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2281
    return-void

    .line 2283
    :cond_0
    instance-of v1, p1, Lcom/android/server/AppOpsService$ClientState;

    if-nez v1, :cond_1

    .line 2284
    return-void

    .line 2286
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/AppOpsService$ClientState;

    .line 2287
    .local v1, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 2288
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, v0, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 2289
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v2, :cond_2

    .line 2290
    monitor-exit p0

    return-void

    .line 2292
    :cond_2
    iget-object v3, v1, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 2297
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2299
    .local v5, "identity":J
    :try_start_1
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 2300
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2299
    invoke-virtual {v3, v0, v4, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    if-gez v3, :cond_3

    .line 2301
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finishing op="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for non-existing package="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in uid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2307
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 2304
    return-void

    .line 2307
    :cond_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2308
    nop

    .line 2309
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operation not started: uid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pkg="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " op="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/server/AppOpsService$Op;->op:I

    .line 2310
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2309
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    monitor-exit p0

    return-void

    .line 2307
    :catchall_0
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2313
    .end local v5    # "identity":J
    :cond_4
    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V

    .line 2314
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-gtz v3, :cond_5

    .line 2315
    invoke-direct {p0, p2, p3, p4, v4}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 2317
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_5
    monitor-exit p0

    .line 2318
    return-void

    .line 2317
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V
    .locals 6
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "finishNested"    # Z

    .line 2375
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2389
    :cond_0
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    .line 2390
    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    goto/16 :goto_3

    .line 2376
    :cond_1
    :goto_0
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-eq v0, v1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 2380
    :cond_2
    const-string v0, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing op nesting under-run: uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2377
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 2378
    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v2, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 2384
    :goto_2
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-lt v0, v1, :cond_4

    .line 2385
    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v1, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    .line 2387
    :cond_4
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    .line 2392
    :goto_3
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 943
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 944
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 943
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 945
    invoke-static {p1, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 947
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 949
    :cond_0
    monitor-enter p0

    .line 950
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 952
    .local v1, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v1, :cond_1

    .line 953
    monitor-exit p0

    return-object v4

    .line 955
    :cond_1
    invoke-direct {p0, v1, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 956
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_2

    .line 957
    monitor-exit p0

    return-object v4

    .line 959
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v4, Landroid/app/AppOpsManager$PackageOps;

    iget-object v5, v1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v6, v6, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v4, v5, v6, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 962
    .local v4, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    monitor-exit p0

    return-object v3

    .line 964
    .end local v1    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v4    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 13
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 911
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 912
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 911
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 913
    const/4 v0, 0x0

    .line 914
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 916
    .local v1, "uidStateCount":I
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_0
    if-ge v0, v1, :cond_5

    .line 917
    :try_start_1
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$UidState;

    .line 918
    .local v4, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 919
    goto :goto_2

    .line 921
    :cond_0
    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 922
    .local v5, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 923
    .local v6, "packageCount":I
    move-object v7, v3

    move v3, v2

    .local v3, "j":I
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_1
    if-ge v3, v6, :cond_3

    .line 924
    :try_start_2
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Ops;

    .line 925
    .local v8, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {p0, v8, p1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v9

    .line 926
    .local v9, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v9, :cond_2

    .line 927
    if-nez v7, :cond_1

    .line 928
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v10

    .line 930
    :cond_1
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    iget-object v11, v8, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v12, v8, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v12, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v10, v11, v12, v9}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 932
    .local v10, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 923
    .end local v8    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v10    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 916
    .end local v3    # "j":I
    .end local v4    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "packageCount":I
    :cond_3
    move-object v3, v7

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 936
    .end local v0    # "i":I
    .end local v1    # "uidStateCount":I
    :catchall_0
    move-exception v0

    move-object v7, v3

    goto :goto_3

    :cond_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 937
    return-object v3

    .line 936
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :catchall_1
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    .end local v0    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .line 1452
    monitor-enter p0

    .line 1453
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 1454
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_0

    .line 1455
    new-instance v1, Lcom/android/server/AppOpsService$ClientState;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    move-object v0, v1

    .line 1456
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1459
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 969
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 970
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 969
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 971
    monitor-enter p0

    .line 972
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    .line 973
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_0

    .line 974
    monitor-exit p0

    return-object v4

    .line 976
    :cond_0
    iget-object v1, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService;->collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;

    move-result-object v1

    .line 977
    .local v1, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v1, :cond_1

    .line 978
    monitor-exit p0

    return-object v4

    .line 980
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget v5, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v3, v4, v5, v1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 983
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    monitor-exit p0

    return-object v2

    .line 985
    .end local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v1    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v3    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 4108
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    .line 4109
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4111
    return v1

    .line 4114
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 4115
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4116
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 4117
    return v1

    .line 4119
    :cond_1
    monitor-enter p0

    .line 4120
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 4121
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ClientState;

    .line 4122
    .local v4, "client":Lcom/android/server/AppOpsService$ClientState;
    iget-object v5, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_3

    .line 4123
    iget-object v6, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Op;

    .line 4124
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->op:I

    if-ne v7, p1, :cond_2

    iget v7, v6, Lcom/android/server/AppOpsService$Op;->uid:I

    if-ne v7, p2, :cond_2

    monitor-exit p0

    return v3

    .line 4122
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4120
    .end local v4    # "client":Lcom/android/server/AppOpsService$ClientState;
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4127
    .end local v2    # "i":I
    :cond_4
    monitor-exit p0

    .line 4128
    return v1

    .line 4127
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 16
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 1604
    move/from16 v15, p2

    invoke-direct {v6, v15}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1605
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1607
    const/16 v0, 0x1a

    if-ne v7, v0, :cond_0

    .line 1608
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x1

    .line 1608
    move v8, v15

    move-object/from16 v9, p3

    invoke-static/range {v8 .. v14}, Lnubia/os/ApplicationManager$Trigger;->noteAppUsingCamera(ILjava/lang/String;ILjava/lang/String;JZ)V

    .line 1613
    :cond_0
    invoke-static/range {p2 .. p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1614
    .local v8, "resolvedPackageName":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 1615
    const/4 v0, 0x1

    return v0

    .line 1618
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v1, v7

    move v2, v15

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 1619
    .local v0, "mode":I
    move-object/from16 v1, p3

    invoke-direct {v6, v0, v7, v1}, Lcom/android/server/AppOpsService;->specialOpHanding(IILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method public noteOperationForM(IILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2055
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 2056
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2058
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUncheckedForM(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 2059
    .local v0, "mode":I
    invoke-direct {p0, v0, p1, p3}, Lcom/android/server/AppOpsService;->specialOpHanding(IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .locals 11
    .param p1, "code"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    .line 1583
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1584
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1585
    .local v6, "proxyUid":I
    invoke-static {v6, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1586
    .local v7, "resolveProxyPackageName":Ljava/lang/String;
    const/4 v8, 0x1

    if-nez v7, :cond_0

    .line 1587
    return v8

    .line 1589
    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v9

    .line 1591
    .local v9, "proxyMode":I
    if-nez v9, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p3, :cond_1

    goto :goto_0

    .line 1594
    :cond_1
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1595
    .local v10, "resolveProxiedPackageName":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 1596
    return v8

    .line 1598
    :cond_2
    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, v10

    move v4, v9

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 1592
    .end local v10    # "resolveProxiedPackageName":Ljava/lang/String;
    :cond_3
    :goto_0
    return v9
.end method

.method public notifyOperation(IILjava/lang/String;IZLcom/android/server/NubiaPermissionDialogReqQueue;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "remember"    # Z
    .param p6, "queue"    # Lcom/android/server/NubiaPermissionDialogReqQueue;

    .line 1927
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1928
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1929
    const/4 v0, 0x0

    .line 1930
    .local v0, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ModeCallback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .line 1931
    .local v1, "switchCode":I
    monitor-enter p0

    .line 1932
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->recordOperationLocked(IILjava/lang/String;I)V

    .line 1933
    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, p3, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1934
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_4

    .line 1935
    if-eqz p5, :cond_4

    .line 1936
    iput p4, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1937
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1938
    .local v3, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-eqz v3, :cond_1

    .line 1939
    if-nez v0, :cond_0

    .line 1940
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 1942
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1944
    :cond_1
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object v3, v4

    .line 1945
    if-eqz v3, :cond_3

    .line 1946
    if-nez v0, :cond_2

    .line 1947
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 1949
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1951
    :cond_3
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteNowLocked()V

    .line 1954
    .end local v3    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_4
    invoke-virtual {p6}, Lcom/android/server/NubiaPermissionDialogReqQueue;->getDialog()Lcom/android/server/NubiaBasePermissionDialog;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1955
    invoke-virtual {p6, p4}, Lcom/android/server/NubiaPermissionDialogReqQueue;->notifyAll(I)V

    .line 1956
    const/4 v3, 0x0

    invoke-virtual {p6, v3}, Lcom/android/server/NubiaPermissionDialogReqQueue;->setDialog(Lcom/android/server/NubiaBasePermissionDialog;)V

    .line 1958
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1959
    if-eqz v0, :cond_6

    .line 1960
    const/4 v2, 0x0

    .line 1960
    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1962
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$ModeCallback;

    iget-object v3, v3, Lcom/android/server/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v3, v1, p2, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1965
    goto :goto_1

    .line 1963
    :catch_0
    move-exception v3

    .line 1964
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "AppOps"

    const-string/jumbo v5, "repCbs.get(i).mCallback.opChanged() error "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1960
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1968
    .end local v2    # "i":I
    :cond_6
    return-void

    .line 1958
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3266
    new-instance v0, Lcom/android/server/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AppOpsService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3267
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 730
    monitor-enter p0

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 732
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_0

    .line 733
    monitor-exit p0

    return-void

    .line 736
    :cond_0
    const/4 v1, 0x0

    .line 739
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    .line 740
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;

    move-object v1, v2

    .line 744
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 745
    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_2

    .line 746
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 750
    :cond_2
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 751
    .local v2, "clientCount":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_6

    .line 752
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$ClientState;

    .line 753
    .local v5, "client":Lcom/android/server/AppOpsService$ClientState;
    iget-object v6, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 754
    goto :goto_2

    .line 756
    :cond_3
    iget-object v6, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 757
    .local v6, "opCount":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "j":I
    :goto_1
    if-ltz v7, :cond_5

    .line 758
    iget-object v8, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    .line 759
    .local v8, "op":Lcom/android/server/AppOpsService$Op;
    iget v9, v8, Lcom/android/server/AppOpsService$Op;->uid:I

    if-ne p1, v9, :cond_4

    iget-object v9, v8, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 760
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V

    .line 761
    iget-object v9, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 762
    iget v9, v8, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-gtz v9, :cond_4

    .line 763
    iget v9, v8, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-direct {p0, v9, p1, p2, v3}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 757
    .end local v8    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 751
    .end local v5    # "client":Lcom/android/server/AppOpsService$ClientState;
    .end local v6    # "opCount":I
    .end local v7    # "j":I
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 770
    .end local v4    # "i":I
    :cond_6
    if-eqz v1, :cond_8

    .line 771
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 773
    invoke-virtual {v1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    .line 774
    .local v4, "opCount":I
    move v5, v3

    .local v5, "i":I
    :goto_3
    if-ge v5, v4, :cond_8

    .line 775
    invoke-virtual {v1, v5}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Op;

    .line 776
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 777
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->op:I

    iget v8, v6, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v9, v6, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v3}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 774
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 782
    .end local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "clientCount":I
    .end local v4    # "opCount":I
    .end local v5    # "i":I
    :cond_8
    monitor-exit p0

    .line 783
    return-void

    .line 782
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 2368
    if-nez p1, :cond_0

    .line 2369
    const/4 v0, -0x1

    return v0

    .line 2371
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 626
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 627
    const-string v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 628
    const-class v0, Landroid/app/AppOpsManagerInternal;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 629
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2790
    const-string/jumbo v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2791
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2793
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 2793
    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 2794
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 2795
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 2796
    goto :goto_0

    .line 2799
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2800
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2801
    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_1

    .line 2803
    :cond_3
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2804
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2803
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2807
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 2808
    :cond_4
    return-void
.end method

.method readState()V
    .locals 13

    .line 2622
    const/4 v0, -0x1

    .line 2623
    .local v0, "oldVersion":I
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v1

    .line 2624
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2627
    :try_start_1
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2631
    .local v2, "stream":Ljava/io/FileInputStream;
    nop

    .line 2630
    nop

    .line 2632
    const/4 v3, 0x0

    .line 2633
    .local v3, "success":Z
    :try_start_2
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2635
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2636
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2638
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .line 2638
    .local v6, "type":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_0

    if-eq v6, v7, :cond_0

    .line 2638
    .end local v6    # "type":I
    goto :goto_0

    .line 2643
    .restart local v6    # "type":I
    :cond_0
    if-ne v6, v8, :cond_9

    .line 2647
    const/4 v5, 0x0

    const-string/jumbo v8, "v"

    invoke-interface {v4, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2648
    .local v5, "versionString":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 2649
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v0, v8

    .line 2652
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 2653
    .local v8, "outerDepth":I
    :cond_2
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v6, v9

    if-eq v9, v7, :cond_7

    const/4 v9, 0x3

    if-ne v6, v9, :cond_3

    .line 2654
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v8, :cond_7

    .line 2655
    :cond_3
    if-eq v6, v9, :cond_2

    const/4 v9, 0x4

    if-ne v6, v9, :cond_4

    .line 2656
    goto :goto_1

    .line 2659
    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2660
    .local v9, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "pkg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2661
    invoke-virtual {p0, v4}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 2662
    :cond_5
    const-string/jumbo v10, "uid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2663
    invoke-virtual {p0, v4}, Lcom/android/server/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 2665
    :cond_6
    const-string v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <app-ops>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2666
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2665
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2669
    .end local v9    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 2670
    :cond_7
    const/4 v3, 0x1

    .line 2684
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "versionString":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v8    # "outerDepth":I
    if-nez v3, :cond_8

    .line 2685
    :try_start_4
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2688
    :cond_8
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2690
    :goto_3
    goto/16 :goto_4

    .line 2689
    :catch_0
    move-exception v4

    .line 2691
    goto/16 :goto_4

    .line 2644
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_9
    :try_start_6
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "no start tag found"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2684
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catchall_0
    move-exception v4

    goto/16 :goto_5

    .line 2681
    :catch_1
    move-exception v4

    .line 2682
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_7
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2684
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v3, :cond_a

    .line 2685
    :try_start_8
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2688
    :cond_a
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    .line 2679
    :catch_2
    move-exception v4

    .line 2680
    .local v4, "e":Ljava/io/IOException;
    :try_start_a
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2684
    .end local v4    # "e":Ljava/io/IOException;
    if-nez v3, :cond_b

    .line 2685
    :try_start_b
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2688
    :cond_b
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    .line 2677
    :catch_3
    move-exception v4

    .line 2678
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2684
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v3, :cond_c

    .line 2685
    :try_start_e
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 2688
    :cond_c
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_3

    .line 2675
    :catch_4
    move-exception v4

    .line 2676
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_10
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2684
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    if-nez v3, :cond_d

    .line 2685
    :try_start_11
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 2688
    :cond_d
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_3

    .line 2673
    :catch_5
    move-exception v4

    .line 2674
    .local v4, "e":Ljava/lang/NullPointerException;
    :try_start_13
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 2684
    .end local v4    # "e":Ljava/lang/NullPointerException;
    if-nez v3, :cond_e

    .line 2685
    :try_start_14
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 2688
    :cond_e
    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_3

    .line 2671
    :catch_6
    move-exception v4

    .line 2672
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_16
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 2684
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    if-nez v3, :cond_f

    .line 2685
    :try_start_17
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 2688
    :cond_f
    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/16 :goto_3

    .line 2692
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    :goto_4
    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 2693
    :try_start_1a
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 2694
    monitor-enter p0

    .line 2695
    :try_start_1b
    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->upgradeLocked(I)V

    .line 2696
    monitor-exit p0

    .line 2697
    return-void

    .line 2696
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    throw v1

    .line 2684
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "success":Z
    :goto_5
    if-nez v3, :cond_10

    .line 2685
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 2688
    :cond_10
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 2690
    goto :goto_6

    .line 2689
    :catch_7
    move-exception v5

    .line 2690
    :goto_6
    :try_start_1e
    throw v4

    .line 2692
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    :catchall_2
    move-exception v2

    goto :goto_7

    .line 2628
    :catch_8
    move-exception v2

    .line 2629
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No existing app ops "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; starting empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    return-void

    .line 2692
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_20
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    :try_start_21
    throw v2

    .line 2693
    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    throw v2
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 26
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2812
    move-object/from16 v3, p2

    const-string/jumbo v0, "n"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2813
    .local v5, "uid":I
    const-string/jumbo v0, "p"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2814
    .local v6, "isPrivilegedString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2815
    .local v7, "isPrivileged":Z
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v6, :cond_3

    .line 2817
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2818
    .local v0, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_2

    .line 2819
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 2820
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-interface {v11, v3, v9, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 2821
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v11, :cond_1

    .line 2822
    iget v12, v11, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v12, v8

    if-eqz v12, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v9

    :goto_0
    move v7, v12

    .line 2825
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_1

    .line 2827
    :cond_2
    return-void

    .line 2829
    .end local v0    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 2830
    .local v0, "e":Landroid/os/RemoteException;
    const-string v11, "AppOps"

    const-string v12, "Could not contact PackageManager"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2831
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 2833
    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 2835
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2837
    .local v0, "outerDepth":I
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v12, v11

    .line 2837
    .local v12, "type":I
    if-eq v11, v10, :cond_e

    const/4 v11, 0x3

    if-ne v12, v11, :cond_5

    .line 2838
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v0, :cond_4

    goto :goto_4

    .line 2951
    :cond_4
    move/from16 v24, v0

    move-object/from16 v25, v6

    goto/16 :goto_10

    .line 2839
    :cond_5
    :goto_4
    if-eq v12, v11, :cond_d

    const/4 v13, 0x4

    if-ne v12, v13, :cond_6

    .line 2840
    nop

    .line 2835
    .end local v0    # "outerDepth":I
    .end local v6    # "isPrivilegedString":Ljava/lang/String;
    .end local v12    # "type":I
    .local v24, "outerDepth":I
    .local v25, "isPrivilegedString":Ljava/lang/String;
    :goto_5
    move/from16 v24, v0

    move-object/from16 v25, v6

    move/from16 v21, v10

    goto/16 :goto_f

    .line 2843
    .end local v24    # "outerDepth":I
    .end local v25    # "isPrivilegedString":Ljava/lang/String;
    .restart local v0    # "outerDepth":I
    .restart local v6    # "isPrivilegedString":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 2844
    .local v14, "tagName":Ljava/lang/String;
    const-string/jumbo v15, "op"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 2845
    invoke-direct {v1, v5, v10}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v15

    .line 2846
    .local v15, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v8, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v8, :cond_7

    .line 2847
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2854
    :cond_7
    const-string/jumbo v8, "n"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->getCorrectOpCode(I)I

    move-result v8

    .line 2855
    .local v8, "opCode":I
    const/4 v9, -0x2

    if-ne v9, v8, :cond_8

    .line 2856
    const-string v9, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " delete op "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "n"

    invoke-interface {v2, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    goto :goto_5

    .line 2859
    :cond_8
    new-instance v9, Lcom/android/server/AppOpsService$Op;

    invoke-direct {v9, v15, v3, v8}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 2862
    .local v9, "op":Lcom/android/server/AppOpsService$Op;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    .line 2862
    .local v17, "i":I
    :goto_6
    move/from16 v18, v17

    .line 2862
    .end local v17    # "i":I
    .local v18, "i":I
    move/from16 v4, v18

    if-ltz v4, :cond_a

    .line 2863
    .end local v18    # "i":I
    .local v4, "i":I
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    .line 2864
    .local v11, "name":Ljava/lang/String;
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    .line 2865
    .local v13, "value":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v17

    const/16 v18, 0x2

    const/16 v21, 0x5

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    const-string/jumbo v10, "tfs"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x6

    goto/16 :goto_8

    :sswitch_1
    const-string/jumbo v10, "rfs"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0xc

    goto/16 :goto_8

    :sswitch_2
    const-string/jumbo v10, "tt"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move/from16 v10, v21

    goto/16 :goto_8

    :sswitch_3
    const-string/jumbo v10, "tp"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x4

    goto/16 :goto_8

    :sswitch_4
    const-string/jumbo v10, "tf"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x7

    goto/16 :goto_8

    :sswitch_5
    const-string/jumbo v10, "tc"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x9

    goto/16 :goto_8

    :sswitch_6
    const-string/jumbo v10, "tb"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x8

    goto/16 :goto_8

    :sswitch_7
    const-string/jumbo v10, "rt"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0xb

    goto/16 :goto_8

    :sswitch_8
    const-string/jumbo v10, "rp"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0xa

    goto/16 :goto_8

    :sswitch_9
    const-string/jumbo v10, "rf"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0xd

    goto :goto_8

    :sswitch_a
    const-string/jumbo v10, "rc"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0xf

    goto :goto_8

    :sswitch_b
    const-string/jumbo v10, "rb"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0xe

    goto :goto_8

    :sswitch_c
    const-string/jumbo v10, "pu"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move/from16 v10, v18

    goto :goto_8

    :sswitch_d
    const-string/jumbo v10, "pp"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x3

    goto :goto_8

    :sswitch_e
    const-string/jumbo v10, "t"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x10

    goto :goto_8

    :sswitch_f
    const-string/jumbo v10, "r"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x11

    goto :goto_8

    :sswitch_10
    const-string/jumbo v10, "m"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    goto :goto_8

    :sswitch_11
    const-string v10, "d"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v10, -0x1

    :goto_8
    packed-switch v10, :pswitch_data_0

    .line 2934
    const/16 v19, 0x3

    const/16 v20, 0x4

    const/16 v21, 0x1

    const-string v10, "AppOps"

    move/from16 v24, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2934
    .end local v0    # "outerDepth":I
    .restart local v24    # "outerDepth":I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v6

    const-string v6, "Unknown attribute in \'op\' tag: "

    .line 2934
    .end local v6    # "isPrivilegedString":Ljava/lang/String;
    .restart local v25    # "isPrivilegedString":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    goto/16 :goto_d

    .line 2931
    .end local v24    # "outerDepth":I
    .end local v25    # "isPrivilegedString":Ljava/lang/String;
    .restart local v0    # "outerDepth":I
    .restart local v6    # "isPrivilegedString":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :pswitch_0
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v21, 0x1

    aput-wide v17, v10, v21

    .line 2932
    nop

    .line 2862
    move/from16 v24, v0

    move-object/from16 v25, v6

    const/16 v19, 0x3

    const/16 v20, 0x4

    goto/16 :goto_d

    .line 2927
    :pswitch_1
    const/16 v21, 0x1

    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    aput-wide v17, v10, v21

    .line 2928
    goto :goto_9

    .line 2922
    :pswitch_2
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2923
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    aput-wide v17, v10, v21

    .line 2924
    goto :goto_9

    .line 2918
    :pswitch_3
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2919
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v20, 0x4

    aput-wide v17, v10, v20

    .line 2920
    goto :goto_9

    .line 2914
    :pswitch_4
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2915
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v19, 0x3

    aput-wide v17, v10, v19

    .line 2916
    goto :goto_9

    .line 2910
    :pswitch_5
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2911
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    aput-wide v22, v10, v18

    .line 2912
    goto :goto_9

    .line 2907
    :pswitch_6
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v21, 0x1

    aput-wide v17, v10, v21

    .line 2908
    goto :goto_9

    .line 2903
    :pswitch_7
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2904
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v16, 0x0

    aput-wide v17, v10, v16

    .line 2905
    goto :goto_9

    .line 2900
    :pswitch_8
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    aput-wide v17, v10, v21

    .line 2901
    nop

    .line 2862
    .end local v0    # "outerDepth":I
    .end local v6    # "isPrivilegedString":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    .restart local v24    # "outerDepth":I
    .restart local v25    # "isPrivilegedString":Ljava/lang/String;
    :goto_9
    move/from16 v24, v0

    move-object/from16 v25, v6

    const/16 v19, 0x3

    const/16 v20, 0x4

    goto :goto_b

    .line 2897
    .end local v24    # "outerDepth":I
    .end local v25    # "isPrivilegedString":Ljava/lang/String;
    .restart local v0    # "outerDepth":I
    .restart local v6    # "isPrivilegedString":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :pswitch_9
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v20, 0x4

    aput-wide v17, v10, v20

    .line 2898
    nop

    .line 2862
    move/from16 v24, v0

    move-object/from16 v25, v6

    const/16 v19, 0x3

    goto :goto_b

    .line 2894
    :pswitch_a
    const/16 v20, 0x4

    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v19, 0x3

    aput-wide v17, v10, v19

    .line 2895
    goto :goto_a

    .line 2890
    :pswitch_b
    const/16 v19, 0x3

    const/16 v20, 0x4

    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    .line 2891
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    aput-wide v22, v10, v18

    .line 2892
    nop

    .line 2862
    .end local v0    # "outerDepth":I
    .end local v6    # "isPrivilegedString":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    .restart local v24    # "outerDepth":I
    .restart local v25    # "isPrivilegedString":Ljava/lang/String;
    :goto_a
    move/from16 v24, v0

    move-object/from16 v25, v6

    :goto_b
    const/16 v21, 0x1

    goto :goto_d

    .line 2887
    .end local v24    # "outerDepth":I
    .end local v25    # "isPrivilegedString":Ljava/lang/String;
    .restart local v0    # "outerDepth":I
    .restart local v6    # "isPrivilegedString":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :pswitch_c
    const/16 v19, 0x3

    const/16 v20, 0x4

    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v21, 0x1

    aput-wide v17, v10, v21

    .line 2888
    goto :goto_c

    .line 2884
    :pswitch_d
    const/16 v19, 0x3

    const/16 v20, 0x4

    const/16 v21, 0x1

    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v16, 0x0

    aput-wide v17, v10, v16

    .line 2885
    goto :goto_c

    .line 2881
    :pswitch_e
    const/16 v19, 0x3

    const/16 v20, 0x4

    const/16 v21, 0x1

    iput-object v13, v9, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 2882
    goto :goto_c

    .line 2878
    :pswitch_f
    const/16 v19, 0x3

    const/16 v20, 0x4

    const/16 v21, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 2879
    goto :goto_c

    .line 2875
    :pswitch_10
    const/16 v19, 0x3

    const/16 v20, 0x4

    const/16 v21, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 2876
    goto :goto_c

    .line 2871
    :pswitch_11
    const/16 v19, 0x3

    const/16 v20, 0x4

    const/16 v21, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->getCorrectOpMode(I)I

    move-result v10

    iput v10, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 2873
    nop

    .line 2862
    .end local v0    # "outerDepth":I
    .end local v6    # "isPrivilegedString":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    .restart local v24    # "outerDepth":I
    .restart local v25    # "isPrivilegedString":Ljava/lang/String;
    :goto_c
    move/from16 v24, v0

    move-object/from16 v25, v6

    :goto_d
    add-int/lit8 v17, v4, -0x1

    .line 2862
    .end local v4    # "i":I
    .restart local v17    # "i":I
    move/from16 v11, v19

    move/from16 v13, v20

    move/from16 v10, v21

    move/from16 v0, v24

    move-object/from16 v6, v25

    const/4 v4, 0x0

    goto/16 :goto_6

    .line 2939
    .end local v17    # "i":I
    .end local v24    # "outerDepth":I
    .end local v25    # "isPrivilegedString":Ljava/lang/String;
    .restart local v0    # "outerDepth":I
    .restart local v6    # "isPrivilegedString":Ljava/lang/String;
    :cond_a
    move/from16 v24, v0

    move-object/from16 v25, v6

    move/from16 v21, v10

    .line 2939
    .end local v0    # "outerDepth":I
    .end local v6    # "isPrivilegedString":Ljava/lang/String;
    .restart local v24    # "outerDepth":I
    .restart local v25    # "isPrivilegedString":Ljava/lang/String;
    iget-object v0, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Ops;

    .line 2940
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_b

    .line 2941
    new-instance v4, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v4, v3, v15, v7}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    move-object v0, v4

    .line 2942
    iget-object v4, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2944
    :cond_b
    iget v4, v9, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v4, v9}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2945
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "opCode":I
    .end local v9    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v15    # "uidState":Lcom/android/server/AppOpsService$UidState;
    goto :goto_e

    .line 2946
    .end local v24    # "outerDepth":I
    .end local v25    # "isPrivilegedString":Ljava/lang/String;
    .local v0, "outerDepth":I
    .restart local v6    # "isPrivilegedString":Ljava/lang/String;
    :cond_c
    move/from16 v24, v0

    move-object/from16 v25, v6

    move/from16 v21, v10

    .line 2946
    .end local v0    # "outerDepth":I
    .end local v6    # "isPrivilegedString":Ljava/lang/String;
    .restart local v24    # "outerDepth":I
    .restart local v25    # "isPrivilegedString":Ljava/lang/String;
    const-string v0, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2947
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2946
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2950
    .end local v14    # "tagName":Ljava/lang/String;
    :goto_e
    goto :goto_f

    .line 2835
    .end local v12    # "type":I
    .end local v24    # "outerDepth":I
    .end local v25    # "isPrivilegedString":Ljava/lang/String;
    .restart local v0    # "outerDepth":I
    .restart local v6    # "isPrivilegedString":Ljava/lang/String;
    :cond_d
    move/from16 v24, v0

    move-object/from16 v25, v6

    move/from16 v21, v10

    .line 2835
    .end local v0    # "outerDepth":I
    .end local v6    # "isPrivilegedString":Ljava/lang/String;
    .restart local v24    # "outerDepth":I
    .restart local v25    # "isPrivilegedString":Ljava/lang/String;
    :goto_f
    move/from16 v10, v21

    move/from16 v0, v24

    move-object/from16 v6, v25

    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2951
    .end local v24    # "outerDepth":I
    .end local v25    # "isPrivilegedString":Ljava/lang/String;
    .restart local v0    # "outerDepth":I
    .restart local v6    # "isPrivilegedString":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_e
    move/from16 v24, v0

    move-object/from16 v25, v6

    .line 2951
    .end local v0    # "outerDepth":I
    .end local v6    # "isPrivilegedString":Ljava/lang/String;
    .restart local v24    # "outerDepth":I
    .restart local v25    # "isPrivilegedString":Ljava/lang/String;
    :goto_10
    const/4 v4, 0x0

    invoke-direct {v1, v5, v4}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    .line 2952
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v0, :cond_f

    .line 2953
    iget-object v4, v1, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2955
    :cond_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_11
        0x6d -> :sswitch_10
        0x72 -> :sswitch_f
        0x74 -> :sswitch_e
        0xe00 -> :sswitch_d
        0xe05 -> :sswitch_c
        0xe30 -> :sswitch_b
        0xe31 -> :sswitch_a
        0xe34 -> :sswitch_9
        0xe3e -> :sswitch_8
        0xe42 -> :sswitch_7
        0xe6e -> :sswitch_6
        0xe6f -> :sswitch_5
        0xe72 -> :sswitch_4
        0xe7c -> :sswitch_3
        0xe80 -> :sswitch_2
        0x1b8bf -> :sswitch_1
        0x1c041 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2752
    const-string/jumbo v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2753
    .local v0, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 2755
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .line 2755
    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_6

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1

    .line 2756
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_6

    .line 2757
    :cond_1
    if-eq v4, v3, :cond_0

    const/4 v3, 0x4

    if-ne v4, v3, :cond_2

    .line 2758
    goto :goto_0

    .line 2761
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2762
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "op"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2768
    const-string/jumbo v6, "n"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->getCorrectOpCode(I)I

    move-result v6

    .line 2769
    .local v6, "code":I
    const/4 v7, -0x2

    if-ne v7, v6, :cond_3

    .line 2770
    const-string v5, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " delete op "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "n"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    goto :goto_0

    .line 2773
    :cond_3
    const-string/jumbo v7, "m"

    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcn/nubia/server/appmgmt/permission/AppOpsUtils;->getCorrectOpMode(I)I

    move-result v7

    .line 2775
    .local v7, "mode":I
    invoke-direct {p0, v0, v5}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v5

    .line 2776
    .local v5, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v8, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v8, :cond_4

    .line 2777
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2779
    :cond_4
    iget-object v8, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2780
    .end local v5    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v6    # "code":I
    .end local v7    # "mode":I
    goto :goto_1

    .line 2781
    :cond_5
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <uid-ops>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2782
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2781
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2785
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 2786
    :cond_6
    return-void
.end method

.method public removeUser(I)V
    .locals 3
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4095
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 4096
    monitor-enter p0

    .line 4097
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4098
    .local v0, "tokenCount":I
    add-int/lit8 v1, v0, -0x1

    .line 4098
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 4099
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 4100
    .local v2, "opRestrictions":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-virtual {v2, p1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->removeUser(I)V

    .line 4098
    .end local v2    # "opRestrictions":Lcom/android/server/AppOpsService$ClientRestrictionState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4102
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->removeUidsForUserLocked(I)V

    .line 4103
    .end local v0    # "tokenCount":I
    monitor-exit p0

    .line 4104
    return-void

    .line 4103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 29
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    move-object/from16 v7, p0

    .line 1251
    move-object/from16 v8, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1252
    .local v6, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1253
    .local v5, "callingUid":I
    const-string/jumbo v14, "resetAllModes"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v15, 0x0

    move v9, v6

    move v10, v5

    move/from16 v11, p1

    invoke-static/range {v9 .. v15}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1256
    .end local p1    # "reqUserId":I
    .local v9, "reqUserId":I
    const/4 v1, -0x1

    .line 1257
    .local v1, "reqUid":I
    if-eqz v8, :cond_0

    .line 1259
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-interface {v0, v8, v2, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 1263
    goto :goto_0

    .line 1261
    :catch_0
    move-exception v0

    .line 1266
    .end local v1    # "reqUid":I
    .local v10, "reqUid":I
    :cond_0
    :goto_0
    move v10, v1

    invoke-virtual {v7, v6, v5, v10}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1268
    const/4 v1, 0x0

    .line 1269
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    monitor-enter p0

    .line 1270
    const/4 v0, 0x0

    .line 1271
    .local v0, "changed":Z
    :try_start_1
    iget-object v2, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    add-int/lit8 v2, v2, -0x1

    move-object v11, v1

    .line 1271
    .end local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v2, "i":I
    .local v11, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :goto_1
    move v1, v2

    .line 1271
    .end local v2    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_12

    .line 1272
    :try_start_2
    iget-object v2, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    .line 1274
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1275
    .local v3, "opModes":Landroid/util/SparseIntArray;
    const/4 v4, -0x1

    if-eqz v3, :cond_6

    iget v13, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v13, v10, :cond_2

    if-ne v10, v4, :cond_1

    goto :goto_2

    .line 1294
    :cond_1
    move-object/from16 v19, v3

    move/from16 v22, v5

    move/from16 v23, v6

    goto/16 :goto_7

    .line 1276
    :cond_2
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 1277
    .local v13, "uidOpCount":I
    add-int/lit8 v14, v13, -0x1

    .line 1277
    .local v14, "j":I
    :goto_3
    if-ltz v14, :cond_6

    .line 1278
    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 1279
    .local v15, "code":I
    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1280
    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1281
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-gtz v16, :cond_3

    .line 1282
    const/4 v12, 0x0

    :try_start_3
    iput-object v12, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1346
    .end local v0    # "changed":Z
    .end local v1    # "i":I
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v3    # "opModes":Landroid/util/SparseIntArray;
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v15    # "code":I
    :catchall_0
    move-exception v0

    move/from16 v19, v5

    move/from16 v16, v6

    move-object v1, v11

    goto/16 :goto_13

    .line 1284
    .restart local v0    # "changed":Z
    .restart local v1    # "i":I
    .restart local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v3    # "opModes":Landroid/util/SparseIntArray;
    .restart local v13    # "uidOpCount":I
    .restart local v14    # "j":I
    .restart local v15    # "code":I
    :cond_3
    :goto_4
    :try_start_4
    iget v12, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v12}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    array-length v4, v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v19, v3

    move-object v3, v11

    const/4 v11, 0x0

    .line 1284
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v3, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v19, "opModes":Landroid/util/SparseIntArray;
    :goto_5
    if-ge v11, v4, :cond_4

    :try_start_5
    aget-object v16, v12, v11

    move-object/from16 v20, v16

    .line 1285
    .local v20, "packageName":Ljava/lang/String;
    move/from16 v21, v4

    iget v4, v2, Lcom/android/server/AppOpsService$UidState;->uid:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v22, v5

    :try_start_6
    iget-object v5, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1286
    .end local v5    # "callingUid":I
    .local v22, "callingUid":I
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1285
    move/from16 v23, v6

    move-object/from16 v6, v20

    :try_start_7
    invoke-static {v3, v15, v4, v6, v5}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4

    .line 1285
    .end local v20    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    .local v23, "callingPid":I
    move-object v3, v4

    .line 1287
    iget v4, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v5, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1288
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1287
    invoke-static {v3, v15, v4, v6, v5}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v3, v4

    .line 1284
    .end local v6    # "packageName":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    goto :goto_5

    .line 1346
    .end local v0    # "changed":Z
    .end local v1    # "i":I
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v15    # "code":I
    .end local v19    # "opModes":Landroid/util/SparseIntArray;
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto/16 :goto_e

    .line 1346
    .end local v23    # "callingPid":I
    .local v6, "callingPid":I
    :catchall_2
    move-exception v0

    move-object v1, v3

    move/from16 v16, v6

    move/from16 v19, v22

    .line 1346
    .end local v6    # "callingPid":I
    .restart local v23    # "callingPid":I
    goto/16 :goto_13

    .line 1346
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :catchall_3
    move-exception v0

    move-object v1, v3

    move/from16 v19, v5

    move/from16 v16, v6

    goto/16 :goto_d

    .line 1277
    .restart local v0    # "changed":Z
    .restart local v1    # "i":I
    .restart local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v13    # "uidOpCount":I
    .restart local v14    # "j":I
    .restart local v19    # "opModes":Landroid/util/SparseIntArray;
    :cond_4
    move/from16 v22, v5

    move/from16 v23, v6

    move-object v11, v3

    .line 1277
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    goto :goto_6

    .line 1277
    .end local v19    # "opModes":Landroid/util/SparseIntArray;
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .local v3, "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :cond_5
    move-object/from16 v19, v3

    move/from16 v22, v5

    move/from16 v23, v6

    .line 1277
    .end local v3    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v19    # "opModes":Landroid/util/SparseIntArray;
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :goto_6
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v3, v19

    move/from16 v5, v22

    move/from16 v6, v23

    const/4 v4, -0x1

    goto/16 :goto_3

    .line 1294
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v19    # "opModes":Landroid/util/SparseIntArray;
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v3    # "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :cond_6
    move-object/from16 v19, v3

    move/from16 v22, v5

    move/from16 v23, v6

    .line 1294
    .end local v3    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v19    # "opModes":Landroid/util/SparseIntArray;
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :goto_7
    :try_start_8
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_7

    .line 1295
    goto/16 :goto_c

    .line 1298
    :cond_7
    const/4 v3, -0x1

    if-eq v9, v3, :cond_8

    iget v3, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 1299
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v9, v3, :cond_8

    .line 1301
    goto/16 :goto_c

    .line 1304
    :cond_8
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1305
    .local v3, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1306
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    const/16 v17, 0x0

    .line 1307
    .local v17, "uidChanged":Z
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1308
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1309
    .local v5, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1310
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_9

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 1312
    goto :goto_8

    .line 1314
    :cond_9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$Ops;

    .line 1315
    .local v12, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual {v12}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 1315
    .local v13, "j":I
    :goto_9
    if-ltz v13, :cond_d

    .line 1316
    invoke-virtual {v12, v13}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AppOpsService$Op;

    .line 1317
    .local v14, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v15, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v15

    if-eqz v15, :cond_c

    iget v15, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v24, v0

    iget v0, v14, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1318
    .end local v0    # "changed":Z
    .local v24, "changed":Z
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    if-eq v15, v0, :cond_b

    .line 1319
    iget v0, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1320
    const/4 v0, 0x1

    .line 1321
    .end local v24    # "changed":Z
    .restart local v0    # "changed":Z
    const/16 v17, 0x1

    .line 1322
    iget v15, v14, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v25, v0

    iget v0, v14, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 1322
    .end local v0    # "changed":Z
    .local v25, "changed":Z
    move-object/from16 v26, v3

    iget-object v3, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1322
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .local v26, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    move-object/from16 v27, v5

    iget v5, v14, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1323
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .local v27, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1322
    invoke-static {v11, v15, v0, v6, v3}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v3, v0

    .line 1324
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v3, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :try_start_9
    iget v0, v14, Lcom/android/server/AppOpsService$Op;->op:I

    iget v5, v14, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v11, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1325
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 1324
    invoke-static {v3, v0, v5, v6, v11}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0

    move-object v3, v0

    .line 1326
    invoke-virtual {v14}, Lcom/android/server/AppOpsService$Op;->hasAnyTime()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1327
    invoke-virtual {v12, v13}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1315
    .end local v14    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_a
    move-object v11, v3

    move/from16 v0, v25

    goto :goto_b

    .line 1315
    .end local v25    # "changed":Z
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .local v3, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v24    # "changed":Z
    :cond_b
    move-object/from16 v26, v3

    move-object/from16 v27, v5

    .line 1315
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    goto :goto_a

    .line 1315
    .end local v24    # "changed":Z
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v0    # "changed":Z
    .restart local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_c
    move/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v5

    .line 1315
    .end local v0    # "changed":Z
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v24    # "changed":Z
    .restart local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :goto_a
    move/from16 v0, v24

    .line 1315
    .end local v24    # "changed":Z
    .restart local v0    # "changed":Z
    :goto_b
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v3, v26

    move-object/from16 v5, v27

    goto :goto_9

    .line 1331
    .end local v13    # "j":I
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_d
    move/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v5

    .line 1331
    .end local v0    # "changed":Z
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v24    # "changed":Z
    .restart local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :try_start_a
    invoke-virtual {v12}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 1332
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1334
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v12    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_e
    nop

    .line 1306
    move/from16 v0, v24

    move-object/from16 v3, v26

    goto/16 :goto_8

    .line 1335
    .end local v24    # "changed":Z
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v0    # "changed":Z
    .restart local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_f
    move-object/from16 v26, v3

    .line 1335
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1336
    iget-object v3, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    iget v5, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1338
    :cond_10
    if-eqz v17, :cond_11

    .line 1339
    iget-object v3, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1271
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v17    # "uidChanged":Z
    .end local v19    # "opModes":Landroid/util/SparseIntArray;
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_11
    :goto_c
    add-int/lit8 v2, v1, -0x1

    .line 1271
    .end local v1    # "i":I
    .local v2, "i":I
    move/from16 v5, v22

    move/from16 v6, v23

    goto/16 :goto_1

    .line 1346
    .end local v0    # "changed":Z
    .end local v2    # "i":I
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .local v5, "callingUid":I
    .local v6, "callingPid":I
    :catchall_4
    move-exception v0

    move/from16 v19, v5

    move/from16 v16, v6

    move-object v1, v11

    .line 1346
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v16, "callingPid":I
    .local v19, "callingUid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :goto_d
    goto/16 :goto_13

    .line 1343
    .end local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v0    # "changed":Z
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :cond_12
    move/from16 v22, v5

    move/from16 v23, v6

    .line 1343
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    if-eqz v0, :cond_13

    .line 1344
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1344
    .end local v0    # "changed":Z
    goto :goto_f

    .line 1346
    :catchall_5
    move-exception v0

    move-object v1, v11

    .line 1346
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    :goto_e
    move/from16 v19, v22

    move/from16 v16, v23

    goto/16 :goto_13

    .line 1346
    .end local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :cond_13
    :goto_f
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1347
    if-eqz v11, :cond_15

    .line 1348
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Map$Entry;

    .line 1349
    .local v12, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1350
    .local v13, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/ArrayList;

    .line 1351
    .local v14, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    const/4 v1, 0x0

    .line 1351
    .local v1, "i":I
    :goto_11
    move v15, v1

    .line 1351
    .end local v1    # "i":I
    .local v15, "i":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_14

    .line 1352
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/AppOpsService$ChangeRec;

    .line 1353
    .local v6, "rep":Lcom/android/server/AppOpsService$ChangeRec;
    iget-object v5, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    iget v2, v6, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    .line 1355
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v2, v6, Lcom/android/server/AppOpsService$ChangeRec;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v3, v6, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 1353
    move-object v2, v7

    move-object/from16 v18, v3

    move-object v3, v13

    move-object/from16 v28, v0

    move-object v0, v5

    move/from16 v19, v22

    move-object/from16 v5, v16

    .line 1353
    .end local v22    # "callingUid":I
    .restart local v19    # "callingUid":I
    move-object/from16 v20, v6

    move/from16 v16, v23

    move-object/from16 v6, v18

    .line 1353
    .end local v6    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v23    # "callingPid":I
    .restart local v16    # "callingPid":I
    .local v20, "rep":Lcom/android/server/AppOpsService$ChangeRec;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1351
    .end local v20    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    add-int/lit8 v1, v15, 0x1

    .line 1351
    .end local v15    # "i":I
    .restart local v1    # "i":I
    move-object/from16 v0, v28

    goto :goto_11

    .line 1357
    .end local v1    # "i":I
    .end local v12    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v13    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v14    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :cond_14
    move-object/from16 v28, v0

    move/from16 v19, v22

    move/from16 v16, v23

    .line 1357
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    goto :goto_10

    .line 1360
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :cond_15
    move/from16 v19, v22

    move/from16 v16, v23

    .line 1360
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "nubia.permission.action.RESET_ALL_MODES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1361
    .local v0, "resetAllMode":Landroid/content/Intent;
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    if-nez v8, :cond_16

    const-string v2, ""

    goto :goto_12

    :cond_16
    move-object v2, v8

    :goto_12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1362
    iget-object v1, v7, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1364
    return-void

    .line 1346
    .end local v0    # "resetAllMode":Landroid/content/Intent;
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :catchall_6
    move-exception v0

    move/from16 v19, v22

    move/from16 v16, v23

    move-object v1, v11

    .line 1346
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    goto :goto_13

    .line 1346
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v5    # "callingUid":I
    .local v6, "callingPid":I
    :catchall_7
    move-exception v0

    move/from16 v19, v5

    move/from16 v16, v6

    .line 1346
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    :goto_13
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_13
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 1535
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1536
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1537
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1538
    monitor-enter p0

    .line 1539
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1540
    .local v0, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-nez v0, :cond_0

    .line 1541
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 1542
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1544
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1545
    if-eqz p4, :cond_3

    .line 1546
    new-instance v1, Lcom/android/server/AppOpsService$Restriction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$1;)V

    .line 1547
    .local v1, "r":Lcom/android/server/AppOpsService$Restriction;
    iput p4, v1, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 1548
    if-eqz p5, :cond_2

    .line 1549
    array-length v2, p5

    .line 1550
    .local v2, "N":I
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, v1, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 1551
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1552
    aget-object v4, p5, v3

    .line 1553
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1554
    iget-object v5, v1, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1551
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1558
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1560
    .end local v0    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .end local v1    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1562
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;

    .line 1563
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1562
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1564
    return-void

    .line 1560
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 1134
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1135
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1136
    const/4 v0, 0x0

    .line 1137
    .local v0, "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 1138
    monitor-enter p0

    .line 1139
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p2, v1}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v1

    .line 1140
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1141
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_6

    .line 1142
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v3, p4, :cond_6

    .line 1143
    iput p4, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1144
    if-eqz v1, :cond_0

    .line 1145
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1147
    :cond_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1148
    .local v3, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-eqz v3, :cond_2

    .line 1149
    if-nez v0, :cond_1

    .line 1150
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    .line 1152
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1154
    :cond_2
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object v3, v4

    .line 1155
    if-eqz v3, :cond_4

    .line 1156
    if-nez v0, :cond_3

    .line 1157
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    .line 1159
    :cond_3
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1161
    :cond_4
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    if-ne p4, v4, :cond_5

    .line 1164
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1166
    :cond_5
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 1169
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v3    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    if-eqz v0, :cond_7

    .line 1171
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;

    .line 1173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1171
    move-object v3, p0

    move-object v4, v0

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1175
    :cond_7
    return-void

    .line 1169
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setUidMode(III)V
    .locals 19
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 1031
    move/from16 v9, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v7, v0, v1, v8}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1032
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1033
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v10

    .line 1035
    .end local p1    # "code":I
    .local v10, "code":I
    monitor-enter p0

    .line 1036
    :try_start_0
    invoke-static {v10}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 1038
    .local v0, "defaultMode":I
    const/4 v11, 0x0

    invoke-direct {v7, v8, v11}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v1

    .line 1039
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v12, 0x0

    if-nez v1, :cond_1

    .line 1040
    if-ne v9, v0, :cond_0

    .line 1041
    monitor-exit p0

    return-void

    .line 1043
    :cond_0
    new-instance v2, Lcom/android/server/AppOpsService$UidState;

    invoke-direct {v2, v8}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    move-object v1, v2

    .line 1044
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1045
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1046
    iget-object v2, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1047
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_1

    .line 1048
    :cond_1
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v2, :cond_2

    .line 1049
    if-eq v9, v0, :cond_6

    .line 1050
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1051
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1052
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_1

    .line 1055
    :cond_2
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v2, v9, :cond_3

    .line 1056
    monitor-exit p0

    return-void

    .line 1058
    :cond_3
    if-ne v9, v0, :cond_4

    .line 1059
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1060
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_5

    .line 1061
    iput-object v12, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1064
    :cond_4
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1066
    :cond_5
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 1068
    .end local v0    # "defaultMode":I
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_6
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1070
    invoke-static/range {p2 .. p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 1071
    .local v13, "uidPackageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1073
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 1074
    :try_start_1
    iget-object v0, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1075
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-eqz v0, :cond_9

    .line 1076
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1077
    .local v2, "callbackCount":I
    move-object v3, v1

    move v1, v11

    .local v1, "i":I
    .local v3, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_2
    if-ge v1, v2, :cond_8

    .line 1078
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1079
    .local v4, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1080
    .local v5, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v5, v13}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1081
    if-nez v3, :cond_7

    .line 1082
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v6

    .line 1084
    :cond_7
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1077
    .end local v4    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v5    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1106
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .end local v1    # "i":I
    .end local v2    # "callbackCount":I
    :catchall_0
    move-exception v0

    move-object v1, v3

    goto/16 :goto_8

    .line 1088
    .restart local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_8
    move-object v1, v3

    .end local v3    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_9
    :try_start_3
    array-length v2, v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v14, v1

    move-object v1, v0

    move v0, v11

    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .local v1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .local v14, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_3
    if-ge v0, v2, :cond_d

    :try_start_4
    aget-object v3, v13, v0

    .line 1089
    .local v3, "uidPackageName":Ljava/lang/String;
    iget-object v4, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object v1, v4

    .line 1090
    if-eqz v1, :cond_c

    .line 1091
    if-nez v14, :cond_a

    .line 1092
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 1094
    .end local v14    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v4, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object v14, v4

    .end local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v14    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_a
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 1095
    .local v4, "callbackCount":I
    move v5, v11

    .local v5, "i":I
    :goto_4
    if-ge v5, v4, :cond_c

    .line 1096
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1097
    .local v6, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    .line 1098
    .local v15, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v15, :cond_b

    .line 1099
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v11

    .line 1100
    invoke-virtual {v14, v6, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    :cond_b
    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1095
    .end local v6    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v15    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x0

    goto :goto_4

    .line 1088
    .end local v3    # "uidPackageName":Ljava/lang/String;
    .end local v4    # "callbackCount":I
    .end local v5    # "i":I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x0

    goto :goto_3

    .line 1106
    .end local v1    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :catchall_1
    move-exception v0

    move-object v1, v14

    goto/16 :goto_8

    :cond_d
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1108
    if-nez v14, :cond_e

    .line 1109
    return-void

    .line 1112
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 1113
    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1114
    .local v11, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/util/ArraySet;

    .line 1115
    .local v15, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v15, :cond_f

    .line 1116
    iget-object v6, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    .line 1118
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v16, v12

    check-cast v16, Ljava/lang/String;

    .line 1116
    move-object v2, v7

    move-object v3, v11

    move-object v12, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    .line 1121
    :cond_f
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v12

    .line 1122
    .local v12, "reportedPackageCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    move v6, v1

    .end local v1    # "j":I
    .local v6, "j":I
    if-ge v6, v12, :cond_10

    .line 1123
    invoke-virtual {v15, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    .line 1124
    .local v16, "reportedPackageName":Ljava/lang/String;
    iget-object v5, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    .line 1126
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 1124
    move-object v2, v7

    move-object v3, v11

    move-object v8, v5

    move-object/from16 v5, v17

    move/from16 v17, v6

    move-object/from16 v6, v16

    .end local v6    # "j":I
    .local v17, "j":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1122
    .end local v16    # "reportedPackageName":Ljava/lang/String;
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "j":I
    .restart local v1    # "j":I
    move/from16 v8, p2

    goto :goto_6

    .line 1112
    .end local v1    # "j":I
    .end local v11    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v12    # "reportedPackageCount":I
    .end local v15    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_10
    :goto_7
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, p2

    const/4 v12, 0x0

    goto :goto_5

    .line 1130
    .end local v0    # "i":I
    :cond_11
    return-void

    .line 1106
    .end local v14    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :catchall_2
    move-exception v0

    :goto_8
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 1068
    .end local v1    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v13    # "uidPackageNames":[Ljava/lang/String;
    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 4036
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4037
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    .line 4038
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 4037
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 4040
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_2

    .line 4041
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 4043
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4045
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4049
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 4050
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4051
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 4052
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .locals 9
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userHandle"    # I

    .line 4021
    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 4022
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4023
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4024
    const/4 v0, 0x0

    move v1, v0

    .line 4024
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x59

    if-ge v1, v2, :cond_1

    .line 4025
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v8

    .line 4026
    .local v8, "restriction":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 4027
    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v7, 0x0

    move-object v2, p0

    move v3, v1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 4024
    .end local v8    # "restriction":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4031
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 838
    const-string v0, "AppOps"

    const-string v1, "Writing app ops before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 841
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    .line 842
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 843
    const/4 v0, 0x1

    .line 845
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    if-eqz v0, :cond_1

    .line 847
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 849
    :cond_1
    return-void

    .line 845
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "startIfModeDefault"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 2193
    invoke-direct {v1, v3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 2194
    invoke-direct {v1, v2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2195
    invoke-static/range {p3 .. p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2196
    .local v4, "resolvedPackageName":Ljava/lang/String;
    const/4 v0, 0x1

    if-nez v4, :cond_0

    .line 2197
    return v0

    .line 2199
    :cond_0
    move-object/from16 v5, p1

    check-cast v5, Lcom/android/server/AppOpsService$ClientState;

    .line 2200
    .local v5, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 2201
    const/4 v6, 0x0

    :try_start_0
    invoke-direct {v1, v3, v4, v0, v6}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v7

    .line 2203
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v7, :cond_1

    .line 2206
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 2208
    :cond_1
    invoke-direct {v1, v7, v2, v0}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v8

    .line 2209
    .local v8, "op":Lcom/android/server/AppOpsService$Op;
    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2210
    monitor-exit p0

    return v0

    .line 2212
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v9

    .line 2213
    .local v9, "switchCode":I
    iget-object v10, v7, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 2216
    .local v10, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v11, v10, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v12, 0x5

    const/16 v13, 0x12

    const/16 v6, 0x10

    const/4 v0, 0x3

    if-eqz v11, :cond_8

    iget-object v11, v10, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v11

    if-ltz v11, :cond_8

    .line 2217
    iget-object v11, v10, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/AppOpsService$UidState;->evalMode(I)I

    move-result v11

    .line 2219
    .local v11, "uidMode":I
    if-eq v2, v6, :cond_3

    if-ne v2, v13, :cond_5

    :cond_3
    if-eqz v11, :cond_5

    if-eqz p5, :cond_4

    if-eq v11, v0, :cond_5

    .line 2224
    :cond_4
    iget-object v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v6, v10, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    aput-wide v12, v0, v6

    .line 2225
    monitor-exit p0

    return v11

    .line 2226
    :cond_5
    if-eq v11, v12, :cond_7

    if-eqz v11, :cond_7

    if-eqz p5, :cond_6

    if-eq v11, v0, :cond_7

    .line 2231
    :cond_6
    iget-object v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v6, v10, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    aput-wide v12, v0, v6

    .line 2232
    monitor-exit p0

    return v11

    .line 2235
    .end local v11    # "uidMode":I
    :cond_7
    goto :goto_3

    .line 2236
    :cond_8
    if-eq v9, v2, :cond_9

    const/4 v11, 0x1

    invoke-direct {v1, v7, v9, v11}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v15

    goto :goto_0

    :cond_9
    move-object v15, v8

    :goto_0
    move-object v11, v15

    .line 2237
    .local v11, "switchOp":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {v11}, Lcom/android/server/AppOpsService$Op;->getMode()I

    move-result v15

    move/from16 v16, v15

    .line 2239
    .local v16, "mode":I
    if-eq v2, v6, :cond_b

    if-ne v2, v13, :cond_a

    goto :goto_1

    .line 2246
    :cond_a
    move/from16 v6, v16

    goto :goto_2

    .line 2239
    :cond_b
    :goto_1
    move/from16 v6, v16

    if-eqz v6, :cond_d

    .end local v16    # "mode":I
    .local v6, "mode":I
    if-eqz p5, :cond_c

    if-eq v6, v0, :cond_d

    .line 2244
    :cond_c
    iget-object v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v12, v10, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    aput-wide v13, v0, v12

    .line 2245
    monitor-exit p0

    return v6

    .line 2246
    :cond_d
    :goto_2
    if-eq v6, v12, :cond_f

    if-eqz v6, :cond_f

    if-eqz p5, :cond_e

    if-eq v6, v0, :cond_f

    .line 2251
    :cond_e
    iget-object v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v12, v10, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    aput-wide v13, v0, v12

    .line 2252
    monitor-exit p0

    return v6

    .line 2258
    .end local v6    # "mode":I
    .end local v11    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_f
    :goto_3
    iget v0, v8, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-nez v0, :cond_10

    .line 2259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v8, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    .line 2260
    iget-object v0, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v6, v10, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    aput-wide v11, v0, v6

    .line 2261
    iget-object v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v6, v10, Lcom/android/server/AppOpsService$UidState;->state:I

    const-wide/16 v11, 0x0

    aput-wide v11, v0, v6

    .line 2262
    const/4 v0, -0x1

    iput v0, v8, Lcom/android/server/AppOpsService$Op;->duration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2263
    move-object/from16 v6, p4

    const/4 v0, 0x1

    :try_start_1
    invoke-direct {v1, v2, v3, v6, v0}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    goto :goto_4

    .line 2265
    :cond_10
    move-object/from16 v6, p4

    :goto_4
    iget v0, v8, Lcom/android/server/AppOpsService$Op;->startNesting:I

    const/4 v11, 0x1

    add-int/2addr v0, v11

    iput v0, v8, Lcom/android/server/AppOpsService$Op;->startNesting:I

    .line 2266
    iget v0, v10, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    add-int/2addr v0, v11

    iput v0, v10, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    .line 2267
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 2268
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2270
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v9    # "switchCode":I
    .end local v10    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_11
    monitor-exit p0

    .line 2272
    const/4 v0, 0x0

    return v0

    .line 2270
    :catchall_0
    move-exception v0

    move-object/from16 v6, p4

    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method public startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 12
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 2003
    const/4 v0, -0x1

    .line 2004
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2005
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2006
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2008
    move v0, v7

    .line 2010
    :cond_0
    const/4 v9, 0x0

    if-eqz p1, :cond_1

    .line 2011
    const/16 v1, 0x58

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2012
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2011
    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 2014
    :cond_1
    if-nez p2, :cond_2

    .line 2015
    return-void

    .line 2017
    :cond_2
    monitor-enter p0

    .line 2018
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2019
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    if-nez v1, :cond_3

    .line 2020
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 2021
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    :cond_3
    move-object v10, v1

    .end local v1    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    .local v10, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    new-instance v11, Lcom/android/server/AppOpsService$ActiveCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    move-object v1, v11

    .line 2025
    .local v1, "activeCallback":Lcom/android/server/AppOpsService$ActiveCallback;
    array-length v2, p1

    :goto_0
    if-ge v9, v2, :cond_4

    aget v3, p1, v9

    .line 2026
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2025
    .end local v3    # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2028
    .end local v1    # "activeCallback":Lcom/android/server/AppOpsService$ActiveCallback;
    .end local v10    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    :cond_4
    monitor-exit p0

    .line 2029
    return-void

    .line 2028
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 1377
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 1378
    return-void
.end method

.method public startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 16
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v8, p0

    move/from16 v1, p1

    move-object/from16 v9, p2

    .line 1383
    const/4 v10, -0x1

    .line 1384
    .local v10, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1385
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1390
    .local v12, "callingPid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid op code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, -0x1

    const/16 v2, 0x58

    invoke-static {v1, v13, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1392
    if-nez p4, :cond_0

    .line 1393
    return-void

    .line 1395
    :cond_0
    monitor-enter p0

    .line 1396
    if-eq v1, v13, :cond_1

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1419
    :catchall_0
    move-exception v0

    move v14, v1

    goto/16 :goto_1

    .line 1396
    :cond_1
    move v0, v1

    :goto_0
    move v14, v0

    .line 1397
    .end local p1    # "op":I
    .local v14, "op":I
    :try_start_1
    iget-object v0, v8, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1398
    .local v0, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    if-nez v0, :cond_2

    .line 1399
    new-instance v15, Lcom/android/server/AppOpsService$ModeCallback;

    move-object v1, v15

    move-object v2, v8

    move-object/from16 v3, p4

    move v4, v10

    move/from16 v5, p3

    move v6, v11

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/AppOpsService$ModeCallback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIII)V

    move-object v0, v15

    .line 1400
    iget-object v1, v8, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    :cond_2
    if-eq v14, v13, :cond_4

    .line 1403
    iget-object v1, v8, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1404
    .local v1, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-nez v1, :cond_3

    .line 1405
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1406
    iget-object v2, v8, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1408
    :cond_3
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1410
    .end local v1    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_4
    if-eqz v9, :cond_6

    .line 1411
    iget-object v1, v8, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1412
    .restart local v1    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-nez v1, :cond_5

    .line 1413
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1414
    iget-object v2, v8, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    :cond_5
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1418
    .end local v1    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 1419
    .end local v0    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    monitor-exit p0

    .line 1420
    return-void

    .line 1419
    :catchall_1
    move-exception v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 2033
    if-nez p1, :cond_0

    .line 2034
    return-void

    .line 2036
    :cond_0
    monitor-enter p0

    .line 2037
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 2038
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 2039
    .local v0, "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    if-nez v0, :cond_1

    .line 2040
    monitor-exit p0

    return-void

    .line 2042
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2043
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2045
    if-nez v2, :cond_2

    .line 2046
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$ActiveCallback;

    invoke-virtual {v3}, Lcom/android/server/AppOpsService$ActiveCallback;->destroy()V

    .line 2043
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2049
    .end local v0    # "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_3
    monitor-exit p0

    .line 2050
    return-void

    .line 2049
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 1424
    if-nez p1, :cond_0

    .line 1425
    return-void

    .line 1427
    :cond_0
    monitor-enter p0

    .line 1428
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1429
    .local v0, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    if-eqz v0, :cond_4

    .line 1430
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$ModeCallback;->unlinkToDeath()V

    .line 1431
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1432
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1433
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1434
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1435
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1431
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1438
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 1439
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1440
    .restart local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1441
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 1442
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1438
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1446
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 1447
    .end local v0    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    monitor-exit p0

    .line 1448
    return-void

    .line 1447
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 12

    .line 632
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Constants;->startMonitoring(Landroid/content/ContentResolver;)V

    .line 634
    monitor-enter p0

    .line 635
    const/4 v0, 0x0

    .line 636
    .local v0, "changed":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 637
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    .line 639
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget v3, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v3}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, "packageNames":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 641
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->clear()V

    .line 642
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 643
    const/4 v0, 0x1

    .line 644
    goto/16 :goto_3

    .line 647
    :cond_0
    iget-object v4, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 648
    .local v4, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v4, :cond_1

    .line 649
    goto :goto_3

    .line 652
    :cond_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 653
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 654
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    .local v6, "ops":Lcom/android/server/AppOpsService$Ops;
    const/4 v7, -0x1

    .line 657
    .local v7, "curUid":I
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    const/16 v10, 0x2000

    iget-object v11, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 659
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 657
    invoke-interface {v8, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v8

    .line 661
    goto :goto_2

    .line 660
    :catch_0
    move-exception v8

    .line 662
    :goto_2
    :try_start_2
    iget-object v8, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v8, v8, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v7, v8, :cond_2

    .line 663
    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pruning old package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": new uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 666
    const/4 v0, 0x1

    .line 668
    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v7    # "curUid":I
    :cond_2
    goto :goto_1

    .line 670
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 671
    iget-object v6, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 636
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v3    # "packageNames":[Ljava/lang/String;
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 674
    .end local v1    # "i":I
    :cond_5
    if-eqz v0, :cond_6

    .line 675
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 677
    .end local v0    # "changed":Z
    :cond_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 679
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 681
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/AppOpsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    .line 698
    const-class v1, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManagerInternal;

    .line 700
    .local v1, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    new-instance v2, Lcom/android/server/AppOpsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/AppOpsService$3;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManagerInternal;->addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V

    .line 727
    return-void

    .line 677
    .end local v0    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public uidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 786
    monitor-enter p0

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 789
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 791
    :cond_0
    monitor-exit p0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateUidProcState(II)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 795
    monitor-enter p0

    .line 796
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v1

    .line 797
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    sget-object v2, Lcom/android/server/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    aget v2, v2, p2

    .line 798
    .local v2, "newState":I
    if-eqz v1, :cond_7

    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    if-eq v3, v2, :cond_7

    .line 799
    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    .line 800
    .local v3, "oldPendingState":I
    iput v2, v1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    .line 801
    iget v4, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-lt v2, v4, :cond_3

    const/4 v4, 0x2

    if-gt v2, v4, :cond_0

    goto :goto_2

    .line 805
    :cond_0
    iget-wide v5, v1, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 809
    iget v5, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-gt v5, v0, :cond_1

    .line 810
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v4, v4, Lcom/android/server/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .local v4, "settleTime":J
    :goto_0
    goto :goto_1

    .line 811
    .end local v4    # "settleTime":J
    :cond_1
    iget v5, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-gt v5, v4, :cond_2

    .line 812
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v4, v4, Lcom/android/server/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    goto :goto_0

    .line 814
    :cond_2
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v4, v4, Lcom/android/server/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 816
    .restart local v4    # "settleTime":J
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    .end local v4    # "settleTime":J
    goto :goto_3

    .line 804
    :cond_3
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    .line 818
    :cond_4
    :goto_3
    iget v4, v1, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    if-eqz v4, :cond_7

    .line 821
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 822
    .local v4, "now":J
    iget-object v6, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v0

    .local v6, "i":I
    :goto_4
    if-ltz v6, :cond_7

    .line 823
    iget-object v7, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;

    .line 824
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual {v7}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v8

    sub-int/2addr v8, v0

    .local v8, "j":I
    :goto_5
    if-ltz v8, :cond_6

    .line 825
    invoke-virtual {v7, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Op;

    .line 826
    .local v9, "op":Lcom/android/server/AppOpsService$Op;
    iget v10, v9, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-lez v10, :cond_5

    .line 827
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    aput-wide v4, v10, v3

    .line 828
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    aput-wide v4, v10, v2

    .line 824
    .end local v9    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 822
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "j":I
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 834
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v2    # "newState":I
    .end local v3    # "oldPendingState":I
    .end local v4    # "now":J
    .end local v6    # "i":I
    :cond_7
    monitor-exit p0

    .line 835
    return-void

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeState()V
    .locals 26

    .line 2958
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 2961
    :try_start_0
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v3, v0

    .line 2965
    .local v3, "stream":Ljava/io/FileOutputStream;
    nop

    .line 2964
    nop

    .line 2967
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2970
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_2
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2971
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2972
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2973
    const-string v7, "app-ops"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2974
    const-string/jumbo v7, "v"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2976
    iget-object v6, v1, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2977
    .local v6, "uidStateCount":I
    const/4 v8, 0x0

    .line 2977
    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_2

    .line 2978
    :try_start_3
    iget-object v9, v1, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$UidState;

    .line 2979
    .local v9, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v10, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v10, :cond_1

    iget-object v10, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 2980
    const-string/jumbo v10, "uid"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2981
    const-string/jumbo v10, "n"

    iget v11, v9, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2982
    iget-object v10, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2983
    .local v10, "uidOpModes":Landroid/util/SparseIntArray;
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    .line 2984
    .local v11, "opCount":I
    const/4 v12, 0x0

    .line 2984
    .local v12, "j":I
    :goto_1
    if-ge v12, v11, :cond_0

    .line 2985
    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 2986
    .local v13, "op":I
    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    .line 2987
    .local v14, "mode":I
    const-string/jumbo v15, "op"

    invoke-interface {v5, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2988
    const-string/jumbo v15, "n"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2989
    const-string/jumbo v7, "m"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2990
    const-string/jumbo v7, "op"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2984
    .end local v13    # "op":I
    .end local v14    # "mode":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2992
    .end local v12    # "j":I
    :cond_0
    const-string/jumbo v7, "uid"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2977
    .end local v9    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v10    # "uidOpModes":Landroid/util/SparseIntArray;
    .end local v11    # "opCount":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3065
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "uidStateCount":I
    .end local v8    # "i":I
    :catch_0
    move-exception v0

    move-object/from16 v20, v4

    goto/16 :goto_a

    .line 2996
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "uidStateCount":I
    :cond_2
    if-eqz v4, :cond_f

    .line 2997
    const/4 v7, 0x0

    .line 2998
    .local v7, "lastPkg":Ljava/lang/String;
    move-object v8, v7

    const/4 v7, 0x0

    .line 2998
    .local v7, "i":I
    .local v8, "lastPkg":Ljava/lang/String;
    :goto_2
    :try_start_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_e

    .line 2999
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 3000
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v10, :cond_4

    .line 3001
    if-eqz v8, :cond_3

    .line 3002
    :try_start_5
    const-string/jumbo v10, "pkg"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3004
    :cond_3
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 3005
    const-string/jumbo v10, "pkg"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3006
    const-string/jumbo v10, "n"

    invoke-interface {v5, v0, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 3008
    :cond_4
    :try_start_6
    const-string/jumbo v10, "uid"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3009
    const-string/jumbo v10, "n"

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3010
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 3011
    :try_start_7
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v1, v10, v11, v12, v12}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3015
    .local v10, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v10, :cond_5

    .line 3016
    :try_start_8
    const-string/jumbo v11, "p"

    iget-boolean v12, v10, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v0, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3020
    const/4 v12, 0x0

    goto :goto_3

    .line 3020
    .end local v10    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    goto/16 :goto_8

    .line 3018
    .restart local v10    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_5
    :try_start_9
    const-string/jumbo v11, "p"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v0, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3020
    .end local v10    # "ops":Lcom/android/server/AppOpsService$Ops;
    :goto_3
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3021
    :try_start_a
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v10

    .line 3022
    .local v10, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v11, v12

    .line 3022
    .local v11, "j":I
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_d

    .line 3023
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 3024
    .local v13, "op":Landroid/app/AppOpsManager$OpEntry;
    const-string/jumbo v14, "op"

    invoke-interface {v5, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3025
    const-string/jumbo v14, "n"

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3026
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v15
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eq v14, v15, :cond_6

    .line 3027
    :try_start_b
    const-string/jumbo v14, "m"

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 3029
    :cond_6
    move v14, v12

    .line 3029
    .local v14, "k":I
    :goto_5
    const/4 v15, 0x6

    if-ge v14, v15, :cond_9

    .line 3030
    :try_start_c
    invoke-virtual {v13, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastTimeFor(I)J

    move-result-wide v15

    move-wide/from16 v17, v15

    .line 3031
    .local v17, "time":J
    const-wide/16 v15, 0x0

    move-object/from16 v19, v13

    move-wide/from16 v12, v17

    cmp-long v17, v12, v15

    .line 3031
    .end local v13    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v17    # "time":J
    .local v12, "time":J
    .local v19, "op":Landroid/app/AppOpsManager$OpEntry;
    if-eqz v17, :cond_7

    .line 3032
    sget-object v17, Lcom/android/server/AppOpsService;->UID_STATE_TIME_ATTRS:[Ljava/lang/String;

    aget-object v15, v17, v14

    .line 3033
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 3032
    move-object/from16 v20, v4

    const/4 v4, 0x0

    :try_start_d
    invoke-interface {v5, v4, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3032
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v20, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_6

    .line 3035
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_7
    move-object/from16 v20, v4

    .line 3035
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTimeFor(I)J

    move-result-wide v15

    .line 3035
    .end local v19    # "op":Landroid/app/AppOpsManager$OpEntry;
    .local v0, "op":Landroid/app/AppOpsManager$OpEntry;
    move-wide/from16 v21, v15

    .line 3036
    .local v21, "rejectTime":J
    move-object/from16 v24, v8

    move-object/from16 v23, v9

    move-wide/from16 v8, v21

    const-wide/16 v15, 0x0

    cmp-long v4, v8, v15

    .line 3036
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v21    # "rejectTime":J
    .local v8, "rejectTime":J
    .local v23, "pkg":Landroid/app/AppOpsManager$PackageOps;
    .local v24, "lastPkg":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 3037
    sget-object v4, Lcom/android/server/AppOpsService;->UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

    aget-object v4, v4, v14

    .line 3038
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    .line 3037
    move/from16 v25, v6

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3037
    .end local v6    # "uidStateCount":I
    .end local v8    # "rejectTime":J
    .end local v12    # "time":J
    .local v25, "uidStateCount":I
    goto :goto_7

    .line 3029
    .end local v25    # "uidStateCount":I
    .restart local v6    # "uidStateCount":I
    :cond_8
    move/from16 v25, v6

    .line 3029
    .end local v6    # "uidStateCount":I
    .restart local v25    # "uidStateCount":I
    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object v13, v0

    move-object/from16 v4, v20

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move/from16 v6, v25

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto :goto_5

    .line 3041
    .end local v0    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v14    # "k":I
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v23    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v24    # "lastPkg":Ljava/lang/String;
    .end local v25    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStateCount":I
    .local v8, "lastPkg":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v13    # "op":Landroid/app/AppOpsManager$OpEntry;
    :cond_9
    move-object/from16 v20, v4

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    move-object v0, v13

    .line 3041
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .end local v8    # "lastPkg":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v13    # "op":Landroid/app/AppOpsManager$OpEntry;
    .restart local v0    # "op":Landroid/app/AppOpsManager$OpEntry;
    .restart local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v23    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v24    # "lastPkg":Ljava/lang/String;
    .restart local v25    # "uidStateCount":I
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v4

    .line 3042
    .local v4, "dur":I
    if-eqz v4, :cond_a

    .line 3043
    const-string v6, "d"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v5, v9, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3045
    :cond_a
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    move-result v6

    .line 3046
    .local v6, "proxyUid":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_b

    .line 3047
    const-string/jumbo v8, "pu"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-interface {v5, v12, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3049
    :cond_b
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3050
    .local v8, "proxyPackageName":Ljava/lang/String;
    if-eqz v8, :cond_c

    .line 3051
    const-string/jumbo v9, "pp"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3053
    :cond_c
    const-string/jumbo v9, "op"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3022
    .end local v0    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v4    # "dur":I
    .end local v6    # "proxyUid":I
    .end local v8    # "proxyPackageName":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v20

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move/from16 v6, v25

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto/16 :goto_4

    .line 3055
    .end local v11    # "j":I
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v23    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v24    # "lastPkg":Ljava/lang/String;
    .end local v25    # "uidStateCount":I
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v6, "uidStateCount":I
    .local v8, "lastPkg":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_d
    move-object/from16 v20, v4

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    .line 3055
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .end local v8    # "lastPkg":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v23    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v24    # "lastPkg":Ljava/lang/String;
    .restart local v25    # "uidStateCount":I
    const-string/jumbo v0, "uid"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 2998
    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v23    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v20

    move-object/from16 v8, v24

    move/from16 v6, v25

    const/4 v0, 0x0

    goto/16 :goto_2

    .line 3020
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v24    # "lastPkg":Ljava/lang/String;
    .end local v25    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStateCount":I
    .restart local v8    # "lastPkg":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    .line 3020
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .end local v8    # "lastPkg":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v23    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v24    # "lastPkg":Ljava/lang/String;
    .restart local v25    # "uidStateCount":I
    :goto_8
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8

    .line 3057
    .end local v7    # "i":I
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v23    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v24    # "lastPkg":Ljava/lang/String;
    .end local v25    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStateCount":I
    .restart local v8    # "lastPkg":Ljava/lang/String;
    :cond_e
    move-object/from16 v20, v4

    move/from16 v25, v6

    .line 3057
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .restart local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v25    # "uidStateCount":I
    if-eqz v8, :cond_10

    .line 3058
    const-string/jumbo v0, "pkg"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3058
    .end local v8    # "lastPkg":Ljava/lang/String;
    goto :goto_9

    .line 3062
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v25    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStateCount":I
    :cond_f
    move-object/from16 v20, v4

    move/from16 v25, v6

    .line 3062
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .restart local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v25    # "uidStateCount":I
    :cond_10
    :goto_9
    const-string v0, "app-ops"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3063
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3064
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 3068
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v25    # "uidStateCount":I
    goto :goto_b

    .line 3065
    :catch_1
    move-exception v0

    goto :goto_a

    .line 3065
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_2
    move-exception v0

    move-object/from16 v20, v4

    .line 3066
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v0, "e":Ljava/io/IOException;
    .restart local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_a
    :try_start_10
    const-string v4, "AppOps"

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3067
    iget-object v4, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3069
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_b
    monitor-exit v2

    .line 3070
    return-void

    .line 3069
    :catchall_3
    move-exception v0

    goto :goto_c

    .line 2962
    :catch_3
    move-exception v0

    .line 2963
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    monitor-exit v2

    return-void

    .line 3069
    .end local v0    # "e":Ljava/io/IOException;
    :goto_c
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v0
.end method
