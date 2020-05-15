.class public Lcn/nubia/server/policy/edge/CommunalService;
.super Ljava/lang/Object;
.source "CommunalService.java"


# static fields
.field public static final FITCARD:Ljava/lang/String; = "content://cn.nubia.fitcard"

.field public static final MULTI_WINDOW_MODE:Ljava/lang/String; = "ss_multi_window_enabled"

.field public static final ORIENTATION_DOWN:I = 0x4e24

.field public static final ORIENTATION_LEFT:I = 0x4e21

.field public static final ORIENTATION_RIGHT:I = 0x4e22

.field public static final ORIENTATION_UP:I = 0x4e23

.field public static final SINGLE_UI_MODE:Ljava/lang/String; = "single_ui_mode"

.field public static final SWITCH_STATE_NEW_APP:I = 0x2711

.field public static final SWITCH_STATE_SWITCH_APP:I = 0x2712

.field private static final TAG:Ljava/lang/String; = "CommunalService"

.field private static volatile instance:Lcn/nubia/server/policy/edge/CommunalService;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mGameModeHelperInstance:Ljava/lang/Object;

.field private mGameModeMethod:Ljava/lang/reflect/Method;

.field private mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

.field private mHandler:Landroid/os/Handler;

.field private mHasNavigationBar:Z

.field private mIsScreenshotTakeFinished:Z

.field private mIsSingleSlide:Z

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

.field private mRunnale:Ljava/lang/Runnable;

.field private mScreenHeight:I

.field private mScreenShotCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

.field private mScreenWidth:I

.field private mScreenshotBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/server/policy/edge/CommunalService;->instance:Lcn/nubia/server/policy/edge/CommunalService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcn/nubia/server/policy/edge/GestureSettings;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "settings"    # Lcn/nubia/server/policy/edge/GestureSettings;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Lcn/nubia/server/policy/edge/CommunalService$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/CommunalService$2;-><init>(Lcn/nubia/server/policy/edge/CommunalService;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRunnale:Ljava/lang/Runnable;

    .line 90
    iput-object p1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 92
    iput-object p3, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    .line 93
    iput-object p4, p0, Lcn/nubia/server/policy/edge/CommunalService;->mHandler:Landroid/os/Handler;

    .line 94
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mActivityManager:Landroid/app/ActivityManager;

    .line 96
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mWindowManager:Landroid/view/WindowManager;

    .line 98
    new-instance v0, Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-direct {v0, p1}, Lcn/nubia/server/policy/edge/RecentTasks;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    .line 99
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getDisplayInfo()V

    .line 100
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->initGameModeMethod()V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/CommunalService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CommunalService;

    .line 50
    iget v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/CommunalService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CommunalService;

    .line 50
    iget v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/CommunalService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CommunalService;

    .line 50
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mHasNavigationBar:Z

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/CommunalService;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CommunalService;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Z

    .line 50
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/CommunalService;->finishScreenShot(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/CommunalService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CommunalService;

    .line 50
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcn/nubia/server/policy/edge/CommunalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/CommunalService;
    .param p1, "x1"    # Z

    .line 50
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mIsSingleSlide:Z

    return p1
.end method

.method private canCancelPreScreenShot(Z)Z
    .locals 4
    .param p1, "singleSlide"    # Z

    .line 293
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mIsSingleSlide:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mIsScreenshotTakeFinished:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 294
    const/4 v0, 0x0

    return v0

    .line 296
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mIsSingleSlide:Z

    .line 297
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRunnale:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRunnale:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method private finishScreenShot(Landroid/graphics/Bitmap;Z)V
    .locals 5
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "notify"    # Z

    .line 259
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRunnale:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mIsScreenshotTakeFinished:Z

    .line 261
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 265
    :cond_0
    iput-object p1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 266
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->onScreenshotTake()V

    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "bitmap"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 269
    const-string v1, "CommunalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "takeScreenShot finish, bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", notify:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-eqz p2, :cond_1

    .line 273
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://cn.nubia.fitcard"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "initBitmap"

    const-string/jumbo v4, "initBitmap"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 275
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_0

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "CommunalService"

    const-string v3, "Exception happened "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const-string v1, "CommunalService"

    const-string/jumbo v2, "takeScreenShot init fitcard"

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_1
    return-void
.end method

.method public static getDefault()Lcn/nubia/server/policy/edge/CommunalService;
    .locals 1

    .line 158
    sget-object v0, Lcn/nubia/server/policy/edge/CommunalService;->instance:Lcn/nubia/server/policy/edge/CommunalService;

    return-object v0
.end method

.method private getDisplayInfo()V
    .locals 4

    .line 127
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 129
    .local v0, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mHasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 134
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    .line 135
    .local v1, "defaultDisplay":Landroid/view/Display;
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 137
    .local v2, "defaultDisplayInfo":Landroid/view/DisplayInfo;
    iget-object v3, p0, Lcn/nubia/server/policy/edge/CommunalService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 138
    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 139
    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenHeight:I

    .line 140
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenWidth:I

    .line 141
    return-void
.end method

.method private getFocusedWindow()Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .locals 1

    .line 548
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getFocusedWindow()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcn/nubia/server/policy/edge/GestureSettings;Landroid/os/Handler;)Lcn/nubia/server/policy/edge/CommunalService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "settings"    # Lcn/nubia/server/policy/edge/GestureSettings;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 146
    sget-object v0, Lcn/nubia/server/policy/edge/CommunalService;->instance:Lcn/nubia/server/policy/edge/CommunalService;

    if-nez v0, :cond_1

    .line 147
    const-class v0, Lcn/nubia/server/policy/edge/CommunalService;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-object v1, Lcn/nubia/server/policy/edge/CommunalService;->instance:Lcn/nubia/server/policy/edge/CommunalService;

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Lcn/nubia/server/policy/edge/CommunalService;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/server/policy/edge/CommunalService;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcn/nubia/server/policy/edge/GestureSettings;Landroid/os/Handler;)V

    sput-object v1, Lcn/nubia/server/policy/edge/CommunalService;->instance:Lcn/nubia/server/policy/edge/CommunalService;

    .line 152
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 154
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/server/policy/edge/CommunalService;->instance:Lcn/nubia/server/policy/edge/CommunalService;

    return-object v0
