.class public Lcom/android/internal/util/ScreenshotHelper;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"


# static fields
.field private static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSUI_SCREENSHOT_ERROR_RECEIVER:Ljava/lang/String; = "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

.field private static final SYSUI_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.android.systemui.screenshot.TakeScreenshotService"

.field private static final TAG:Ljava/lang/String; = "ScreenshotHelper"


# instance fields
.field private final SCREENSHOT_TIMEOUT_MS:I

.field private final mContext:Landroid/content/Context;

.field private mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final mScreenshotLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper;->SCREENSHOT_TIMEOUT_MS:I

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 33
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/util/ScreenshotHelper;

    .line 16
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/util/ScreenshotHelper;

    .line 16
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/util/ScreenshotHelper;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/util/ScreenshotHelper;
    .param p1, "x1"    # Landroid/content/ServiceConnection;

    .line 16
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/util/ScreenshotHelper;

    .line 16
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/util/ScreenshotHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/util/ScreenshotHelper;

    .line 16
    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->notifyScreenshotError()V

    return-void
.end method

.method private notifyScreenshotError()V
    .locals 4

    .line 128
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v0, "errorComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "errorIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 134
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 137
    return-void
.end method


# virtual methods
.method public takeScreenshot(IZZLandroid/os/Handler;)V
    .locals 13
    .param p1, "screenshotType"    # I
    .param p2, "hasStatus"    # Z
    .param p3, "hasNav"    # Z
    .param p4, "handler"    # Landroid/os/Handler;

    move-object v8, p0

    .line 48
    iget-object v9, v8, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v9

    .line 49
    :try_start_0
    iget-object v0, v8, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 50
    monitor-exit v9

    return-void

    .line 52
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .local v0, "serviceComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v10, v1

    .line 56
    .local v10, "serviceIntent":Landroid/content/Intent;
    new-instance v1, Lcom/android/internal/util/ScreenshotHelper$1;

    invoke-direct {v1, v8}, Lcom/android/internal/util/ScreenshotHelper$1;-><init>(Lcom/android/internal/util/ScreenshotHelper;)V

    move-object v11, v1

    .line 68
    .local v11, "mScreenshotTimeout":Ljava/lang/Runnable;
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    new-instance v12, Lcom/android/internal/util/ScreenshotHelper$2;

    move-object v1, v12

    move-object v2, v8

    move v3, p1

    move-object/from16 v4, p4

    move-object v5, v11

    move v6, p2

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/ScreenshotHelper$2;-><init>(Lcom/android/internal/util/ScreenshotHelper;ILandroid/os/Handler;Ljava/lang/Runnable;ZZ)V

    move-object v1, v12

    .line 114
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v2, v8, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    const v3, 0x2000001

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v10, v1, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    iput-object v1, v8, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    const-wide/16 v2, 0x2710

    move-object/from16 v4, p4

    :try_start_1
    invoke-virtual {v4, v11, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "serviceComponent":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v10    # "serviceIntent":Landroid/content/Intent;
    .end local v11    # "mScreenshotTimeout":Ljava/lang/Runnable;
    goto :goto_0

    .line 120
    :cond_1
    move-object/from16 v4, p4

    :goto_0
    monitor-exit v9

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    move-object/from16 v4, p4

    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
