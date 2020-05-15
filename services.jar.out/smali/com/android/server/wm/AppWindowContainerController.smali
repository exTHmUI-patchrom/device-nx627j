.class public Lcom/android/server/wm/AppWindowContainerController;
.super Lcom/android/server/wm/WindowContainerController;
.source "AppWindowContainerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowContainerController$NaviGestureCallback;,
        Lcom/android/server/wm/AppWindowContainerController$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainerController<",
        "Lcom/android/server/wm/AppWindowToken;",
        "Lcom/android/server/wm/AppWindowContainerListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final STARTING_WINDOW_TYPE_NONE:I = 0x0

.field private static final STARTING_WINDOW_TYPE_SNAPSHOT:I = 0x1

.field private static final STARTING_WINDOW_TYPE_SPLASH_SCREEN:I = 0x2


# instance fields
.field private findBaseWindow:Z

.field private forceSkip:Z

.field private final mAddStartingWindow:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mNaviGestureCallback:Lcom/android/server/wm/AppWindowContainerController$NaviGestureCallback;

.field private final mOnWindowsGone:Ljava/lang/Runnable;

.field private final mOnWindowsVisible:Ljava/lang/Runnable;

.field private final mToken:Landroid/view/IApplicationToken;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJ)V
    .locals 17
    .param p1, "taskController"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "listener"    # Lcom/android/server/wm/AppWindowContainerListener;
    .param p4, "index"    # I
    .param p5, "requestedOrientation"    # I
    .param p6, "fullscreen"    # Z
    .param p7, "showForAllUsers"    # Z
    .param p8, "configChanges"    # I
    .param p9, "voiceInteraction"    # Z
    .param p10, "launchTaskBehind"    # Z
    .param p11, "alwaysFocusable"    # Z
    .param p12, "targetSdkVersion"    # I
    .param p13, "rotationAnimationHint"    # I
    .param p14, "inputDispatchingTimeoutNanos"    # J

    .line 219
    nop

    .line 223
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v16

    .line 219
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-wide/from16 v14, p14

    invoke-direct/range {v0 .. v16}, Lcom/android/server/wm/AppWindowContainerController;-><init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJLcom/android/server/wm/WindowManagerService;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJLcom/android/server/wm/WindowManagerService;)V
    .locals 20
    .param p1, "taskController"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "listener"    # Lcom/android/server/wm/AppWindowContainerListener;
    .param p4, "index"    # I
    .param p5, "requestedOrientation"    # I
    .param p6, "fullscreen"    # Z
    .param p7, "showForAllUsers"    # Z
    .param p8, "configChanges"    # I
    .param p9, "voiceInteraction"    # Z
    .param p10, "launchTaskBehind"    # Z
    .param p11, "alwaysFocusable"    # Z
    .param p12, "targetSdkVersion"    # I
    .param p13, "rotationAnimationHint"    # I
    .param p14, "inputDispatchingTimeoutNanos"    # J
    .param p16, "service"    # Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 232
    move-object/from16 v13, p16

    move-object/from16 v12, p3

    invoke-direct {v15, v12, v13}, Lcom/android/server/wm/WindowContainerController;-><init>(Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/WindowManagerService;)V

    .line 112
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$BD6wMjkwgPM5dckzkeLRiPrmx9Y;

    invoke-direct {v0, v15}, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$BD6wMjkwgPM5dckzkeLRiPrmx9Y;-><init>(Lcom/android/server/wm/AppWindowContainerController;)V

    iput-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsVisible:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$mZqlV7Ety8-HHzaQXVEl4hu-8mc;

    invoke-direct {v0, v15}, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$mZqlV7Ety8-HHzaQXVEl4hu-8mc;-><init>(Lcom/android/server/wm/AppWindowContainerController;)V

    iput-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsGone:Ljava/lang/Runnable;

    .line 130
    new-instance v0, Lcom/android/server/wm/AppWindowContainerController$1;

    invoke-direct {v0, v15}, Lcom/android/server/wm/AppWindowContainerController$1;-><init>(Lcom/android/server/wm/AppWindowContainerController;)V

    iput-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mAddStartingWindow:Ljava/lang/Runnable;

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, v15, Lcom/android/server/wm/AppWindowContainerController;->findBaseWindow:Z

    .line 473
    iput-boolean v0, v15, Lcom/android/server/wm/AppWindowContainerController;->forceSkip:Z

    .line 233
    new-instance v0, Lcom/android/server/wm/AppWindowContainerController$H;

    iget-object v1, v13, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/server/wm/AppWindowContainerController$H;-><init>(Lcom/android/server/wm/AppWindowContainerController;Landroid/os/Looper;)V

    iput-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    .line 234
    move-object/from16 v11, p2

    iput-object v11, v15, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    .line 235
    iget-object v10, v15, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v10

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 236
    iget-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v15, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 237
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 239
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 243
    :cond_0
    :try_start_1
    iget-object v1, v14, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    move-object v9, v1

    .line 244
    .local v9, "task":Lcom/android/server/wm/Task;
    if-eqz v9, :cond_1

    .line 249
    iget-object v2, v15, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, v15

    move-object v3, v11

    move/from16 v4, p9

    move-wide/from16 v6, p14

    move/from16 v8, p6

    move-object/from16 v17, v0

    move-object v0, v9

    move/from16 v9, p7

    .end local v9    # "task":Lcom/android/server/wm/Task;
    .local v0, "task":Lcom/android/server/wm/Task;
    .local v17, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v18, v10

    move/from16 v10, p12

    move/from16 v11, p5

    move/from16 v12, p13

    move/from16 v13, p8

    move/from16 v14, p10

    move/from16 v15, p11

    move-object/from16 v16, p0

    :try_start_2
    invoke-virtual/range {v1 .. v16}, Lcom/android/server/wm/AppWindowContainerController;->createAppWindow(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    .end local v17    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    move/from16 v2, p4

    :try_start_3
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    .line 256
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 257
    return-void

    .line 256
    :catchall_0
    move-exception v0

    move/from16 v2, p4

    goto :goto_0

    .line 245
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v9    # "task":Lcom/android/server/wm/Task;
    :cond_1
    move/from16 v2, p4

    move-object/from16 v17, v0

    move-object v0, v9

    move-object/from16 v18, v10

    .end local v9    # "task":Lcom/android/server/wm/Task;
    .local v0, "task":Lcom/android/server/wm/Task;
    .restart local v17    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :try_start_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppWindowContainerController: invalid  controller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v4, p1

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v17    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_1
    move-exception v0

    :goto_0
    move-object/from16 v4, p1

    goto :goto_1

    :catchall_2
    move-exception v0

    move/from16 v2, p4

    move-object/from16 v18, v10

    move-object v4, v14

    :goto_1
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppWindowContainerController;)Landroid/view/IApplicationToken;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppWindowContainerController;

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    return-object v0
.end method

