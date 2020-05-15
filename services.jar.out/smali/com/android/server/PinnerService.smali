.class public final Lcom/android/server/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PinnerService$PinnerHandler;,
        Lcom/android/server/PinnerService$PinnedApp;,
        Lcom/android/server/PinnerService$PinRange;,
        Lcom/android/server/PinnerService$PinnedFile;,
        Lcom/android/server/PinnerService$BinderService;,
        Lcom/android/server/PinnerService$PinRangeSourceStream;,
        Lcom/android/server/PinnerService$PinRangeSourceStatic;,
        Lcom/android/server/PinnerService$PinRangeSource;,
        Lcom/android/server/PinnerService$AppKey;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_CAMERA:I = 0x0

.field private static final KEY_HOME:I = 0x1

.field private static final MATCH_FLAGS:I = 0xd0000

.field private static final MAX_CAMERA_PIN_SIZE:I = 0x5000000

.field private static final MAX_HOME_PIN_SIZE:I = 0x600000

.field private static final PAGE_SIZE:I

.field private static final PIN_META_FILENAME:Ljava/lang/String; = "pinlist.meta"

.field private static final TAG:Ljava/lang/String; = "PinnerService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private mBinderService:Lcom/android/server/PinnerService$BinderService;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mLockManager:Lcom/android/server/NubiaMLockManager;

.field private final mPendingRepin:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedApps:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/PinnerService$PinnedApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedFiles:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 126
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    .line 132
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 137
    new-instance v0, Lcom/android/server/PinnerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PinnerService$1;-><init>(Lcom/android/server/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    iput-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 157
    .local v0, "shouldPinCamera":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 159
    .local v1, "shouldPinHome":Z
    if-eqz v0, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    if-eqz v1, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_1
    new-instance v2, Lcom/android/server/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/PinnerService$PinnerHandler;-><init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 167
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 168
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/PinnerService;->mAm:Landroid/app/IActivityManager;

    .line 170
    iget-object v2, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    .line 172
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    new-instance v3, Lcom/android/server/NubiaMLockManager;

    iget-object v4, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/NubiaMLockManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/PinnerService;->mLockManager:Lcom/android/server/NubiaMLockManager;

    .line 180
    invoke-direct {p0}, Lcom/android/server/PinnerService;->registerUidListener()V

    .line 181
    invoke-direct {p0}, Lcom/android/server/PinnerService;->registerUserSetupCompleteListener()V

    .line 182
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PinnerService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PinnerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/PinnerService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;
    .param p1, "x1"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 85
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/PinnerService;)Lcom/android/server/NubiaMLockManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 85
    iget-object v0, p0, Lcom/android/server/PinnerService;->mLockManager:Lcom/android/server/NubiaMLockManager;

    return-object v0
.end method

