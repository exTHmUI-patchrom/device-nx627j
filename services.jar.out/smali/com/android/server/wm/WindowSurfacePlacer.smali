.class Lcom/android/server/wm/WindowSurfacePlacer;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;
    }
.end annotation


# static fields
.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x10

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDeferDepth:I

.field private mInLayout:Z

.field private mLastCloseApp:Lcom/android/server/wm/AppWindowToken;

.field private mLayoutRepeatCount:I

.field private final mPerformSurfacePlacement:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempTransitionReasons:Landroid/util/SparseIntArray;

.field private final mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

.field private mTraversalScheduled:Z

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 104
    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 110
    new-instance v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;-><init>(Lcom/android/server/wm/WindowSurfacePlacer$1;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    .line 112
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 546
    iput-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastCloseApp:Lcom/android/server/wm/AppWindowToken;

    .line 117
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 119
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$4Hbamt-LFcbu8AoZBoOZN_LveKQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$4Hbamt-LFcbu8AoZBoOZN_LveKQ;-><init>(Lcom/android/server/wm/WindowSurfacePlacer;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    .line 124
    return-void
.end method

.method private canBeWallpaperTarget(Landroid/util/ArraySet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 823
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 824
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 825
    return v1

    .line 823
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 828
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkLauncherClosingApps()V
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastCloseApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastCloseApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isAppAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastCloseApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn.nubia.launcher/com.android.launcher3.Launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return launcher, need cancel last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastCloseApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastCloseApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 555
    :cond_0
    return-void
.end method

.method private collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 463
    .local p1, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 464
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 465
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 467
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 468
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 467
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 470
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private containsVoiceInteraction(Landroid/util/ArraySet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 493
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 494
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    if-eqz v2, :cond_0

    .line 495
    return v1

    .line 493
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 498
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/AppWindowToken;
    .locals 4
    .param p1, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 442
    .local p2, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$AnzDJL6vBWwhbuz7sYsAfUAzZko;

    invoke-direct {v2, p1, p2}, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$AnzDJL6vBWwhbuz7sYsAfUAzZko;-><init>(ILandroid/util/ArraySet;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 445
    .local v0, "result":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 446
    return-object v0

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    sget-object v3, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$wCevQN6hMxiB97Eay8ibpi2Xaxo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$wCevQN6hMxiB97Eay8ibpi2Xaxo;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_1

    .line 451
    return-object v0

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    sget-object v3, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$tJcqA51ohv9DQjcvHOarwInr01s;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$tJcqA51ohv9DQjcvHOarwInr01s;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    return-object v1
.end method

.method private static getAnimLp(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManager$LayoutParams;
    .locals 2
    .param p0, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 402
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 403
    .local v1, "mainWindow":Lcom/android/server/wm/WindowState;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    nop

    :cond_1
    return-object v0
.end method

.method private getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;
    .locals 5
    .param p2, "ignoreHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;Z)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 840
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/high16 v0, -0x80000000

    .line 841
    .local v0, "topPrefixOrderIndex":I
    const/4 v1, 0x0

    .line 842
    .local v1, "topApp":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 843
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 844
    .local v3, "app":Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 845
    goto :goto_1

    .line 847
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v4

    .line 848
    .local v4, "prefixOrderIndex":I
    if-le v4, v0, :cond_1

    .line 849
    move v0, v4

    .line 850
    move-object v1, v3

    .line 842
    .end local v3    # "app":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "prefixOrderIndex":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 853
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V
    .locals 10
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z
    .param p4, "layerAndToken"    # Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 573
    .local v0, "appsCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 574
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 576
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iput-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastCloseApp:Lcom/android/server/wm/AppWindowToken;

    .line 579
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_0

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Now closing app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    move-object v5, p2

    move v7, p1

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 583
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 587
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 588
    iput-boolean v1, v3, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 591
    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v4, :cond_1

    .line 592
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 593
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    .line 596
    :cond_1
    if-eqz p2, :cond_3

    .line 597
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v4

    .line 598
    .local v4, "layer":I
    iget-object v5, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_2

    iget v5, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    if-le v4, v5, :cond_3

    .line 599
    :cond_2
    iput-object v3, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 600
    iput v4, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    .line 603
    .end local v4    # "layer":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 604
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation()V

    .line 573
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 607
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method private handleNonAppWindowsInTransition(II)V
    .locals 5
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .line 610
    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 611
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_1

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_1

    .line 613
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v3

    .line 615
    .local v3, "anim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_1

    .line 616
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 617
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    .line 621
    .end local v3    # "anim":Landroid/view/animation/Animation;
    :cond_1
    const/16 v3, 0x15

    if-eq p1, v0, :cond_2

    if-ne p1, v3, :cond_5

    .line 623
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-ne p1, v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZ)V

    .line 627
    :cond_5
    return-void
.end method

.method private handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;Z)Lcom/android/server/wm/AppWindowToken;
    .locals 12
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    const/high16 v1, -0x80000000

    .line 505
    .local v1, "topOpeningLayer":I
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 506
    .local v2, "appsCount":I
    const/4 v3, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v3

    .local v0, "i":I
    .local v1, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .local v4, "topOpeningLayer":I
    :goto_0
    if-ge v0, v2, :cond_9

    .line 507
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 508
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_0

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Now opening app"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v6, v5

    move-object v7, p2

    move v9, p1

    move v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v6

    if-nez v6, :cond_1

    .line 514
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v7, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 517
    iput-boolean v3, v5, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 518
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v6, :cond_2

    const-string v6, "WindowManager"

    const-string v7, ">>> OPEN TRANSACTION handleAppTransitionReadyLocked()"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 522
    :try_start_0
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v7, "handleAppTransitionReadyLocked"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 525
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v6, :cond_3

    const-string v6, "WindowManager"

    const-string v7, "<<< CLOSE TRANSACTION handleAppTransitionReadyLocked()"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_3
    if-eqz p2, :cond_5

    .line 530
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v6

    .line 531
    .local v6, "layer":I
    if-eqz v1, :cond_4

    if-le v6, v4, :cond_5

    .line 532
    :cond_4
    move-object v1, v5

    .line 533
    move v4, v6

    .line 536
    .end local v6    # "layer":I
    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 537
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation()V

    goto :goto_1

    .line 538
    :cond_6
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionOpenCrossProfileApps()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 539
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->attachCrossProfileAppsThumbnailAnimation()V

    .line 506
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 524
    .restart local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v3

    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v7, "handleAppTransitionReadyLocked"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 525
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v6, :cond_8

    const-string v6, "WindowManager"

    const-string v7, "<<< CLOSE TRANSACTION handleAppTransitionReadyLocked()"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    throw v3

    .line 542
    .end local v0    # "i":I
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_9
    return-object v1
.end method

.method private hasClosingApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 559
    .local v0, "appsCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 560
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 562
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 563
    const/4 v1, 0x1

    return v1

    .line 559
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$1(ILandroid/util/ArraySet;Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p0, "transit"    # I
    .param p1, "activityTypes"    # Landroid/util/ArraySet;
    .param p2, "w"    # Lcom/android/server/wm/AppWindowToken;

    .line 443
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$2(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/AppWindowToken;

    .line 449
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$3(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/AppWindowToken;

    .line 454
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/WindowSurfacePlacer;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 475
    .local p1, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p3, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 476
    .local v0, "array1count":I
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 477
    .local v1, "count":I
    const/high16 v2, -0x80000000

    .line 478
    .local v2, "bestPrefixOrderIndex":I
    const/4 v3, 0x0

    .line 479
    .local v3, "bestToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 480
    if-ge v4, v0, :cond_0

    .line 481
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    goto :goto_1

    .line 482
    :cond_0
    sub-int v5, v4, v0

    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 483
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v6

    .line 484
    .local v6, "prefixOrderIndex":I
    invoke-interface {p3, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-le v6, v2, :cond_1

    .line 485
    move v2, v6

    .line 486
    move-object v3, v5

    .line 479
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v6    # "prefixOrderIndex":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 489
    .end local v4    # "i":I
    :cond_2
    return-object v3
.end method

.method private maybeUpdateTransitToWallpaper(IZZ)I
    .locals 10
    .param p1, "transit"    # I
    .param p2, "openingAppHasWallpaper"    # Z
    .param p3, "closingAppHasWallpaper"    # Z

    .line 709
    if-eqz p1, :cond_8

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_8

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 716
    .local v0, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 717
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 718
    .local v1, "oldWallpaper":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 719
    .local v2, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    .line 720
    .local v3, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    .line 722
    .local v4, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    .line 725
    .local v5, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v6

    .line 726
    .local v6, "openingCanBeWallpaperTarget":Z
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v7, :cond_2

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New wallpaper target="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", oldWallpaper="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", openingApps="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", closingApps="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_2
    if-eqz v6, :cond_3

    const/16 v7, 0x14

    if-ne p1, v7, :cond_3

    .line 733
    const/16 p1, 0x15

    .line 734
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v7, :cond_7

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New transit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 734
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 739
    :cond_3
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 740
    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    .line 741
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v7, :cond_4

    const-string v7, "WindowManager"

    const-string v8, "Wallpaper animation!"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_4
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 751
    :pswitch_0
    const/16 p1, 0xf

    goto :goto_1

    .line 746
    :pswitch_1
    const/16 p1, 0xe

    .line 747
    nop

    .line 754
    :goto_1
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v7, :cond_7

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New transit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 754
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 756
    :cond_5
    if-eqz v1, :cond_6

    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 757
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 758
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v5, v7, :cond_6

    .line 761
    const/16 p1, 0xc

    .line 762
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v7, :cond_7

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New transit away from wallpaper: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 762
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 764
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 765
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v4, v7, :cond_7

    const/16 v7, 0x19

    if-eq p1, v7, :cond_7

    .line 770
    const/16 p1, 0xd

    .line 771
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v7, :cond_7

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New transit into wallpaper: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 771
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_7
    :goto_2
    return p1

    .line 711
    .end local v0    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v1    # "oldWallpaper":Lcom/android/server/wm/WindowState;
    .end local v2    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v3    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v4    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .end local v5    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v6    # "openingCanBeWallpaperTarget":Z
    :cond_8
    :goto_3
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)V
    .locals 3
    .param p1, "animLpToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppWindowToken;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 412
    .local p3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_0

    .line 414
    return-void

    .line 416
    :cond_0
    if-nez p1, :cond_1

    .line 417
    return-void

    .line 420
    :cond_1
    const/16 v0, 0xd

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isThreeFingerSwipe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    const-string v0, "WindowManager"

    const-string/jumbo v1, "three finger swipe animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void

    .line 425
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    .line 426
    .local v0, "definition":Landroid/view/RemoteAnimationDefinition;
    if-eqz v0, :cond_3

    .line 427
    invoke-virtual {v0, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    .line 428
    .local v1, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v1, :cond_3

    .line 429
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 432
    .end local v1    # "adapter":Landroid/view/RemoteAnimationAdapter;
    :cond_3
    return-void
.end method

.method private performSurfacePlacementLoop()V
    .locals 9

    .line 166
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 171
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v0, :cond_1

    .line 179
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v0, :cond_2

    .line 184
    return-void

    .line 187
    :cond_2
    const-string/jumbo v0, "wmLayout"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 190
    const/4 v3, 0x0

    .line 191
    .local v3, "recoveringMemory":Z
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 192
    const/4 v4, 0x1

    .line 194
    .end local v3    # "recoveringMemory":Z
    .local v4, "recoveringMemory":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 195
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 196
    .local v3, "ws":Lcom/android/server/wm/WindowState;
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Force removing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 198
    .end local v3    # "ws":Lcom/android/server/wm/WindowState;
    goto :goto_0

    .line 199
    :cond_3
    const-string v3, "WindowManager"

    const-string v6, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v6, v3

    .line 201
    .local v6, "tmp":Ljava/lang/Object;
    monitor-enter v6

    .line 203
    const-wide/16 v7, 0xfa

    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    goto :goto_1

    .line 206
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 204
    :catch_0
    move-exception v3

    .line 206
    :goto_1
    :try_start_1
    monitor-exit v6

    .line 210
    move v3, v4

    goto :goto_3

    .line 206
    :goto_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 210
    .end local v4    # "recoveringMemory":Z
    .end local v6    # "tmp":Ljava/lang/Object;
    .local v3, "recoveringMemory":Z
    :cond_4
    :goto_3
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement(Z)V

    .line 212
    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 214
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 215
    iget v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v0, 0x6

    if-ge v4, v0, :cond_5

    .line 216
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_4

    .line 218
    :cond_5
    const-string v0, "WindowManager"

    const-string v4, "Performed 6 layouts in a row. Skipping"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    goto :goto_4

    .line 222
    :cond_6
    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    .line 225
    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 232
    :cond_7
    goto :goto_5

    .line 229
    :catch_1
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 231
    const-string v4, "WindowManager"

    const-string v5, "Unhandled exception while laying out windows"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 235
    return-void
.end method

.method private processApplicationsAnimatingInPlace(I)V
    .locals 5
    .param p1, "transit"    # I

    .line 857
    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 860
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 861
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 862
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_0

    .line 863
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now animating app in place "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 865
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v3}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    .line 866
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 867
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 870
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return-void
.end method

.method private transitionGoodToGo(ILandroid/util/SparseIntArray;)Z
    .locals 8
    .param p1, "appsCount"    # I
    .param p2, "outReasons"    # Landroid/util/SparseIntArray;

    .line 630
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " opening apps (frozen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 633
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 635
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 638
    .local v0, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    .line 639
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_10

    .line 646
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 647
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->rotationNeedsUpdateLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 648
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_1

    .line 649
    const-string v2, "WindowManager"

    const-string v3, "Delaying app transition for screen rotation animation to finish"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_1
    return v1

    .line 653
    :cond_2
    move v2, v1

    .line 653
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_8

    .line 654
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 655
    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_3

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check opening app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": allDrawn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " startingDisplayed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v4, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " startingMoved="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v4, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isRelaunching()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " startingWindow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 655
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_3
    iget-boolean v5, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v1

    .line 665
    .local v5, "allDrawn":Z
    :goto_1
    if-nez v5, :cond_5

    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v6, :cond_5

    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v6, :cond_5

    .line 666
    return v1

    .line 668
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v6

    .line 669
    .local v6, "windowingMode":I
    if-eqz v5, :cond_6

    .line 670
    const/4 v7, 0x2

    invoke-virtual {p2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 672
    :cond_6
    nop

    .line 673
    iget-object v7, v4, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    instance-of v7, v7, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v7, :cond_7

    .line 674
    nop

    .line 672
    move v7, v3

    goto :goto_2

    .line 675
    :cond_7
    const/4 v7, 0x4

    .line 672
    :goto_2
    invoke-virtual {p2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 653
    .end local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v5    # "allDrawn":Z
    .end local v6    # "windowingMode":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 680
    .end local v2    # "i":I
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 681
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_9

    const-string v2, "WindowManager"

    const-string/jumbo v3, "isFetchingAppTransitionSpecs=true"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_9
    return v1

    .line 685
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v2

    if-nez v2, :cond_c

    .line 686
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_b

    .line 687
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknownApps is not empty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 688
    invoke-virtual {v4}, Lcom/android/server/wm/UnknownAppVisibilityController;->getDebugMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 687
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_b
    return v1

    .line 694
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 695
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    goto :goto_5

    :cond_e
    :goto_4
    move v2, v3

    .line 696
    .local v2, "wallpaperReady":Z
    :goto_5
    if-eqz v2, :cond_f

    .line 697
    return v3

    .line 699
    :cond_f
    return v1

    .line 701
    .end local v2    # "wallpaperReady":Z
    :cond_10
    return v3
.end method


# virtual methods
.method continueLayout()V
    .locals 1

    .line 137
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 138
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-gtz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 141
    :cond_0
    return-void
.end method

.method debugLayoutRepeats(Ljava/lang/String;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "pendingLayoutChanges"    # I

    .line 238
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 239
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layouts looping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPendingLayoutChanges = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    return-void
.end method

.method deferLayout()V
    .locals 1

    .line 130
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 131
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTraversalScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mHoldScreenWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mObscuringWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method handleAppTransitionReadyLocked()I
    .locals 25

    .line 252
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 253
    .local v2, "appsCount":I
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->transitionGoodToGo(ILandroid/util/SparseIntArray;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 254
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v4, "handleAppTransitionReadyLocked ->transitionGoodToGo, return!"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return v3

    .line 257
    :cond_1
    const-string v0, "AppTransitionReady"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 260
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getScreenSwitchManager()Lnubia/os/screenswitch/ScreenSwitchInternal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getScreenSwitchManager()Lnubia/os/screenswitch/ScreenSwitchInternal;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/os/screenswitch/ScreenSwitchInternal;->noteAllDrawn()V

    .line 264
    :cond_2
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowManager"

    const-string v6, "**** GOOD TO GO"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_3
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 266
    .local v0, "transit":I
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v6, :cond_4

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 267
    const/4 v0, -0x1

    .line 269
    :cond_4
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v6, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 270
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 272
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 274
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 276
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v7, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v3, v7, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 279
    move v7, v3

    .line 279
    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_5

    .line 280
    iget-object v8, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 285
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->clearAnimatingFlags()V

    .line 279
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 291
    :cond_5
    iget-object v8, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v9, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v8, v6, v9}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindowsForAppTransitionIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/util/ArraySet;)V

    .line 296
    iget-object v8, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v8}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_1

    :cond_6
    move v8, v3

    .line 297
    .local v8, "hasWallpaperTarget":Z
    :goto_1
    iget-object v10, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v1, v10}, Lcom/android/server/wm/WindowSurfacePlacer;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v8, :cond_7

    const/4 v10, 0x1

    goto :goto_2

    :cond_7
    move v10, v3

    .line 299
    .local v10, "openingAppHasWallpaper":Z
    :goto_2
    iget-object v11, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {v1, v11}, Lcom/android/server/wm/WindowSurfacePlacer;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v8, :cond_8

    const/4 v11, 0x1

    goto :goto_3

    :cond_8
    move v11, v3

    .line 302
    .local v11, "closingAppHasWallpaper":Z
    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->maybeUpdateTransitToTranslucentAnim(I)I

    move-result v0

    .line 303
    invoke-direct {v1, v0, v10, v11}, Lcom/android/server/wm/WindowSurfacePlacer;->maybeUpdateTransitToWallpaper(IZZ)I

    move-result v12

    .line 310
    .end local v0    # "transit":I
    .local v12, "transit":I
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v13, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {v1, v0, v13}, Lcom/android/server/wm/WindowSurfacePlacer;->collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v13

    .line 312
    .local v13, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_9

    .line 313
    invoke-direct {v1, v12, v13}, Lcom/android/server/wm/WindowSurfacePlacer;->findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    goto :goto_4

    .line 314
    :cond_9
    move-object v0, v14

    :goto_4
    move-object v15, v0

    .line 316
    .local v15, "animLpToken":Lcom/android/server/wm/AppWindowToken;
    invoke-static {v15}, Lcom/android/server/wm/WindowSurfacePlacer;->getAnimLp(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 317
    .local v4, "animLp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {v1, v15, v12, v13}, Lcom/android/server/wm/WindowSurfacePlacer;->overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)V

    .line 319
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 320
    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move v0, v3

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v0, 0x1

    :goto_6
    move v5, v0

    .line 323
    .local v5, "voiceInteraction":Z
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 325
    :try_start_0
    invoke-direct {v1, v12}, Lcom/android/server/wm/WindowSurfacePlacer;->processApplicationsAnimatingInPlace(I)V

    .line 327
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v1, v0, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 328
    .local v0, "top":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_c

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "cn.nubia.launcher/com.android.launcher3.Launcher"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowSurfacePlacer;->checkLauncherClosingApps()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 359
    .end local v0    # "top":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v0

    move/from16 v23, v2

    .line 359
    .end local v2    # "appsCount":I
    .end local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .local v23, "appsCount":I
    .local v24, "animLp":Landroid/view/WindowManager$LayoutParams;
    :goto_7
    move-object/from16 v24, v4

    goto/16 :goto_a

    .line 334
    .end local v23    # "appsCount":I
    .end local v24    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .restart local v0    # "top":Lcom/android/server/wm/AppWindowToken;
    .restart local v2    # "appsCount":I
    .restart local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    :cond_c
    :goto_8
    :try_start_2
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iput-object v14, v3, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 335
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    invoke-direct {v1, v12, v4, v5, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    .line 336
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iget-object v3, v3, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 337
    .local v3, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {v1, v12, v4, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v9

    .line 341
    .local v9, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    const-string v14, "android.server.am/.WallpaperActivity"

    invoke-direct {v1, v14}, Lcom/android/server/wm/WindowSurfacePlacer;->hasClosingApp(Ljava/lang/String;)Z

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v14, :cond_d

    .line 342
    const/16 v12, 0x15

    .line 343
    :try_start_3
    const-string v14, "WindowManager"

    move-object/from16 v22, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 343
    .end local v0    # "top":Lcom/android/server/wm/AppWindowToken;
    .local v22, "top":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v23, v2

    :try_start_4
    const-string/jumbo v2, "quicknav cts "

    .line 343
    .end local v2    # "appsCount":I
    .restart local v23    # "appsCount":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    .line 359
    .end local v3    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v9    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .end local v22    # "top":Lcom/android/server/wm/AppWindowToken;
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 359
    .end local v23    # "appsCount":I
    .restart local v2    # "appsCount":I
    :catchall_2
    move-exception v0

    move/from16 v23, v2

    move-object/from16 v24, v4

    .line 359
    .end local v2    # "appsCount":I
    .restart local v23    # "appsCount":I
    goto/16 :goto_a

    .line 344
    .end local v23    # "appsCount":I
    .restart local v0    # "top":Lcom/android/server/wm/AppWindowToken;
    .restart local v2    # "appsCount":I
    .restart local v3    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .restart local v9    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    :cond_d
    move-object/from16 v22, v0

    move/from16 v23, v2

    .line 344
    .end local v0    # "top":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "appsCount":I
    .restart local v22    # "top":Lcom/android/server/wm/AppWindowToken;
    .restart local v23    # "appsCount":I
    :try_start_5
    const-string v0, "android.server.am/.TestActivity"

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->hasClosingApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_e

    const/16 v0, 0x17

    if-eq v12, v0, :cond_e

    .line 346
    const/16 v12, 0x14

    .line 347
    :try_start_6
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "quicknav cts test "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 350
    :cond_e
    :goto_9
    :try_start_7
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, v12, v9, v3}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 352
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v0

    .line 353
    .local v0, "flags":I
    iget-object v2, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v14, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v24, v4

    :try_start_8
    iget-object v4, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 353
    .end local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .restart local v24    # "animLp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    move-object/from16 v16, v2

    move/from16 v17, v12

    move-object/from16 v18, v9

    move-object/from16 v19, v3

    move-object/from16 v20, v14

    move-object/from16 v21, v4

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Landroid/util/ArraySet;Landroid/util/ArraySet;)I

    move-result v2

    .line 355
    .local v2, "layoutRedo":I
    invoke-direct {v1, v12, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->handleNonAppWindowsInTransition(II)V

    .line 356
    iget-object v4, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 357
    iget-object v4, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 359
    .end local v0    # "flags":I
    .end local v3    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v9    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .end local v22    # "top":Lcom/android/server/wm/AppWindowToken;
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 360
    nop

    .line 359
    nop

    .line 362
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotController;->onTransitionStarting()V

    .line 364
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 365
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 366
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 370
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 373
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 374
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 375
    iget-object v4, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x2

    invoke-virtual {v4, v9, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 377
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 380
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getNaviGesStubController()Lcom/android/server/wm/NaviGesStubController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/NaviGesStubController;->disableAppTransitionSkipped()V

    .line 383
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x2f

    iget-object v14, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 384
    invoke-virtual {v14}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v14

    .line 383
    invoke-virtual {v3, v4, v14}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 384
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 386
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 395
    const/4 v3, 0x1

    invoke-static {v3}, Lnubia/os/ApplicationManager$Trigger;->noteAppTransitionAnimation(Z)V

    .line 398
    or-int/lit8 v3, v2, 0x1

    or-int/2addr v3, v9

    return v3

    .line 359
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "layoutRedo":I
    :catchall_3
    move-exception v0

    goto :goto_a

    .line 359
    .end local v24    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    :catchall_4
    move-exception v0

    move-object/from16 v24, v4

    .line 359
    .end local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .restart local v24    # "animLp":Landroid/view/WindowManager$LayoutParams;
    goto :goto_a

    .line 359
    .end local v23    # "appsCount":I
    .end local v24    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .local v2, "appsCount":I
    .restart local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    :catchall_5
    move-exception v0

    move/from16 v23, v2

    move-object/from16 v24, v4

    .line 359
    .end local v2    # "appsCount":I
    .end local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .restart local v23    # "appsCount":I
    .restart local v24    # "animLp":Landroid/view/WindowManager$LayoutParams;
    :goto_a
    iget-object v2, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    throw v0
.end method

.method isInLayout()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    return v0
.end method

.method isLayoutDeferred()Z
    .locals 1

    .line 144
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method maybeUpdateTransitToTranslucentAnim(I)I
    .locals 7
    .param p1, "transit"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 792
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 793
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 794
    .local v0, "taskOrActivity":Z
    :goto_1
    const/4 v2, 0x1

    .line 795
    .local v2, "allOpeningVisible":Z
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 796
    .local v3, "allTranslucentOpeningApps":Z
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_3

    .line 797
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 798
    .local v5, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v6

    if-nez v6, :cond_2

    .line 799
    const/4 v2, 0x0

    .line 800
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 801
    const/4 v3, 0x0

    .line 796
    .end local v5    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 805
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    .line 806
    .local v4, "allTranslucentClosingApps":Z
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v1

    .local v5, "i":I
    :goto_3
    move v1, v5

    .end local v5    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_5

    .line 807
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 808
    const/4 v4, 0x0

    .line 809
    goto :goto_4

    .line 806
    :cond_4
    add-int/lit8 v5, v1, -0x1

    .end local v1    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    .line 813
    .end local v5    # "i":I
    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    .line 814
    const/16 v1, 0x19

    return v1

    .line 816
    :cond_6
    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 817
    const/16 v1, 0x18

    return v1

    .line 819
    :cond_7
    return p1
.end method

.method final performSurfacePlacement()V
    .locals 1

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 149
    return-void
.end method

.method final performSurfacePlacement(Z)V
    .locals 4
    .param p1, "force"    # Z

    .line 152
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x6

    .line 157
    .local v0, "loopCount":I
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 158
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    .line 159
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    add-int/lit8 v0, v0, -0x1

    .line 161
    iget-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v2, :cond_2

    if-gtz v0, :cond_1

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v2, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 163
    return-void
.end method

.method requestTraversal()V
    .locals 2

    .line 873
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-nez v0, :cond_0

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 875
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 877
    :cond_0
    return-void
.end method