.method private createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .locals 3
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 648
    if-nez p1, :cond_0

    .line 649
    const/4 v0, 0x0

    return v0

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    new-instance v1, Lcom/android/server/wm/SnapshotStartingData;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/SnapshotStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/app/ActivityManager$TaskSnapshot;)V

    iput-object v1, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 654
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowContainerController;->scheduleAddStartingWindow()V

    .line 655
    const/4 v0, 0x1

    return v0
.end method

.method private getStartingWindowType(ZZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I
    .locals 3
    .param p1, "newTask"    # Z
    .param p2, "taskSwitch"    # Z
    .param p3, "processRunning"    # Z
    .param p4, "allowTaskSnapshot"    # Z
    .param p5, "activityCreated"    # Z
    .param p6, "fromRecents"    # Z
    .param p7, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 621
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    .line 625
    return v1

    .line 626
    :cond_0
    const/4 v0, 0x2

    if-nez p1, :cond_6

    if-eqz p3, :cond_6

    if-eqz p2, :cond_1

    if-nez p5, :cond_1

    goto :goto_2

    .line 628
    :cond_1
    if-eqz p2, :cond_5

    if-eqz p4, :cond_5

    .line 629
    if-nez p7, :cond_2

    goto :goto_1

    .line 630
    :cond_2
    invoke-direct {p0, p7}, Lcom/android/server/wm/AppWindowContainerController;->snapshotOrientationSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p6, :cond_3

    goto :goto_0

    .line 631
    :cond_3
    nop

    .line 629
    move v1, v0

    goto :goto_1

    .line 631
    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 629
    :goto_1
    return v1

    .line 633
    :cond_5
    return v1

    .line 627
    :cond_6
    :goto_2
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/AppWindowContainerController;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-nez v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting visible in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerListener;->onWindowsVisible()V

    .line 119
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/wm/AppWindowContainerController;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting gone in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerListener;->onWindowsGone()V

    .line 128
    return-void
.end method

.method static synthetic lambda$removeStartingWindow$3(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V
    .locals 3
    .param p0, "surface"    # Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 710
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "Exception when removing starting window"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$shouldSkipStaringWindow$2(Lcom/android/server/wm/AppWindowContainerController;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 477
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowContainerController;->findBaseWindow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.jingdong.app.mall.MainFrameActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowContainerController;->forceSkip:Z

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowContainerController;->findBaseWindow:Z

    .line 480
    return-void

    .line 482
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.jingdong.app.mall.MainFrameActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowContainerController;->findBaseWindow:Z

    .line 485
    :cond_1
    return-void
.end method

.method private shouldSkipStaringWindow()Z
    .locals 3

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowContainerController;->forceSkip:Z

    .line 476
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$Gl7JUE6VvSMoQKCRE1Uri1Q_n5o;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$Gl7JUE6VvSMoQKCRE1Uri1Q_n5o;-><init>(Lcom/android/server/wm/AppWindowContainerController;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 486
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowContainerController;->forceSkip:Z

    return v0
.end method

.method private snapshotOrientationSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .locals 3
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 659
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 660
    return v0

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method


# virtual methods
.method public addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZIZZZ)Z
    .locals 23
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "theme"    # I
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p5, "labelRes"    # I
    .param p6, "icon"    # I
    .param p7, "logo"    # I
    .param p8, "windowFlags"    # I
    .param p9, "transferFrom"    # Landroid/os/IBinder;
    .param p10, "newTask"    # Z
    .param p11, "taskSwitch"    # Z
    .param p12, "processRunning"    # Z
    .param p13, "windowMode"    # I
    .param p14, "allowTaskSnapshot"    # Z
    .param p15, "activityCreated"    # Z
    .param p16, "fromRecents"    # Z

    move-object/from16 v9, p0

    move/from16 v15, p2

    .line 496
    iget-object v14, v9, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v14

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 502
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 503
    :try_start_1
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 614
    :catchall_0
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v16, p8

    move-object/from16 v6, p9

    move/from16 v3, p13

    .end local p8    # "windowFlags":I
    .local v16, "windowFlags":I
    :goto_0
    move-object/from16 v22, v14

    goto/16 :goto_7

    .line 509
    .end local v16    # "windowFlags":I
    .restart local p8    # "windowFlags":I
    :cond_0
    :try_start_2
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-nez v0, :cond_1

    .line 510
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 513
    :cond_1
    :try_start_4
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    if-eqz v0, :cond_2

    .line 514
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 517
    :cond_2
    :try_start_6
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 518
    .local v0, "mainWin":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_3

    :try_start_7
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 520
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 523
    :cond_3
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowContainerController;->shouldSkipStaringWindow()Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    if-eqz v1, :cond_4

    .line 524
    :try_start_9
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 528
    :cond_4
    if-eqz v0, :cond_6

    :try_start_a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.outfit7.talkingtomgoldrun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.yinhan.hunter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 529
    :cond_5
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 533
    :cond_6
    if-eqz v0, :cond_7

    :try_start_b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn.nubia.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v9, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 534
    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_7

    .line 536
    monitor-exit v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 540
    :cond_7
    :try_start_c
    iget-object v1, v9, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v2, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 541
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mUserId:I

    .line 540
    invoke-virtual {v1, v2, v3, v10, v10}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v1

    move-object v13, v1

    .line 543
    .local v13, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    move-object v1, v9

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p12

    move/from16 v5, p14

    move/from16 v6, p15

    move/from16 v7, p16

    move-object v8, v13

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/AppWindowContainerController;->getStartingWindowType(ZZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I

    move-result v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 546
    .local v1, "type":I
    if-eqz v13, :cond_8

    :try_start_d
    invoke-virtual {v13}, Landroid/app/ActivityManager$TaskSnapshot;->getWindowingMode()I

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move/from16 v3, p13

    if-eq v3, v2, :cond_9

    .line 547
    :try_start_e
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 614
    .end local v0    # "mainWin":Lcom/android/server/wm/WindowState;
    .end local v1    # "type":I
    .end local v13    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :catchall_1
    move-exception v0

    move/from16 v3, p13

    .end local p8    # "windowFlags":I
    .restart local v16    # "windowFlags":I
    :goto_1
    move-object/from16 v7, p1

    :goto_2
    move/from16 v16, p8

    move-object/from16 v6, p9

    goto/16 :goto_0

    .line 550
    .end local v16    # "windowFlags":I
    .restart local v0    # "mainWin":Lcom/android/server/wm/WindowState;
    .restart local v1    # "type":I
    .restart local v13    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .restart local p8    # "windowFlags":I
    :cond_8
    move/from16 v3, p13

    :cond_9
    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 551
    :try_start_f
    invoke-direct {v9, v13}, Lcom/android/server/wm/AppWindowContainerController;->createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v2

    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 614
    .end local v0    # "mainWin":Lcom/android/server/wm/WindowState;
    .end local v1    # "type":I
    .end local v13    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 559
    .restart local v0    # "mainWin":Lcom/android/server/wm/WindowState;
    .restart local v1    # "type":I
    .restart local v13    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_a
    if-eqz v15, :cond_10

    .line 560
    :try_start_10
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    iget-object v6, v9, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-object/from16 v7, p1

    :try_start_11
    invoke-virtual {v4, v7, v15, v5, v6}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v4

    .line 562
    .local v4, "ent":Lcom/android/server/AttributeCache$Entry;
    if-nez v4, :cond_b

    .line 565
    monitor-exit v14
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 567
    :cond_b
    :try_start_12
    iget-object v5, v4, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 569
    .local v5, "windowIsTranslucent":Z
    iget-object v6, v4, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v8, 0x4

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 571
    .local v6, "windowIsFloating":Z
    iget-object v8, v4, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v11, 0xe

    invoke-virtual {v8, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 573
    .local v8, "windowShowWallpaper":Z
    iget-object v11, v4, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v12, 0xc

    invoke-virtual {v11, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 578
    .local v11, "windowDisableStarting":Z
    if-eqz v5, :cond_c

    .line 579
    monitor-exit v14
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 581
    :cond_c
    if-nez v6, :cond_f

    if-eqz v11, :cond_d

    goto :goto_3

    .line 584
    :cond_d
    if-eqz v8, :cond_11

    .line 585
    :try_start_13
    iget-object v12, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v12, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v12}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v12

    if-nez v12, :cond_e

    .line 592
    const/high16 v12, 0x100000

    or-int v12, p8, v12

    .line 599
    .end local p8    # "windowFlags":I
    .local v12, "windowFlags":I
    move v4, v12

    goto :goto_4

    .line 594
    .end local v12    # "windowFlags":I
    .restart local p8    # "windowFlags":I
    :cond_e
    monitor-exit v14
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 582
    :cond_f
    :goto_3
    :try_start_14
    monitor-exit v14
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 614
    .end local v0    # "mainWin":Lcom/android/server/wm/WindowState;
    .end local v1    # "type":I
    .end local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v5    # "windowIsTranslucent":Z
    .end local v6    # "windowIsFloating":Z
    .end local v8    # "windowShowWallpaper":Z
    .end local v11    # "windowDisableStarting":Z
    .end local v13    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :catchall_3
    move-exception v0

    goto :goto_2

    .line 599
    .restart local v0    # "mainWin":Lcom/android/server/wm/WindowState;
    .restart local v1    # "type":I
    .restart local v13    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_10
    move-object/from16 v7, p1

    :cond_11
    move/from16 v4, p8

    .end local p8    # "windowFlags":I
    .local v4, "windowFlags":I
    :goto_4
    :try_start_15
    iget-object v5, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v5, Lcom/android/server/wm/AppWindowToken;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move-object/from16 v6, p9

    :try_start_16
    invoke-virtual {v5, v6}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindow(Landroid/os/IBinder;)Z

    move-result v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    if-eqz v5, :cond_12

    .line 600
    :try_start_17
    monitor-exit v14
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 614
    .end local v0    # "mainWin":Lcom/android/server/wm/WindowState;
    .end local v1    # "type":I
    .end local v13    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :catchall_4
    move-exception v0

    move/from16 v16, v4

    goto/16 :goto_0

    .line 605
    .restart local v0    # "mainWin":Lcom/android/server/wm/WindowState;
    .restart local v1    # "type":I
    .restart local v13    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_12
    const/4 v5, 0x2

    if-eq v1, v5, :cond_13

    .line 606
    :try_start_18
    monitor-exit v14
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 610
    :cond_13
    :try_start_19
    iget-object v5, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    new-instance v8, Lcom/android/server/wm/SplashScreenStartingData;

    iget-object v11, v9, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v10, Lcom/android/server/wm/AppWindowToken;

    .line 612
    invoke-virtual {v10}, Lcom/android/server/wm/AppWindowToken;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v20
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    move-object v10, v8

    move-object v12, v7

    move-object/from16 v21, v13

    move v13, v15

    .end local v13    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .local v21, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    move-object/from16 v22, v14

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, v4

    :try_start_1a
    invoke-direct/range {v10 .. v20}, Lcom/android/server/wm/SplashScreenStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)V

    iput-object v8, v5, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowContainerController;->scheduleAddStartingWindow()V

    .line 614
    .end local v0    # "mainWin":Lcom/android/server/wm/WindowState;
    .end local v1    # "type":I
    .end local v21    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    monitor-exit v22
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 615
    return v2

    .line 614
    :catchall_5
    move-exception v0

    goto :goto_6

    :catchall_6
    move-exception v0

    goto :goto_5

    :catchall_7
    move-exception v0

    move-object/from16 v6, p9

    .end local v4    # "windowFlags":I
    .restart local v16    # "windowFlags":I
    :goto_5
    move-object/from16 v22, v14

    :goto_6
    move/from16 v16, v4

    goto :goto_7

    .end local v16    # "windowFlags":I
    .restart local p8    # "windowFlags":I
    :catchall_8
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v6, p9

    move/from16 v3, p13

    move-object/from16 v22, v14

    move/from16 v16, p8

    .end local p8    # "windowFlags":I
    .restart local v16    # "windowFlags":I
    :goto_7
    :try_start_1b
    monitor-exit v22
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_7
.end method

.method createAppWindow(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;)Lcom/android/server/wm/AppWindowToken;
    .locals 17
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "voiceInteraction"    # Z
    .param p4, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p5, "inputDispatchingTimeoutNanos"    # J
    .param p7, "fullscreen"    # Z
    .param p8, "showForAllUsers"    # Z
    .param p9, "targetSdk"    # I
    .param p10, "orientation"    # I
    .param p11, "rotationAnimationHint"    # I
    .param p12, "configChanges"    # I
    .param p13, "launchTaskBehind"    # Z
    .param p14, "alwaysFocusable"    # Z
    .param p15, "controller"    # Lcom/android/server/wm/AppWindowContainerController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 265
    new-instance v16, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;)V

    return-object v16
.end method

.method public getOrientation()I
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 327
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_0

    .line 328
    const/4 v1, -0x1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 331
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getOrientationIgnoreVisibility()I

    move-result v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 332
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method keyDispatchingTimedOut(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "windowPid"    # I

    .line 843
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/AppWindowContainerListener;->keyDispatchingTimedOut(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyAppResumed(Z)V
    .locals 4
    .param p1, "wasStopped"    # Z

    .line 751
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 752
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_0

    .line 753
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to notify resumed of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 756
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->notifyAppResumed(Z)V

    .line 757
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 758
    return-void

    .line 757
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppStopped()V
    .locals 4

    .line 772
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 773
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_0

    .line 774
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to notify stopped of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 778
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->notifyAppStopped()V

    .line 779
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 780
    return-void

    .line 779
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppStopping()V
    .locals 4

    .line 761
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 762
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_0

    .line 763
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to notify stopping on non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 767
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->detachChildren()V

    .line 768
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 769
    return-void

    .line 768
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyUnknownVisibilityLaunched()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 465
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyLaunched(Lcom/android/server/wm/AppWindowToken;)V

    .line 468
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 469
    return-void

    .line 468
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onGestureFinished()V
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mNaviGestureCallback:Lcom/android/server/wm/AppWindowContainerController$NaviGestureCallback;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mNaviGestureCallback:Lcom/android/server/wm/AppWindowContainerController$NaviGestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$NaviGestureCallback;->onGestureFinished()V

    .line 881
    :cond_0
    return-void
.end method

.method onGestureReady()V
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mNaviGestureCallback:Lcom/android/server/wm/AppWindowContainerController$NaviGestureCallback;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mNaviGestureCallback:Lcom/android/server/wm/AppWindowContainerController$NaviGestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$NaviGestureCallback;->onGestureReady()V

    .line 887
    :cond_0
    return-void
.end method

.method public onNaviGestureFinished()V
    .locals 1

    .line 896
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/DisplayContent;->sNavigestureReady:Z

    .line 897
    return-void
.end method

.method public onNaviGestureReady()V
    .locals 1

    .line 900
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/DisplayContent;->sNavigestureReady:Z

    .line 901
    return-void
.end method

.method public bridge synthetic onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainerController;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public pauseKeyDispatching()V
    .locals 3

    .line 735
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 736
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 739
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 740
    return-void

    .line 739
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerNaviGestureCallback(Lcom/android/server/wm/AppWindowContainerController$NaviGestureCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/wm/AppWindowContainerController$NaviGestureCallback;

    .line 874
    iput-object p1, p0, Lcom/android/server/wm/AppWindowContainerController;->mNaviGestureCallback:Lcom/android/server/wm/AppWindowContainerController$NaviGestureCallback;

    .line 875
    return-void
.end method

.method public registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 4
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 811
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 812
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_0

    .line 813
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to register remote animations with non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 817
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 818
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 819
    return-void

    .line 818
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeContainer()V
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use removeContainer(displayId) instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeContainer(I)V
    .locals 5
    .param p1, "displayId"    # I

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 273
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 274
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_0

    .line 275
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAppToken: Attempted to remove binder token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from non-existing displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 279
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->removeAppToken(Landroid/os/IBinder;)V

    .line 280
    invoke-super {p0}, Lcom/android/server/wm/WindowContainerController;->removeContainer()V

    .line 281
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeStartingWindow()V
    .locals 4

    .line 666
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 667
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 675
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 679
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_3

    .line 680
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 681
    .local v1, "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 682
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 683
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 684
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 685
    if-nez v1, :cond_2

    .line 690
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 697
    :cond_2
    nop

    .line 707
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$-rUlE92hVFfa3_rbq614fss7Bp8;

    invoke-direct {v3, v1}, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$-rUlE92hVFfa3_rbq614fss7Bp8;-><init>(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 715
    .end local v1    # "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 716
    return-void

    .line 697
    :cond_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 715
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeStartingWindowDelay(I)V
    .locals 4
    .param p1, "time"    # I

    .line 723
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/AppWindowContainerController$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AppWindowContainerController$2;-><init>(Lcom/android/server/wm/AppWindowContainerController;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 731
    return-void
.end method

.method public reparent(Lcom/android/server/wm/TaskWindowContainerController;I)V
    .locals 5
    .param p1, "taskController"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "position"    # I

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 293
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_0

    .line 296
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 298
    :cond_0
    :try_start_1
    iget-object v1, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    .line 299
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1

    .line 303
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/AppWindowToken;->reparent(Lcom/android/server/wm/Task;I)V

    .line 304
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 305
    .end local v1    # "task":Lcom/android/server/wm/Task;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 306
    return-void

    .line 300
    .restart local v1    # "task":Lcom/android/server/wm/Task;
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reparent: could not find task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reportStartingWindowDrawn()V
    .locals 3

    .line 822
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 823
    return-void
.end method

.method reportWindowsDrawn()V
    .locals 3

    .line 826
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 827
    return-void
.end method

.method reportWindowsGone()V
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsGone:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 839
    return-void
.end method

.method reportWindowsNotDrawn()V
    .locals 3

    .line 830
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 831
    return-void
.end method

.method reportWindowsVisible()V
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsVisible:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 835
    return-void
.end method

.method public resumeKeyDispatching()V
    .locals 3

    .line 743
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 744
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 747
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 748
    return-void

    .line 747
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method scheduleAddStartingWindow()V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mAddStartingWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mAddStartingWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 645
    :cond_0
    return-void
.end method

.method public screenshotApplications(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "displayId"    # I

    .line 863
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 864
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_0

    .line 865
    return-object v0

    .line 867
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->screenshotDisplayLocked(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 868
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :catch_0
    move-exception v1

    .line 869
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public setDisablePreviewScreenshots(Z)V
    .locals 4
    .param p1, "disable"    # Z

    .line 336
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 337
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_0

    .line 338
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set disable screenshots of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 342
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->setDisablePreviewScreenshots(Z)V

    .line 343
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setOrientation(IILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 5
    .param p1, "requestedOrientation"    # I
    .param p2, "displayId"    # I
    .param p3, "displayConfig"    # Landroid/content/res/Configuration;
    .param p4, "freezeScreenIfNeeded"    # Z

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 311
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 312
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 317
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->setOrientation(I)V

    .line 319
    if-eqz p4, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    nop

    :cond_1
    move-object v1, v2

    .line 320
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p3, v1, p2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 322
    .end local v1    # "binder":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setVisibility(ZZ)V
    .locals 8
    .param p1, "visible"    # Z
    .param p2, "deferHidingClient"    # Z

    .line 347
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 348
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_0

    .line 349
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 354
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 363
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_2

    .line 365
    if-nez p2, :cond_1

    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v3, :cond_1

    .line 368
    iput-boolean p2, v1, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    .line 369
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 371
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 374
    :cond_2
    :try_start_2
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAppVisibility("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " hidden="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " hiddenRequested="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " Callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x6

    .line 377
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 380
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 381
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 382
    xor-int/lit8 v4, p1, 0x1

    iput-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 383
    iput-boolean p2, v1, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    .line 385
    if-nez p1, :cond_4

    .line 389
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    goto :goto_1

    .line 391
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 392
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 396
    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_5
    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 401
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz v4, :cond_7

    .line 402
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 405
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 406
    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 414
    :cond_7
    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 416
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    .line 419
    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 421
    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindowFromHiddenAboveTokenIfNeeded()V

    .line 426
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 427
    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 428
    if-eqz p1, :cond_8

    .line 429
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 430
    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    goto :goto_2

    .line 432
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 433
    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 435
    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_a

    .line 438
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 439
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 440
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_a

    .line 441
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 442
    .local v4, "focusedToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v4, :cond_a

    .line 443
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_9

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TRANSIT_TASK_OPEN_BEHIND,  adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to mOpeningApps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_9
    invoke-virtual {v4, v2}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 447
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 451
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "focusedToken":Lcom/android/server/wm/AppWindowToken;
    :cond_a
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 454
    :cond_b
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    :try_start_3
    iget-boolean v7, v1, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    move-object v2, v1

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 455
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 456
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWillCloseOrEnterPip(Z)V
    .locals 2
    .param p1, "willCloseOrEnterPip"    # Z

    .line 852
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 853
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_0

    .line 854
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 857
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->setWillCloseOrEnterPip(Z)V

    .line 858
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 859
    return-void

    .line 858
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startFreezingScreen(I)V
    .locals 4
    .param p1, "configChanges"    # I

    .line 783
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 784
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_0

    .line 785
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 790
    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 792
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 795
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V

    .line 796
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 797
    return-void

    .line 796
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public stopFreezingScreen(Z)V
    .locals 3
    .param p1, "force"    # Z

    .line 800
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 801
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_0

    .line 802
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 806
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 807
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 808
    return-void

    .line 807
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWindowContainerController{ token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
