.class public final Landroid/view/accessibility/AccessibilityManager;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityManager$MyCallback;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;,
        Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    }
.end annotation


# static fields
.field public static final ACTION_CHOOSE_ACCESSIBILITY_BUTTON:Ljava/lang/String; = "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

.field public static final AUTOCLICK_DELAY_DEFAULT:I = 0x258

.field public static final DALTONIZER_CORRECT_DEUTERANOMALY:I = 0xc

.field public static final DALTONIZER_DISABLED:I = -0x1

.field public static final DALTONIZER_SIMULATE_MONOCHROMACY:I = 0x0

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManager"

.field public static final STATE_FLAG_ACCESSIBILITY_ENABLED:I = 0x1

.field public static final STATE_FLAG_HIGH_TEXT_CONTRAST_ENABLED:I = 0x4

.field public static final STATE_FLAG_TOUCH_EXPLORATION_ENABLED:I = 0x2

.field private static sInstance:Landroid/view/accessibility/AccessibilityManager;

.field static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

.field private final mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final mCallback:Landroid/os/Handler$Callback;

.field private final mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

.field final mHandler:Landroid/os/Handler;

.field private final mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field mIsEnabled:Z

.field mIsHighTextContrastEnabled:Z

.field mIsTouchExplorationEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field mRelevantEventTypes:I

.field private mRequestPreparerLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityRequestPreparer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenRecognitionOn:Z

.field private mService:Landroid/view/accessibility/IAccessibilityManager;

.field private final mServicesStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/accessibility/IAccessibilityManager;
    .param p3, "userId"    # I

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 139
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    .line 142
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mScreenRecognitionOn:Z

    .line 280
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 358
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$1;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    .line 359
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 360
    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 361
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    .line 363
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/view/accessibility/IAccessibilityManager;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "service"    # Landroid/view/accessibility/IAccessibilityManager;
    .param p3, "userId"    # I

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 139
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    .line 142
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mScreenRecognitionOn:Z

    .line 280
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 376
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$1;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    .line 377
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 378
    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 379
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    .line 381
    monitor-exit v0

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityManager;

    .line 73
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityManager;

    .line 73
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/accessibility/AccessibilityManager;I)V
    .locals 0
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityManager;
    .param p1, "x1"    # I

    .line 73
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 326
    sget-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_2

    .line 329
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 330
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 333
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    goto :goto_1

    .line 336
    :cond_1
    :goto_0
    const/4 v1, -0x2

    .line 338
    .local v1, "userId":I
    :goto_1
    nop

    .line 340
    new-instance v2, Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    sput-object v2, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    .line 342
    .end local v1    # "userId":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    sget-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    return-object v0

    .line 342
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    .locals 1

    .line 1134
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v0, :cond_0

    .line 1135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    .line 1137
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    return-object v0
.end method