.method static synthetic access$1300(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 85
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/PinnerService;)Landroid/app/ActivityManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 85
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/PinnerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 85
    invoke-direct {p0}, Lcom/android/server/PinnerService;->handlePinOnStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 85
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/PinnerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PinnerService;
    .param p1, "x1"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handleUidActive(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/PinnerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PinnerService;
    .param p1, "x1"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handleUidGone(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PinnerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 85
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 85
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 85
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "min"    # I
    .param p1, "value"    # I
    .param p2, "max"    # I

    .line 844
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # I
    .param p3, "defaultToSystemApp"    # Z

    .line 395
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 396
    return-object v0

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xd0000

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 406
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_1

    .line 407
    return-object v0

    .line 410
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v3}, Lcom/android/server/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 411
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    .line 414
    :cond_2
    if-eqz p3, :cond_6

    .line 415
    iget-object v3, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 416
    invoke-virtual {v3, p1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 417
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 418
    .local v3, "systemAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 419
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    .line 421
    if-nez v3, :cond_3

    .line 422
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    .line 425
    :cond_3
    return-object v0

    .line 428
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4
    :goto_1
    goto :goto_0

    .line 429
    :cond_5
    return-object v3

    .line 432
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "systemAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    return-object v0
.end method

.method private getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p1, "userHandle"    # I

    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "cameraIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 372
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_0

    .line 373
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 374
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 380
    :cond_0
    if-nez v2, :cond_1

    .line 381
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 382
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 385
    :cond_1
    return-object v2
.end method

.method private getHomeInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "userHandle"    # I

    .line 389
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 390
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method private getInfoForKey(II)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "key"    # I
    .param p2, "userHandle"    # I

    .line 500
    packed-switch p1, :pswitch_data_0

    .line 506
    const/4 v0, 0x0

    return-object v0

    .line 504
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/PinnerService;->getHomeInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 502
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNameForKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # I

    .line 514
    packed-switch p1, :pswitch_data_0

    .line 520
    const/4 v0, 0x0

    return-object v0

    .line 518
    :pswitch_0
    const-string v0, "Home"

    return-object v0

    .line 516
    :pswitch_1
    const-string v0, "Camera"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSizeLimitForKey(I)I
    .locals 1
    .param p1, "key"    # I

    .line 528
    packed-switch p1, :pswitch_data_0

    .line 534
    const/4 v0, 0x0

    return v0

    .line 532
    :pswitch_0
    const/high16 v0, 0x600000

    return v0

    .line 530
    :pswitch_1
    const/high16 v0, 0x5000000

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUidForKey(I)I
    .locals 2
    .param p1, "key"    # I

    .line 485
    monitor-enter p0

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedApp;

    .line 487
    .local v0, "existing":Lcom/android/server/PinnerService$PinnedApp;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    if-eqz v1, :cond_0

    .line 488
    iget v1, v0, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    goto :goto_0

    .line 489
    :cond_0
    const/4 v1, -0x1

    :goto_0
    monitor-exit p0

    .line 487
    return v1

    .line 490
    .end local v0    # "existing":Lcom/android/server/PinnerService$PinnedApp;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlePinOnStart()V
    .locals 9

    .line 239
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "filesToPin":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 243
    .local v4, "fileToPin":Ljava/lang/String;
    const v5, 0x7fffffff

    invoke-static {v4, v5, v2}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v5

    .line 246
    .local v5, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-nez v5, :cond_0

    .line 247
    const-string v6, "PinnerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to pin file = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    goto :goto_1

    .line 251
    :cond_0
    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v6, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    monitor-exit p0

    .line 242
    .end local v4    # "fileToPin":Ljava/lang/String;
    .end local v5    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    .restart local v4    # "fileToPin":Ljava/lang/String;
    .restart local v5    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 256
    .end local v4    # "fileToPin":Ljava/lang/String;
    .end local v5    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/PinnerService;->initMlockManager()V

    .line 258
    return-void
.end method

.method private handleUidActive(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 329
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    .line 330
    return-void
.end method

.method private handleUidGone(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    .line 316
    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 320
    .local v1, "key":I
    if-ne v1, v3, :cond_0

    .line 321
    monitor-exit p0

    return-void

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    .line 326
    return-void

    .line 324
    .end local v1    # "key":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initMlockManager()V
    .locals 2

    .line 1005
    iget-object v0, p0, Lcom/android/server/PinnerService;->mLockManager:Lcom/android/server/NubiaMLockManager;

    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/NubiaMLockManager;->setHandler(Landroid/os/Handler;)V

    .line 1006
    const-class v0, Lcom/android/server/NubiaMLockManager;

    iget-object v1, p0, Lcom/android/server/PinnerService;->mLockManager:Lcom/android/server/NubiaMLockManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1007
    iget-object v0, p0, Lcom/android/server/PinnerService;->mLockManager:Lcom/android/server/NubiaMLockManager;

    invoke-virtual {v0}, Lcom/android/server/NubiaMLockManager;->perLockFiles()V

    .line 1008
    return-void
.end method

.method private isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 359
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$6bekYOn4YXi0x7vYNWO40QyA-s8(Lcom/android/server/PinnerService;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    return-void
.end method

.method public static synthetic lambda$GeEX-8XoHeV0LEszxat7jOSlrs4(Lcom/android/server/PinnerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->pinApps(I)V

    return-void
.end method

.method private static maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 693
    const-string/jumbo v0, "pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 694
    .local v0, "pinMetaEntry":Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    .line 695
    .local v1, "pinMetaStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 697
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 703
    goto :goto_0

    .line 698
    :catch_0
    move-exception v2

    .line 699
    .local v2, "ex":Ljava/io/IOException;
    const-string v3, "PinnerService"

    const-string v4, "error reading pin metadata \"%s\": pinning as blob"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 700
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 699
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method private static maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .line 673
    const/4 v0, 0x0

    .line 675
    .local v0, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 682
    goto :goto_0

    .line 676
    :catch_0
    move-exception v1

    .line 677
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "PinnerService"

    const-string v3, "could not open \"%s\" as zip: pinning as blob"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 678
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 677
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 683
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method private pinApp(IIZ)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "userHandle"    # I
    .param p3, "force"    # Z

    .line 462
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getUidForKey(I)I

    move-result v0

    .line 466
    .local v0, "uid":I
    if-nez p3, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 467
    monitor-enter p0

    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    monitor-exit p0

    .line 470
    return-void

    .line 469
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 472
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->unpinApp(I)V

    .line 473
    invoke-direct {p0, p1, p2}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 474
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    .line 475
    invoke-direct {p0, p1, v1}, Lcom/android/server/PinnerService;->pinApp(ILandroid/content/pm/ApplicationInfo;)V

    .line 477
    :cond_1
    return-void
.end method

.method private pinApp(ILandroid/content/pm/ApplicationInfo;)V
    .locals 12
    .param p1, "key"    # I
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 545
    if-nez p2, :cond_0

    .line 546
    return-void

    .line 549
    :cond_0
    new-instance v0, Lcom/android/server/PinnerService$PinnedApp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/PinnerService$PinnedApp;-><init>(Lcom/android/server/PinnerService;Landroid/content/pm/ApplicationInfo;Lcom/android/server/PinnerService$1;)V

    .line 550
    .local v0, "pinnedApp":Lcom/android/server/PinnerService$PinnedApp;
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 555
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getSizeLimitForKey(I)I

    move-result v2

    .line 556
    .local v2, "pinSizeLimit":I
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 557
    .local v3, "apk":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v4

    .line 558
    .local v4, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-nez v4, :cond_1

    .line 559
    const-string v1, "PinnerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to pin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void

    .line 565
    :cond_1
    monitor-enter p0

    .line 566
    :try_start_1
    iget-object v5, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 570
    const-string v5, "arm"

    .line 571
    .local v5, "arch":Ljava/lang/String;
    iget-object v6, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 572
    iget-object v6, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v6}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 573
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "64"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 576
    :cond_2
    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-static {v6}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 577
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "64"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 582
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    .line 583
    .local v6, "baseCodePath":Ljava/lang/String;
    nop

    .line 585
    .local v1, "files":[Ljava/lang/String;
    :try_start_2
    invoke-static {v6, v5}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v8

    .line 586
    goto :goto_1

    :catch_0
    move-exception v8

    .line 587
    :goto_1
    if-nez v1, :cond_4

    .line 588
    return-void

    .line 592
    :cond_4
    array-length v8, v1

    move-object v9, v4

    move v4, v7

    .end local v4    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    .local v9, "pf":Lcom/android/server/PinnerService$PinnedFile;
    :goto_2
    if-ge v4, v8, :cond_6

    aget-object v10, v1, v4

    .line 593
    .local v10, "file":Ljava/lang/String;
    invoke-static {v10, v2, v7}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v9

    .line 594
    if-eqz v9, :cond_5

    .line 595
    monitor-enter p0

    .line 596
    :try_start_3
    iget-object v11, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 592
    .end local v10    # "file":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 603
    :cond_6
    return-void

    .line 567
    .end local v1    # "files":[Ljava/lang/String;
    .end local v5    # "arch":Ljava/lang/String;
    .end local v6    # "baseCodePath":Ljava/lang/String;
    .end local v9    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    .restart local v4    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 552
    .end local v2    # "pinSizeLimit":I
    .end local v3    # "apk":Ljava/lang/String;
    .end local v4    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private pinApps(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 441
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 442
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 443
    .local v2, "key":I
    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    .line 441
    .end local v2    # "key":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 445
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;
    .locals 5
    .param p0, "fileToPin"    # Ljava/lang/String;
    .param p1, "maxBytesToPin"    # I
    .param p2, "attemptPinIntrospection"    # Z

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "fileAsZip":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 648
    .local v1, "pinRangeStream":Ljava/io/InputStream;
    if-eqz p2, :cond_0

    .line 649
    :try_start_0
    invoke-static {p0}, Lcom/android/server/PinnerService;->maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 663
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 652
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 653
    invoke-static {v0, p0}, Lcom/android/server/PinnerService;->maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 656
    :cond_1
    const-string v2, "PinnerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pinRangeStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    if-eqz v1, :cond_2

    .line 659
    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStream;

    invoke-direct {v2, v1}, Lcom/android/server/PinnerService$PinRangeSourceStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    .line 660
    :cond_2
    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStatic;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    invoke-direct {v2, v3, v4}, Lcom/android/server/PinnerService$PinRangeSourceStatic;-><init>(II)V

    .line 661
    .local v2, "pinRangeSource":Lcom/android/server/PinnerService$PinRangeSource;
    :goto_1
    invoke-static {p0, p1, v2}, Lcom/android/server/PinnerService;->pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 664
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 661
    return-object v3

    .line 663
    .end local v2    # "pinRangeSource":Lcom/android/server/PinnerService$PinRangeSource;
    :goto_2
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 664
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    throw v2
.end method

.method private static pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;
    .locals 21
    .param p0, "fileToPin"    # Ljava/lang/String;
    .param p1, "maxBytesToPin"    # I
    .param p2, "pinRangeSource"    # Lcom/android/server/PinnerService$PinRangeSource;

    move-object/from16 v7, p0

    .line 773
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    move-object v2, v0

    .line 774
    .local v2, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v3, -0x1

    .line 775
    .local v3, "address":J
    const/4 v0, 0x0

    move v5, v0

    .line 778
    .local v5, "mapSize":I
    :try_start_0
    sget v6, Landroid/system/OsConstants;->O_RDONLY:I

    sget v10, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v6, v10

    sget v10, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v10, v6

    .line 781
    .local v10, "openFlags":I
    invoke-static {v7, v10, v0}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v6
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 782
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .local v6, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    invoke-static {v6}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v2

    iget-wide v11, v2, Landroid/system/StructStat;->st_size:J

    const-wide/32 v13, 0x7fffffff

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    long-to-int v5, v11

    .line 783
    const-wide/16 v11, 0x0

    int-to-long v13, v5

    :try_start_2
    sget v15, Landroid/system/OsConstants;->PROT_READ:I

    sget v16, Landroid/system/OsConstants;->MAP_SHARED:I

    const-wide/16 v18, 0x0

    move-object/from16 v17, v6

    invoke-static/range {v11 .. v19}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v11
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 788
    .end local v3    # "address":J
    .local v11, "address":J
    :try_start_3
    new-instance v2, Lcom/android/server/PinnerService$PinRange;

    invoke-direct {v2}, Lcom/android/server/PinnerService$PinRange;-><init>()V

    move-object v13, v2

    .line 789
    .local v13, "pinRange":Lcom/android/server/PinnerService$PinRange;
    const/4 v2, 0x0

    .line 792
    .local v2, "bytesPinned":I
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, p1, v3
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v3, :cond_0

    .line 793
    :try_start_4
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, p1, v3
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int v1, p1, v3

    .line 796
    .end local p1    # "maxBytesToPin":I
    .local v1, "maxBytesToPin":I
    move v15, v1

    goto :goto_2

    .line 836
    .end local v1    # "maxBytesToPin":I
    .end local v2    # "bytesPinned":I
    .end local v10    # "openFlags":I
    .end local v13    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .restart local p1    # "maxBytesToPin":I
    :catchall_0
    move-exception v0

    move/from16 v15, p1

    goto/16 :goto_a

    .line 832
    :catch_0
    move-exception v0

    move/from16 v15, p1

    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v11    # "address":J
    .end local p1    # "maxBytesToPin":I
    .local v2, "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "address":J
    .local v15, "maxBytesToPin":I
    :goto_0
    move-object v2, v6

    :goto_1
    move-wide v3, v11

    goto/16 :goto_9

    .line 796
    .end local v3    # "address":J
    .end local v15    # "maxBytesToPin":I
    .local v2, "bytesPinned":I
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v10    # "openFlags":I
    .restart local v11    # "address":J
    .restart local v13    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .restart local p1    # "maxBytesToPin":I
    :cond_0
    move/from16 v15, p1

    .end local v2    # "bytesPinned":I
    .end local p1    # "maxBytesToPin":I
    .local v14, "bytesPinned":I
    .restart local v15    # "maxBytesToPin":I
    :goto_2
    move v14, v2

    :goto_3
    if-ge v14, v15, :cond_3

    move-object/from16 v4, p2

    :try_start_5
    invoke-virtual {v4, v13}, Lcom/android/server/PinnerService$PinRangeSource;->read(Lcom/android/server/PinnerService$PinRange;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 797
    iget v1, v13, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 798
    .local v1, "pinStart":I
    iget v2, v13, Lcom/android/server/PinnerService$PinRange;->length:I

    .line 799
    .local v2, "pinLength":I
    invoke-static {v0, v1, v5}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v1, v3

    .line 800
    sub-int v3, v5, v1

    invoke-static {v0, v2, v3}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v2, v3

    .line 801
    sub-int v3, v15, v14

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v3

    .line 810
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v1, v3

    add-int/2addr v2, v3

    .line 811
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v1, v3

    sub-int/2addr v1, v3

    .line 812
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v2, v3

    if-eqz v3, :cond_1

    .line 813
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    sget v16, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v16, v2, v16

    sub-int v3, v3, v16

    add-int/2addr v2, v3

    .line 815
    :cond_1
    sub-int v3, v15, v14

    invoke-static {v0, v2, v3}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v2, v3

    .line 817
    if-lez v2, :cond_2

    .line 824
    int-to-long v8, v1

    add-long/2addr v8, v11

    move/from16 v20, v1

    int-to-long v0, v2

    .end local v1    # "pinStart":I
    .local v20, "pinStart":I
    invoke-static {v8, v9, v0, v1}, Landroid/system/Os;->mlock(JJ)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 826
    .end local v20    # "pinStart":I
    .restart local v1    # "pinStart":I
    :cond_2
    move/from16 v20, v1

    .end local v1    # "pinStart":I
    .restart local v20    # "pinStart":I
    :goto_4
    add-int/2addr v14, v2

    .line 827
    .end local v2    # "pinLength":I
    .end local v20    # "pinStart":I
    nop

    .line 796
    const/4 v0, 0x0

    goto :goto_3

    .line 836
    .end local v10    # "openFlags":I
    .end local v13    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .end local v14    # "bytesPinned":I
    :catchall_1
    move-exception v0

    goto/16 :goto_a

    .line 832
    :catch_1
    move-exception v0

    goto :goto_0

    .line 829
    .restart local v10    # "openFlags":I
    .restart local v13    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .restart local v14    # "bytesPinned":I
    :cond_3
    move-object/from16 v4, p2

    :cond_4
    :try_start_6
    new-instance v0, Lcom/android/server/PinnerService$PinnedFile;
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v1, v0

    move-wide v2, v11

    move v4, v5

    move v8, v5

    move-object v5, v7

    .end local v5    # "mapSize":I
    .local v8, "mapSize":I
    move-object v9, v6

    move v6, v14

    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .local v9, "fd":Ljava/io/FileDescriptor;
    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/android/server/PinnerService$PinnedFile;-><init>(JILjava/lang/String;I)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 830
    .local v0, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    const-wide/16 v1, -0x1

    .line 831
    .end local v11    # "address":J
    .local v1, "address":J
    nop

    .line 836
    invoke-static {v9}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 837
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_5

    .line 838
    int-to-long v3, v8

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 831
    :cond_5
    return-object v0

    .line 836
    .end local v0    # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    .end local v1    # "address":J
    .end local v10    # "openFlags":I
    .end local v13    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .end local v14    # "bytesPinned":I
    .restart local v11    # "address":J
    :catchall_2
    move-exception v0

    move v5, v8

    move-object v6, v9

    goto/16 :goto_a

    .line 832
    :catch_2
    move-exception v0

    move v5, v8

    move-object v2, v9

    goto/16 :goto_1

    .line 836
    .end local v8    # "mapSize":I
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    .restart local v5    # "mapSize":I
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    :catchall_3
    move-exception v0

    move v8, v5

    move-object v9, v6

    goto :goto_6

    .line 832
    :catch_3
    move-exception v0

    move v8, v5

    move-object v9, v6

    goto :goto_5

    .line 836
    .end local v15    # "maxBytesToPin":I
    .restart local p1    # "maxBytesToPin":I
    :catchall_4
    move-exception v0

    move v8, v5

    move-object v9, v6

    move/from16 v15, p1

    goto :goto_6

    .line 832
    :catch_4
    move-exception v0

    move v8, v5

    move-object v9, v6

    move/from16 v15, p1

    .end local v11    # "address":J
    .end local p1    # "maxBytesToPin":I
    .local v2, "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "address":J
    .restart local v15    # "maxBytesToPin":I
    :goto_5
    move-object v2, v9

    move-wide v3, v11

    goto :goto_7

    .line 836
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v15    # "maxBytesToPin":I
    .restart local p1    # "maxBytesToPin":I
    :catchall_5
    move-exception v0

    move v8, v5

    move-object v9, v6

    move/from16 v15, p1

    move-wide v11, v3

    .end local v3    # "address":J
    .end local v5    # "mapSize":I
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "maxBytesToPin":I
    .restart local v8    # "mapSize":I
    .restart local v9    # "fd":Ljava/io/FileDescriptor;
    .restart local v11    # "address":J
    .restart local v15    # "maxBytesToPin":I
    :goto_6
    goto :goto_a

    .line 832
    .end local v8    # "mapSize":I
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    .end local v11    # "address":J
    .end local v15    # "maxBytesToPin":I
    .restart local v3    # "address":J
    .restart local v5    # "mapSize":I
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "maxBytesToPin":I
    :catch_5
    move-exception v0

    move v8, v5

    move-object v9, v6

    move/from16 v15, p1

    move-object v2, v9

    .end local v5    # "mapSize":I
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "maxBytesToPin":I
    .restart local v2    # "fd":Ljava/io/FileDescriptor;
    .restart local v8    # "mapSize":I
    .restart local v9    # "fd":Ljava/io/FileDescriptor;
    .restart local v15    # "maxBytesToPin":I
    :goto_7
    goto :goto_9

    .line 836
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v8    # "mapSize":I
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    .end local v15    # "maxBytesToPin":I
    .restart local v5    # "mapSize":I
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "maxBytesToPin":I
    :catchall_6
    move-exception v0

    move-object v9, v6

    move/from16 v15, p1

    move-wide v11, v3

    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v9    # "fd":Ljava/io/FileDescriptor;
    goto :goto_a

    .line 832
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    :catch_6
    move-exception v0

    move-object v9, v6

    move/from16 v15, p1

    move-object v2, v9

    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v9    # "fd":Ljava/io/FileDescriptor;
    goto :goto_9

    .line 836
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    .restart local v2    # "fd":Ljava/io/FileDescriptor;
    :catchall_7
    move-exception v0

    move/from16 v15, p1

    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "address":J
    .end local p1    # "maxBytesToPin":I
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v11    # "address":J
    .restart local v15    # "maxBytesToPin":I
    :goto_8
    move-object v6, v2

    move-wide v11, v3

    goto :goto_a

    .line 832
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v11    # "address":J
    .end local v15    # "maxBytesToPin":I
    .restart local v2    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "address":J
    .restart local p1    # "maxBytesToPin":I
    :catch_7
    move-exception v0

    move/from16 v15, p1

    .line 833
    .end local p1    # "maxBytesToPin":I
    .local v0, "ex":Landroid/system/ErrnoException;
    .restart local v15    # "maxBytesToPin":I
    :goto_9
    :try_start_8
    const-string v1, "PinnerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not pin file "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 834
    const/4 v1, 0x0

    .line 836
    invoke-static {v2}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 837
    const-wide/16 v8, 0x0

    cmp-long v6, v3, v8

    if-ltz v6, :cond_6

    .line 838
    int-to-long v8, v5

    invoke-static {v3, v4, v8, v9}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 834
    :cond_6
    return-object v1

    .line 836
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :catchall_8
    move-exception v0

    goto :goto_8

    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "address":J
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v11    # "address":J
    :goto_a
    invoke-static {v6}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 837
    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-ltz v1, :cond_7

    .line 838
    int-to-long v1, v5

    invoke-static {v11, v12, v1, v2}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    :cond_7
    throw v0
.end method

.method private registerUidListener()V
    .locals 5

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAm:Landroid/app/IActivityManager;

    new-instance v1, Lcom/android/server/PinnerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/PinnerService$3;-><init>(Lcom/android/server/PinnerService;)V

    const/16 v2, 0xa

    const/4 v3, 0x0

    const-string/jumbo v4, "system"

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PinnerService"

    const-string v2, "Failed to register uid observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private registerUserSetupCompleteListener()V
    .locals 5

    .line 266
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 268
    .local v0, "userSetupCompleteUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/PinnerService$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/PinnerService$2;-><init>(Lcom/android/server/PinnerService;Landroid/os/Handler;Landroid/net/Uri;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 278
    return-void
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 4
    .param p0, "thing"    # Ljava/io/Closeable;

    .line 878
    if-eqz p0, :cond_0

    .line 880
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "PinnerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoring error closing resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static safeClose(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 859
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    goto :goto_0

    .line 862
    :catch_0
    move-exception v0

    .line 867
    .local v0, "ex":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EBADF:I

    if-eq v1, v2, :cond_0

    .end local v0    # "ex":Landroid/system/ErrnoException;
    goto :goto_0

    .line 868
    .restart local v0    # "ex":Landroid/system/ErrnoException;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 872
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_1
    :goto_0
    return-void
.end method

.method private static safeMunmap(JJ)V
    .locals 3
    .param p0, "address"    # J
    .param p2, "mapSize"    # J

    .line 849
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v1, "PinnerService"

    const-string v2, "ignoring error in unmap"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :goto_0
    return-void
.end method

.method private sendPinAppMessage(IIZ)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "userHandle"    # I
    .param p3, "force"    # Z

    .line 451
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    sget-object v1, Lcom/android/server/-$$Lambda$PinnerService$6bekYOn4YXi0x7vYNWO40QyA-s8;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$6bekYOn4YXi0x7vYNWO40QyA-s8;

    .line 452
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 451
    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 453
    return-void
.end method

.method private sendPinAppsMessage(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 436
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    sget-object v1, Lcom/android/server/-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4;

    .line 437
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 436
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 438
    return-void
.end method

.method private unpinApp(I)V
    .locals 3
    .param p1, "key"    # I

    .line 345
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedApp;

    .line 347
    .local v0, "app":Lcom/android/server/PinnerService$PinnedApp;
    if-nez v0, :cond_0

    .line 348
    monitor-exit p0

    return-void

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v0    # "app":Lcom/android/server/PinnerService$PinnedApp;
    move-object v0, v1

    .line 352
    .local v0, "pinnedAppFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/PinnerService$PinnedFile;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedFile;

    .line 354
    .local v2, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    invoke-virtual {v2}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    .line 355
    .end local v2    # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    goto :goto_0

    .line 356
    :cond_1
    return-void

    .line 352
    .end local v0    # "pinnedAppFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/PinnerService$PinnedFile;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateActiveState(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "active"    # Z

    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PinnerService$PinnedApp;

    .line 336
    .local v1, "app":Lcom/android/server/PinnerService$PinnedApp;
    iget v2, v1, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    if-ne v2, p1, :cond_0

    .line 337
    iput-boolean p2, v1, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    .line 334
    .end local v1    # "app":Lcom/android/server/PinnerService$PinnedApp;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 340
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 189
    new-instance v0, Lcom/android/server/PinnerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$1;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    .line 190
    const-string/jumbo v0, "pinner"

    iget-object v1, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PinnerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 191
    const-class v0, Lcom/android/server/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/PinnerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 195
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 205
    iget-object v0, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 208
    :cond_0
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 212
    iget-object v0, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 215
    :cond_0
    return-void
.end method

.method public update(Landroid/util/ArraySet;Z)V
    .locals 7
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 223
    .local p1, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 224
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 226
    .local v2, "key":I
    invoke-direct {p0, v2, v0}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 227
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    const-string v4, "PinnerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating pinned files for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " force="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0, v2, v0, p2}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    .line 224
    .end local v2    # "key":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 232
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
