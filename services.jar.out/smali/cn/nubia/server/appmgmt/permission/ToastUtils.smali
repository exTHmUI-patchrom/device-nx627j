.class public Lcn/nubia/server/appmgmt/permission/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static final TOAST_MIN_INTERVAL:I = 0xea60

.field private static sHandler:Landroid/os/Handler;

.field private static sLock:Ljava/lang/Object;

.field static sPackageRecords:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/permission/ToastUtils;->sLock:Ljava/lang/Object;

    .line 27
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcn/nubia/server/appmgmt/permission/ToastUtils;->sPackageRecords:Landroid/util/LruCache;

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "permission_toast"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcn/nubia/server/appmgmt/permission/ToastUtils;->sHandler:Landroid/os/Handler;

    .line 44
    .end local v0    # "thread":Landroid/os/HandlerThread;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 20
    invoke-static {p0}, Lcn/nubia/server/appmgmt/permission/ToastUtils;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/res/Resources;
    .locals 1

    .line 20
    sget-object v0, Lcn/nubia/server/appmgmt/permission/ToastUtils;->sResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method private static getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 30
    sget-object v0, Lcn/nubia/server/appmgmt/permission/ToastUtils;->sResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 31
    sget-object v0, Lcn/nubia/server/appmgmt/permission/ToastUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcn/nubia/server/appmgmt/permission/ToastUtils;->sResources:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcn/nubia/server/appmgmt/permission/ToastUtils;->sResources:Landroid/content/res/Resources;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/server/appmgmt/permission/ToastUtils;->sResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .line 87
    sget-object v0, Lcn/nubia/server/appmgmt/permission/ToastUtils;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/permission/ToastUtils$2;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/server/appmgmt/permission/ToastUtils$2;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method public static showTosat(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # I

    .line 47
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->getDefault()Lcn/nubia/game/GameModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/game/GameModeHelper;->IsGameModeRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    sget-object v0, Lcn/nubia/server/appmgmt/permission/ToastUtils;->sPackageRecords:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcn/nubia/server/appmgmt/permission/ToastUtils;->sPackageRecords:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 52
    return-void

    .line 54
    :cond_1
    sget-object v0, Lcn/nubia/server/appmgmt/permission/ToastUtils;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/permission/ToastUtils$1;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/server/appmgmt/permission/ToastUtils$1;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method