.method public static isAccessibilityButtonSupported()Z
    .locals 2

    .line 1232
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1233
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x11200a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method static synthetic lambda$notifyAccessibilityStateChanged$0(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V
    .locals 0
    .param p0, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    .param p1, "isEnabled"    # Z

    .line 1177
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    return-void
.end method

.method static synthetic lambda$notifyHighTextContrastStateChanged$2(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Z)V
    .locals 0
    .param p0, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    .param p1, "isHighTextContrastEnabled"    # Z

    .line 1221
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;->onHighTextContrastStateChanged(Z)V

    return-void
.end method

.method static synthetic lambda$notifyTouchExplorationStateChanged$1(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Z)V
    .locals 0
    .param p0, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .param p1, "isTouchExplorationEnabled"    # Z

    .line 1199
    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    return-void
.end method

.method private notifyAccessibilityStateChanged()V
    .locals 7

    .line 1165
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1166
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    monitor-exit v0

    return-void

    .line 1169
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 1170
    .local v1, "isEnabled":Z
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1171
    .local v2, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1174
    .local v0, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1175
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 1176
    .local v4, "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$yzw5NYY7_MfAQ9gLy3mVllchaXo;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$yzw5NYY7_MfAQ9gLy3mVllchaXo;-><init>(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1174
    .end local v4    # "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1179
    .end local v3    # "i":I
    :cond_1
    return-void

    .line 1171
    .end local v0    # "numListeners":I
    .end local v1    # "isEnabled":Z
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyHighTextContrastStateChanged()V
    .locals 7

    .line 1209
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1210
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1211
    monitor-exit v0

    return-void

    .line 1213
    :cond_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 1214
    .local v1, "isHighTextContrastEnabled":Z
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1215
    .local v2, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1218
    .local v0, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1219
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .line 1220
    .local v4, "listener":Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$4M6GrmFiqsRwVzn352N10DcU6RM;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$4M6GrmFiqsRwVzn352N10DcU6RM;-><init>(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1218
    .end local v4    # "listener":Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1223
    .end local v3    # "i":I
    :cond_1
    return-void

    .line 1215
    .end local v0    # "numListeners":I
    .end local v1    # "isHighTextContrastEnabled":Z
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Landroid/os/Handler;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyTouchExplorationStateChanged()V
    .locals 7

    .line 1187
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1188
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    monitor-exit v0

    return-void

    .line 1191
    :cond_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 1192
    .local v1, "isTouchExplorationEnabled":Z
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1193
    .local v2, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1196
    .local v0, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1197
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 1198
    .local v4, "listener":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$a0OtrjOl35tiW2vwyvAmY6_LiLI;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$a0OtrjOl35tiW2vwyvAmY6_LiLI;-><init>(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1196
    .end local v4    # "listener":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1201
    .end local v3    # "i":I
    :cond_1
    return-void

    .line 1193
    .end local v0    # "numListeners":I
    .end local v1    # "isTouchExplorationEnabled":Z
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setStateLocked(I)V
    .locals 7
    .param p1, "stateFlags"    # I

    .line 945
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 946
    .local v0, "enabled":Z
    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 948
    .local v3, "touchExplorationEnabled":Z
    :goto_1
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_2

    move v1, v2

    nop

    .line 951
    .local v1, "highTextContrastEnabled":Z
    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    .line 952
    .local v2, "wasEnabled":Z
    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 953
    .local v4, "wasTouchExplorationEnabled":Z
    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 956
    .local v5, "wasHighTextContrastEnabled":Z
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 957
    iput-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 958
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 960
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eq v2, v6, :cond_3

    .line 961
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityStateChanged()V

    .line 964
    :cond_3
    if-eq v4, v3, :cond_4

    .line 965
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyTouchExplorationStateChanged()V

    .line 968
    :cond_4
    if-eq v5, v1, :cond_5

    .line 969
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyHighTextContrastStateChanged()V

    .line 971
    :cond_5
    return-void
.end method

.method private tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V
    .locals 3
    .param p1, "service"    # Landroid/view/accessibility/IAccessibilityManager;

    .line 1141
    if-nez p1, :cond_1

    .line 1142
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1143
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 1144
    return-void

    .line 1146
    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object p1

    .line 1150
    .end local v0    # "iBinder":Landroid/os/IBinder;
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {p1, v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J

    move-result-wide v0

    .line 1151
    .local v0, "userStateAndRelevantEvents":J
    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    .line 1152
    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v2

    iput v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 1153
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    .end local v0    # "userStateAndRelevantEvents":J
    goto :goto_0

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityManager"

    const-string v2, "AccessibilityManagerService is dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1157
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Ljava/lang/String;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .locals 6
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 1008
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1009
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1010
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1011
    monitor-exit v0

    return v2

    .line 1013
    :cond_0
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 1014
    .local v3, "userId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    :try_start_1
    invoke-interface {v1, p1, p3, p2, v3}, Landroid/view/accessibility/IAccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "Error while adding an accessibility interaction connection. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1021
    .end local v0    # "re":Landroid/os/RemoteException;
    return v2

    .line 1014
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v3    # "userId":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public addAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .locals 4
    .param p1, "preparer"    # Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 812
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    .line 815
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRequestPreparer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 816
    .local v0, "id":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 817
    .local v2, "requestPreparerList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    if-nez v2, :cond_1

    .line 818
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    .line 819
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 821
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    return-void
.end method

.method public addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 788
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    .line 790
    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 710
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    .line 712
    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    monitor-exit v0

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 695
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V

    .line 696
    const/4 v0, 0x1

    return v0
.end method

.method public addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 866
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    .line 868
    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    monitor-exit v0

    .line 870
    return-void

    .line 869
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 757
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    .line 759
    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    monitor-exit v0

    .line 761
    return-void

    .line 760
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 742
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V

    .line 743
    const/4 v0, 0x1

    return v0
.end method

.method public getAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 587
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 588
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 590
    .local v2, "infoCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 591
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 592
    .local v4, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    .end local v4    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 594
    .end local v3    # "i":I
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getCallback()Landroid/os/Handler$Callback;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 396
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method public getClient()Landroid/view/accessibility/IAccessibilityManagerClient;
    .locals 1

    .line 388
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    return-object v0
.end method

.method public getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .locals 6
    .param p1, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 652
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 653
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 655
    :cond_0
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 656
    .local v2, "userId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    const/4 v0, 0x0

    .line 660
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_1
    invoke-interface {v1, p1, v2}, Landroid/view/accessibility/IAccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    .line 666
    goto :goto_0

    .line 664
    :catch_0
    move-exception v3

    .line 665
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    .end local v3    # "re":Landroid/os/RemoteException;
    :goto_0
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v3, :cond_1

    .line 668
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    invoke-interface {v3, p1, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->getEnabledAccessibilityServiceList(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 671
    :cond_1
    if-eqz v0, :cond_3

    .line 673
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mScreenRecognitionOn:Z

    if-eqz v3, :cond_2

    .line 674
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 675
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 678
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 680
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 656
    .end local v0    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 606
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 607
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 608
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 610
    :cond_0
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 611
    .local v2, "userId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    const/4 v0, 0x0

    .line 615
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_1
    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->getInstalledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    .line 621
    goto :goto_0

    .line 619
    :catch_0
    move-exception v3

    .line 620
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManager"

    const-string v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    .end local v3    # "re":Landroid/os/RemoteException;
    :goto_0
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v3, :cond_1

    .line 623
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    invoke-interface {v3, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->getInstalledAccessibilityServiceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 625
    :cond_1
    if-eqz v0, :cond_2

    .line 626
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 628
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 611
    .end local v0    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 984
    nop

    .line 985
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 986
    .local v0, "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 989
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 990
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 991
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object v1

    .line 989
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 994
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 987
    :cond_3
    :goto_1
    return-object v1
.end method

.method public getRequestPreparersForAccessibilityId(I)Ljava/util/List;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityRequestPreparer;",
            ">;"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 851
    const/4 v0, 0x0

    return-object v0

    .line 853
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public interrupt()V
    .locals 5

    .line 547
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 549
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 550
    monitor-exit v0

    return-void

    .line 552
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 553
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 554
    .local v2, "myLooper":Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 562
    const-string v3, "AccessibilityManager"

    const-string v4, "Interrupt called with accessibility disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    monitor-exit v0

    return-void

    .line 555
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Accessibility off. Did you forget to check that?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 566
    .end local v2    # "myLooper":Landroid/os/Looper;
    :cond_2
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 567
    .local v2, "userId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :try_start_1
    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->interrupt(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "AccessibilityManager"

    const-string v4, "Error while requesting interrupt from all services. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 567
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isAccessibilityVolumeStreamActive()Z
    .locals 4

    .line 907
    nop

    .line 908
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 909
    .local v0, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 910
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v3, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    .line 911
    const/4 v1, 0x1

    return v1

    .line 909
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 914
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public isEnabled()Z
    .locals 4

    .line 405
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mScreenRecognitionOn:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 408
    monitor-exit v0

    return v2

    .line 411
    :cond_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 412
    invoke-interface {v1, v3}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->isEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    nop

    :cond_2
    :goto_0
    monitor-exit v0

    .line 411
    return v2

    .line 413
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isHighTextContrastEnabled()Z
    .locals 3

    .line 448
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 450
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 451
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 453
    :cond_0
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    monitor-exit v0

    return v2

    .line 454
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTouchExplorationEnabled()Z
    .locals 3

    .line 422
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 424
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 425
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 428
    :cond_0
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mScreenRecognitionOn:Z

    if-eqz v2, :cond_1

    .line 429
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 432
    :cond_1
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    monitor-exit v0

    return v2

    .line 433
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyAccessibilityButtonClicked()V
    .locals 4

    .line 1072
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1073
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1074
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 1075
    monitor-exit v0

    return-void

    .line 1077
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    :try_start_1
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->notifyAccessibilityButtonClicked()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1082
    goto :goto_0

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while dispatching accessibility button click"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1083
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1077
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyAccessibilityButtonVisibilityChanged(Z)V
    .locals 4
    .param p1, "shown"    # Z

    .line 1095
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1096
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1097
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 1098
    monitor-exit v0

    return-void

    .line 1100
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->notifyAccessibilityButtonVisibilityChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1105
    goto :goto_0

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while dispatching accessibility button visibility change"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1106
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1100
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public performAccessibilityShortcut()V
    .locals 4

    .line 1052
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1053
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1054
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 1055
    monitor-exit v0

    return-void

    .line 1057
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    :try_start_1
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->performAccessibilityShortcut()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1062
    goto :goto_0

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error performing accessibility shortcut. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1063
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1057
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 4
    .param p1, "windowToken"    # Landroid/view/IWindow;

    .line 1032
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1034
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 1035
    monitor-exit v0

    return-void

    .line 1037
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1042
    goto :goto_0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error while removing an accessibility interaction connection. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1037
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .locals 3
    .param p1, "preparer"    # Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 828
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 829
    return-void

    .line 831
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRequestPreparer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 832
    .local v0, "viewId":I
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 833
    .local v1, "requestPreparerList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    if-eqz v1, :cond_1

    .line 834
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 835
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 836
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 839
    :cond_1
    return-void
.end method

.method public removeAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 803
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 804
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    monitor-exit v0

    .line 806
    return-void

    .line 805
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 724
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 726
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    if-ltz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 728
    .end local v1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .line 881
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    monitor-exit v0

    .line 884
    return-void

    .line 883
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .locals 3
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 771
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 772
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 773
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    if-ltz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 775
    .end local v1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 474
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mScreenRecognitionOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v1, :cond_0

    .line 477
    monitor-exit v0

    return-void

    .line 480
    :cond_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 481
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_1

    .line 482
    monitor-exit v0

    return-void

    .line 484
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 485
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v2, :cond_2

    .line 486
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    invoke-interface {v2, p1, v3, v4}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;ZI)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 488
    .local v2, "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v2, :cond_3

    .line 489
    monitor-exit v0

    return-void

    .line 492
    .end local v2    # "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    move-object v2, p1

    .line 494
    .restart local v2    # "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    :cond_3
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 495
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 496
    .local v3, "myLooper":Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 504
    const-string v4, "AccessibilityManager"

    const-string v5, "AccessibilityEvent sent with accessibility disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    monitor-exit v0

    return-void

    .line 497
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Accessibility off. Did you forget to check that?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 508
    .end local v3    # "myLooper":Landroid/os/Looper;
    :cond_5
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    and-int/2addr v3, v4

    if-nez v3, :cond_6

    .line 514
    monitor-exit v0

    return-void

    .line 516
    :cond_6
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 517
    .local v3, "userId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 522
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 524
    .local v4, "identityToken":J
    :try_start_2
    invoke-interface {v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 527
    nop

    .line 534
    .end local v4    # "identityToken":J
    if-eq p1, v2, :cond_7

    .line 535
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 537
    :cond_7
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 538
    goto :goto_1

    .line 526
    .restart local v4    # "identityToken":J
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 534
    .end local v4    # "identityToken":J
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "AccessibilityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 534
    .end local v0    # "re":Landroid/os/RemoteException;
    if-eq p1, v2, :cond_7

    goto :goto_0

    .line 539
    :goto_1
    return-void

    .line 534
    :goto_2
    if-eq p1, v2, :cond_8

    .line 535
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 537
    :cond_8
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    throw v0

    .line 517
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "dispatchedEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "userId":I
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method public sendFingerprintGesture(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .line 926
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 927
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 928
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 929
    monitor-exit v0

    return v2

    .line 931
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Landroid/os/RemoteException;
    return v2

    .line 931
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setAccessibilityPolicy(Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    .line 894
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 895
    :try_start_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    .line 896
    monitor-exit v0

    .line 897
    return-void

    .line 896
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .locals 4
    .param p1, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 1120
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1121
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1122
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 1123
    monitor-exit v0

    return-void

    .line 1125
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1130
    goto :goto_0

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManager"

    const-string v3, "Error setting picture in picture action replacement"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1131
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1125
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setScreenRecognition(Z)V
    .locals 0
    .param p1, "isScreenRecognitionOn"    # Z

    .line 1257
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityManager;->mScreenRecognitionOn:Z

    .line 1258
    return-void
.end method