.end method

.method private initGameModeMethod()V
    .locals 5

    .line 105
    :try_start_0
    const-string v0, "cn.nubia.game.GameModeHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 106
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getDefault"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 107
    .local v1, "methodInstatnce":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGameModeHelperInstance:Ljava/lang/Object;

    .line 108
    const-string v3, "IsGameModeSubNoFunsRunning"

    new-array v2, v2, [Ljava/lang/Class;

    .line 109
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGameModeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "methodInstatnce":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private invokeGameModeMethod()Z
    .locals 5

    .line 116
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGameModeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 117
    return v1

    .line 119
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGameModeMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGameModeHelperInstance:Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CommunalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception happens when get game mode, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private isBottomSide(Lcn/nubia/edgegesture/EdgeGesture;)Z
    .locals 10
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 399
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 401
    .local v0, "rotation":I
    iget v1, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointerCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_9

    iget-object v1, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 405
    :cond_0
    iget v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenHeight:I

    .line 406
    .local v1, "h":I
    packed-switch v0, :pswitch_data_0

    .line 426
    iget-object v4, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v4, v4, v3

    iget v4, v4, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->y:F

    float-to-double v4, v4

    iget v6, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fe570a3d70a3d71L    # 0.67

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_8

    goto/16 :goto_3

    .line 417
    :pswitch_0
    iget-boolean v4, p0, Lcn/nubia/server/policy/edge/CommunalService;->mHasNavigationBar:Z

    if-eqz v4, :cond_1

    .line 418
    iget-object v4, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    .line 419
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v5, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    .line 420
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 418
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 422
    :cond_1
    iget-object v4, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v4, v4, v3

    iget v4, v4, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->x:F

    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_3

    iget-object v4, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v4, v4, v3

    iget v4, v4, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->y:F

    iget v5, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenHeight:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    nop

    :cond_3
    :goto_0
    return v2

    .line 415
    :pswitch_1
    iget-object v4, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v4, v4, v3

    iget v4, v4, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->y:F

    float-to-double v4, v4

    iget v6, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fd51eb851eb851fL    # 0.33

    mul-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    return v2

    .line 408
    :pswitch_2
    iget-boolean v4, p0, Lcn/nubia/server/policy/edge/CommunalService;->mHasNavigationBar:Z

    if-eqz v4, :cond_5

    .line 409
    iget-object v4, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    .line 410
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v5, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    .line 411
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 409
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 413
    :cond_5
    iget-object v4, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v4, v4, v3

    iget v4, v4, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->x:F

    const/high16 v5, 0x42480000    # 50.0f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_7

    iget-object v4, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v4, v4, v3

    iget v4, v4, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->y:F

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    nop

    :cond_7
    :goto_2
    return v2

    .line 426
    :cond_8
    move v2, v3

    :goto_3
    return v2

    .line 402
    .end local v1    # "h":I
    :cond_9
    :goto_4
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isExcludedFocusWindow()Z
    .locals 5

    .line 522
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getFocusedWindow()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    .line 523
    .local v0, "focusWindow":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    if-nez v0, :cond_0

    .line 524
    const/4 v1, 0x0

    return v1

    .line 525
    :cond_0
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 526
    .local v1, "arrts":Landroid/view/WindowManager$LayoutParams;
    const-string v2, "GlobalActions"

    const-string v3, "android"

    const/16 v4, 0x7d9

    invoke-direct {p0, v1, v2, v3, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isLayoutParamsMatched(Landroid/view/WindowManager$LayoutParams;Ljava/lang/CharSequence;Ljava/lang/String;I)Z

    move-result v2

    return v2
.end method

.method private isFitCardWindow()Z
    .locals 5

    .line 513
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getFocusedWindow()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    .line 514
    .local v0, "focusWindow":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    if-nez v0, :cond_0

    .line 515
    const/4 v1, 0x0

    return v1

    .line 517
    :cond_0
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 518
    .local v1, "arrts":Landroid/view/WindowManager$LayoutParams;
    const-string v2, "FitCard"

    const-string v3, "cn.nubia.edge"

    const/4 v4, -0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isLayoutParamsMatched(Landroid/view/WindowManager$LayoutParams;Ljava/lang/CharSequence;Ljava/lang/String;I)Z

    move-result v2

    return v2
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .line 440
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method private isKeyguardNotOccluded()Z
    .locals 5

    .line 485
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getFocusedWindow()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    .line 486
    .local v0, "focusWindow":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 487
    return v1

    .line 488
    :cond_0
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 489
    .local v2, "arrts":Landroid/view/WindowManager$LayoutParams;
    const-string v3, "com.android.systemui"

    iget-object v4, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 490
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    nop

    .line 489
    :cond_1
    return v1
.end method

.method private isLandscape()Z
    .locals 2

    .line 444
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLayoutParamsMatched(Landroid/view/WindowManager$LayoutParams;Ljava/lang/CharSequence;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "arrts"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "type"    # I

    .line 532
    const/4 v0, 0x1

    .line 533
    .local v0, "matched":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 534
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 536
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 537
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 539
    :cond_1
    if-eqz v0, :cond_3

    if-lez p4, :cond_3

    .line 540
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt p4, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 542
    :cond_3
    const-string v1, "CommunalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLayoutParamsMatched, title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return v0
.end method

.method private isMultiWindowMode()Z
    .locals 3

    .line 430
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ss_multi_window_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .line 463
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 464
    return v0

    .line 465
    :cond_0
    const/4 v1, 0x0

    .line 466
    .local v1, "same":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 467
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 469
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 470
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    move v1, v0

    .line 472
    :cond_3
    return v1
.end method

.method private isSameFocusWindow(Ljava/lang/String;)Z
    .locals 4
    .param p1, "windowName"    # Ljava/lang/String;

    .line 494
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getFocusedWindow()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    .line 495
    .local v0, "focusWindow":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 496
    return v1

    .line 497
    :cond_0
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 498
    .local v2, "arrts":Landroid/view/WindowManager$LayoutParams;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 499
    iget-object v1, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 501
    :cond_1
    return v1
.end method

.method private isSetupWizardComponent()Z
    .locals 3

    .line 452
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 454
    const-string v0, "CommunalService"

    const-string/jumbo v1, "setup wizard hasn\'t finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v0, 0x1

    return v0

    .line 457
    :cond_0
    return v2
.end method

.method private isSingleUIMode()Z
    .locals 3

    .line 435
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "single_ui_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private isStateBarHide()Z
    .locals 1

    .line 448
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isTopIsFullscreen()Z

    move-result v0

    return v0
.end method

.method private isSuperSnapWindow()Z
    .locals 5

    .line 505
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getFocusedWindow()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    .line 506
    .local v0, "focusWindow":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    if-nez v0, :cond_0

    .line 507
    const/4 v1, 0x0

    return v1

    .line 508
    :cond_0
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 509
    .local v1, "arrts":Landroid/view/WindowManager$LayoutParams;
    const-string v2, ""

    const-string v3, "cn.nubia.supersnap"

    const/4 v4, -0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isLayoutParamsMatched(Landroid/view/WindowManager$LayoutParams;Ljava/lang/CharSequence;Ljava/lang/String;I)Z

    move-result v2

    return v2
.end method

.method private isZBiglauncherDefault()Z
    .locals 4

    .line 476
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mContext:Landroid/content/Context;

    .line 479
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 478
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 480
    .local v1, "launcherComponent":Landroid/content/ComponentName;
    const-string v2, "cn.nubia.zbiglauncher.preset"

    const-string v3, ""

    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private needCancelSingleSlideGesture(Z)Z
    .locals 7
    .param p1, "isUp"    # Z

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/CommunalService;->getSingleSlideFuns(I)I

    move-result v1

    .line 609
    .local v1, "funs":I
    const/4 v2, 0x1

    const/16 v3, 0x2712

    if-ne v3, v1, :cond_1

    .line 610
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getNextAppIndex(Z)I

    move-result v3

    if-gez v3, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 612
    :cond_1
    nop

    .line 613
    if-eqz p1, :cond_2

    const/16 v3, 0x4e23

    goto :goto_0

    .line 614
    :cond_2
    const/16 v3, 0x4e24

    .line 612
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcn/nubia/server/policy/edge/CommunalService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v3

    .line 615
    .local v3, "startComponent":Landroid/content/ComponentName;
    if-nez v3, :cond_3

    .line 616
    const-string v0, "CommunalService"

    const-string/jumbo v4, "single slide for next component is null !"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return v2

    .line 619
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 621
    .local v4, "currentComponent":Landroid/content/ComponentName;
    if-eqz v4, :cond_4

    .line 622
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 623
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 622
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 624
    return v2

    .line 627
    .end local v3    # "startComponent":Landroid/content/ComponentName;
    .end local v4    # "currentComponent":Landroid/content/ComponentName;
    :cond_4
    return v0
.end method

.method private onScreenshotTake()V
    .locals 3

    .line 174
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mIsScreenshotTakeFinished:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenShotCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    if-eqz v0, :cond_1

    .line 175
    const-string v0, "CommunalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenshotTake, screenshot bitmap is null? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenShotCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;->onScreenUploaded(Landroid/graphics/Bitmap;)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenShotCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    .line 182
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelGesture(Lcn/nubia/edgegesture/EdgeGesture;)Z
    .locals 2
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 571
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getCancelGestureAction(Lcn/nubia/edgegesture/EdgeGesture;)I

    move-result v0

    .line 572
    .local v0, "cancelAction":I
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p1, v0}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    .line 574
    const/4 v1, 0x1

    return v1

    .line 576
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getCancelGestureAction(Lcn/nubia/edgegesture/EdgeGesture;)I
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 580
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    .line 581
    .local v0, "action":I
    const/16 v1, 0x3001

    const/16 v2, 0x3003

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x5001

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 604
    const/4 v1, 0x0

    return v1

    .line 600
    :pswitch_0
    const/16 v1, 0x2003

    return v1

    .line 585
    :pswitch_1
    const/16 v1, 0x1003

    return v1

    .line 596
    :cond_0
    :pswitch_2
    const/16 v1, 0x4003

    return v1

    .line 588
    :cond_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2001
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4003
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4008
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentAppIndex()I
    .locals 3

    .line 653
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/RecentTasks;->getTargetAppIndex()I

    move-result v0

    .line 654
    .local v0, "index":I
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 655
    .local v1, "component":Landroid/content/ComponentName;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v2, v1}, Lcn/nubia/server/policy/edge/RecentTasks;->isHomeApplication(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    .line 656
    invoke-virtual {v2, v1}, Lcn/nubia/server/policy/edge/RecentTasks;->isRecentTaksActivity(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    :cond_0
    const/4 v0, -0x1

    .line 658
    :cond_1
    return v0
.end method

.method public getCurrentRunAppComponent()Landroid/content/ComponentName;
    .locals 1

    .line 162
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/RecentTasks;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentRunPackageName()Ljava/lang/String;
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 167
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 169
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public getNextAppIndex(Z)I
    .locals 9
    .param p1, "isUp"    # Z

    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/CommunalService;->getRecentTaskList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 663
    .local v0, "recentTaskNum":I
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/RecentTasks;->getRecentTaskNum()I

    move-result v1

    .line 664
    .local v1, "maxNum":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 666
    .local v2, "length":I
    const/4 v3, -0x1

    if-gtz v2, :cond_0

    .line 667
    const-string v4, "CommunalService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recent task\'s length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v3

    .line 670
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentAppIndex()I

    move-result v4

    .line 671
    .local v4, "index":I
    move v5, v4

    .line 672
    .local v5, "nextIndex":I
    const-string v6, "CommunalService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNextAppIndex curent index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", total lenght: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const/4 v6, 0x1

    if-eqz p1, :cond_2

    .line 675
    add-int/lit8 v7, v2, -0x1

    if-ne v5, v7, :cond_1

    .line 676
    const/4 v5, 0x0

    goto :goto_0

    .line 678
    :cond_1
    add-int/2addr v5, v6

    goto :goto_0

    .line 681
    :cond_2
    if-gez v5, :cond_3

    .line 682
    add-int/lit8 v7, v2, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    .line 683
    :cond_3
    if-nez v5, :cond_4

    .line 684
    add-int/lit8 v5, v2, -0x1

    goto :goto_0

    .line 686
    :cond_4
    add-int/2addr v5, v3

    .line 689
    :goto_0
    const-string v6, "CommunalService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNextAppIndex return index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", total lenght: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    if-ne v5, v4, :cond_5

    .line 692
    const-string v6, "CommunalService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current index is the same as the next, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", total length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return v3

    .line 696
    :cond_5
    return v5
.end method

.method public getNextStartComponentName(II)Landroid/content/ComponentName;
    .locals 9
    .param p1, "leftOrRight"    # I
    .param p2, "upOrDown"    # I

    .line 715
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/GestureSettings;->getSingleSlideSwitch()Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "value":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    const-string/jumbo v1, "switch_app"

    .line 718
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 723
    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "apps":[Ljava/lang/String;
    if-eqz v1, :cond_8

    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_3

    .line 729
    :cond_1
    const/16 v3, 0x4e23

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p2, v3, :cond_2

    aget-object v3, v1, v6

    goto :goto_0

    :cond_2
    aget-object v3, v1, v5

    .line 730
    .local v3, "app":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 731
    const-string v4, "CommunalService"

    const-string v5, "app is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-object v2

    .line 735
    :cond_3
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 736
    .local v7, "component":[Ljava/lang/String;
    if-eqz v7, :cond_7

    array-length v8, v7

    if-eq v8, v4, :cond_4

    goto :goto_2

    .line 741
    :cond_4
    aget-object v4, v7, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    aget-object v4, v7, v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 746
    :cond_5
    new-instance v2, Landroid/content/ComponentName;

    aget-object v4, v7, v6

    aget-object v5, v7, v5

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 742
    :cond_6
    :goto_1
    const-string v4, "CommunalService"

    const-string v5, "app\'s component is empty !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-object v2

    .line 737
    :cond_7
    :goto_2
    const-string v4, "CommunalService"

    const-string v5, "app\'s component is invalid !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return-object v2

    .line 725
    .end local v3    # "app":Ljava/lang/String;
    .end local v7    # "component":[Ljava/lang/String;
    :cond_8
    :goto_3
    const-string v3, "CommunalService"

    const-string v4, "app length is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return-object v2

    .line 719
    .end local v1    # "apps":[Ljava/lang/String;
    :cond_9
    :goto_4
    const-string v1, "CommunalService"

    const-string/jumbo v3, "single side switch is off or switch_app"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-object v2
.end method

.method public getRecentTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 649
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/CommunalService;->getRecentTaskList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecentTaskList(Z)Ljava/util/List;
    .locals 1
    .param p1, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/RecentTasks;->getRecentTaskList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScreenShot(Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V
    .locals 3
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    .line 185
    const-string v0, "CommunalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScreenShot, screenshot bitmap is null? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenShotCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    .line 188
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->onScreenshotTake()V

    .line 189
    return-void
.end method

.method public getSingleSlideFuns(I)I
    .locals 2
    .param p1, "leftOrRight"    # I

    .line 705
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/GestureSettings;->getSingleSlideSwitch()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "value":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "switch_app"

    .line 708
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 711
    :cond_0
    const/16 v1, 0x2711

    return v1

    .line 709
    :cond_1
    :goto_0
    const/16 v1, 0x2712

    return v1
.end method

.method public getTargeAppIndex(Z)I
    .locals 4
    .param p1, "isUp"    # Z

    .line 308
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getNextAppIndex(Z)I

    move-result v0

    .line 309
    .local v0, "index":I
    const-string v1, "CommunalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTargeAppIndex isUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", next index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    if-gez v0, :cond_0

    .line 312
    return v0

    .line 314
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/RecentTasks;->setTargetAppIndex(I)V

    .line 315
    return v0
.end method

.method public isFloatMenuExisted()Z
    .locals 1

    .line 771
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isDoubleTapWithFloat()Z

    move-result v0

    return v0
.end method

.method public isGestureEnable(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 750
    const/16 v0, 0x4000

    if-eq v0, p1, :cond_5

    const/16 v0, 0x5000

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    const/16 v0, 0x1000

    if-ne v0, p1, :cond_1

    .line 755
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_single_move_switch"

    .line 756
    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    .line 755
    return v0

    .line 757
    :cond_1
    const/16 v0, 0x6000

    if-ne v0, p1, :cond_2

    .line 758
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_double_click"

    .line 759
    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    .line 758
    return v0

    .line 760
    :cond_2
    const/16 v0, 0x2000

    if-ne v0, p1, :cond_3

    .line 761
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_double_side_move"

    .line 762
    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    .line 761
    return v0

    .line 763
    :cond_3
    const/16 v0, 0x3000

    if-ne v0, p1, :cond_4

    .line 764
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_move_loop"

    .line 765
    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    .line 764
    return v0

    .line 767
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 752
    :cond_5
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    const-string/jumbo v1, "nubia_edge_move_in_switch"

    .line 753
    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v0

    .line 752
    return v0
.end method

.method public isHomeApplication()Z
    .locals 2

    .line 700
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 701
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/RecentTasks;->isHomeApplication(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public isHomeApplicationAndFocused()Z
    .locals 3

    .line 631
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 632
    .local v0, "component":Landroid/content/ComponentName;
    const-string v1, "cn.nubia.launcher"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    const-string v1, "cn.nubia.launcher"

    const-string v2, "com.android.launcher3.Launcher"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    const-string v1, "cn.nubia.launcher"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isSameFocusWindow(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 637
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 639
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/RecentTasks;->isHomeApplication(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public isSingleSlideControlNotification()Z
    .locals 2

    .line 643
    const-string/jumbo v0, "switch_control_notification"

    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mGestureSettings:Lcn/nubia/server/policy/edge/GestureSettings;

    .line 644
    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/GestureSettings;->getSingleSlideSwitch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 643
    return v0
.end method

.method public isSupportedAtPresent(I)Z
    .locals 5
    .param p1, "type"    # I

    .line 323
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 324
    .local v0, "component":Landroid/content/ComponentName;
    const-string v1, "cn.nubia.edge"

    const-string v2, "cn.nubia.edge.instruct.InstructActivity"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    const-string v1, "cn.nubia.zbiglauncher.preset"

    const-string v3, ""

    .line 326
    invoke-direct {p0, v0, v1, v3}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 327
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isZBiglauncherDefault()Z

    move-result v1

    if-nez v1, :cond_c

    .line 328
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isSetupWizardComponent()Z

    move-result v1

    if-nez v1, :cond_c

    .line 329
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->invokeGameModeMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 333
    :cond_0
    const/16 v1, 0x2000

    const/4 v3, 0x1

    if-ne v1, p1, :cond_1

    .line 334
    return v3

    .line 337
    :cond_1
    const/16 v1, 0x6000

    if-ne v1, p1, :cond_3

    .line 338
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isFloatMenuExisted()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    return v2

    .line 341
    :cond_2
    return v3

    .line 345
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isSingleUIMode()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "com.android.incallui"

    const-string v4, ""

    .line 346
    invoke-direct {p0, v0, v1, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "cn.nubia.supersnap"

    const-string v4, ""

    .line 347
    invoke-direct {p0, v0, v1, v4}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 348
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isSuperSnapWindow()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isExcludedFocusWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 352
    :cond_4
    const/16 v1, 0x4000

    if-eq v1, p1, :cond_6

    const/16 v1, 0x5000

    if-eq v1, p1, :cond_6

    const/16 v1, 0x7000

    if-ne v1, p1, :cond_5

    goto :goto_0

    .line 369
    :cond_5
    return v3

    .line 355
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 356
    return v2

    .line 358
    :cond_7
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isFitCardWindow()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 359
    return v2

    .line 361
    :cond_8
    const-string v1, "cn.nubia.gallery3d"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recentsview.nubiauiv3.RecentsActivity"

    .line 362
    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/policy/edge/CommunalService;->isSameComponent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    .line 366
    :cond_9
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isStateBarHide()Z

    move-result v1

    xor-int/2addr v1, v3

    return v1

    .line 364
    :cond_a
    :goto_1
    return v3

    .line 349
    :cond_b
    :goto_2
    return v2

    .line 330
    :cond_c
    :goto_3
    return v2
.end method

.method public isSupportedDoubleTapAtPresent(Ljava/lang/String;Lcn/nubia/edgegesture/EdgeGesture;)Z
    .locals 3
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 383
    const-string v0, "10"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 384
    invoke-direct {p0, p2}, Lcn/nubia/server/policy/edge/CommunalService;->isBottomSide(Lcn/nubia/edgegesture/EdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    return v2

    .line 387
    :cond_0
    return v1

    .line 388
    :cond_1
    const-string v0, "01"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isSingleUIMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p2}, Lcn/nubia/server/policy/edge/CommunalService;->isBottomSide(Lcn/nubia/edgegesture/EdgeGesture;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 390
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/CommunalService;->isKeyguardNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 393
    :cond_2
    return v1

    .line 391
    :cond_3
    :goto_0
    return v2

    .line 395
    :cond_4
    return v2
.end method

.method public isSupportedDoubleTapBackAtPresent(Lcn/nubia/edgegesture/EdgeGesture;)Z
    .locals 8
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 373
    iget v0, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointerCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget-object v0, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 375
    .local v0, "rotation":I
    iget-object v2, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v2, v2, v1

    iget v2, v2, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->y:F

    float-to-double v2, v2

    iget v4, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenHeight:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p1, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v2, v2, v1

    iget v2, v2, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->y:F

    float-to-double v2, v2

    iget v4, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 378
    .end local v0    # "rotation":I
    :cond_2
    return v1
.end method

.method public removeScreenShotCallback()V
    .locals 2

    .line 192
    const-string v0, "CommunalService"

    const-string/jumbo v1, "removeScreenShotCallback"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenShotCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    .line 194
    return-void
.end method

.method public takeScreenShot(Z)V
    .locals 5
    .param p1, "singleSlide"    # Z

    .line 197
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->canCancelPreScreenShot(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    return-void

    .line 199
    :cond_0
    const-string v0, "CommunalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "takeScreenShot start for single slide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mIsScreenshotTakeFinished:Z

    .line 201
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotLoader:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotLoader:Landroid/os/AsyncTask;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 204
    :cond_1
    new-instance v1, Lcn/nubia/server/policy/edge/CommunalService$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/CommunalService$1;-><init>(Lcn/nubia/server/policy/edge/CommunalService;)V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotLoader:Landroid/os/AsyncTask;

    .line 254
    iget-object v1, p0, Lcn/nubia/server/policy/edge/CommunalService;->mScreenshotLoader:Landroid/os/AsyncTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Boolean;

    .line 255
    xor-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v0

    .line 254
    invoke-virtual {v1, v3, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 256
    return-void
.end method

.method public updateGesture(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 5
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 552
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeGesture;->getAction()I

    move-result v0

    .line 553
    .local v0, "action":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1001

    if-eq v0, v3, :cond_4

    const/16 v4, 0x1002

    if-ne v0, v4, :cond_0

    goto :goto_1

    .line 560
    :cond_0
    const/16 v3, 0x4008

    if-eq v0, v3, :cond_1

    const/16 v4, 0x4009

    if-ne v0, v4, :cond_8

    .line 562
    :cond_1
    if-ne v0, v3, :cond_2

    move v1, v2

    nop

    .line 563
    .local v1, "isUp":Z
    :cond_2
    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->needCancelSingleSlideGesture(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 564
    if-eqz v1, :cond_3

    const v2, 0x40001

    goto :goto_0

    .line 565
    :cond_3
    const v2, 0x40002

    .line 564
    :goto_0
    invoke-virtual {p1, v2}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    .end local v1    # "isUp":Z
    goto :goto_3

    .line 555
    :cond_4
    :goto_1
    if-ne v0, v3, :cond_5

    move v1, v2

    nop

    .line 556
    .restart local v1    # "isUp":Z
    :cond_5
    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->needCancelSingleSlideGesture(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 557
    if-eqz v1, :cond_6

    const v2, 0x10001

    goto :goto_2

    .line 558
    :cond_6
    const v2, 0x10002

    .line 557
    :goto_2
    invoke-virtual {p1, v2}, Lcn/nubia/edgegesture/EdgeGesture;->updateAction(I)V

    .line 560
    .end local v1    # "isUp":Z
    :cond_7
    nop

    .line 568
    :cond_8
    :goto_3
    return-void
.end method

.method public updateRecentTasksFlag(Z)V
    .locals 1
    .param p1, "changeBySwitch"    # Z

    .line 304
    iget-object v0, p0, Lcn/nubia/server/policy/edge/CommunalService;->mRecentTasks:Lcn/nubia/server/policy/edge/RecentTasks;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/RecentTasks;->updateRecentTasksFlag(Z)V

    .line 305
    return-void
.end method
