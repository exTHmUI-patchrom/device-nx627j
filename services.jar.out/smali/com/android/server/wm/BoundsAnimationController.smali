.class public Lcom/android/server/wm/BoundsAnimationController;
.super Ljava/lang/Object;
.source "BoundsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;,
        Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;,
        Lcom/android/server/wm/BoundsAnimationController$SchedulePipModeChangedState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ANIMATION_SLOW_DOWN_FACTOR:I = 0x1

.field private static final DEBUG_LOCAL:Z = false

.field private static final DEFAULT_TRANSITION_DURATION:I = 0x1a9

.field public static final NO_PIP_MODE_CHANGED_CALLBACKS:I = 0x0

.field public static final SCHEDULE_PIP_MODE_CHANGED_ON_END:I = 0x2

.field public static final SCHEDULE_PIP_MODE_CHANGED_ON_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WAIT_FOR_DRAW_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mAnimationHandler:Landroid/animation/AnimationHandler;

.field private final mAppTransition:Lcom/android/server/wm/AppTransition;

.field private final mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

.field private mChoreographer:Landroid/view/Choreographer;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFinishAnimationAfterTransition:Z

.field private final mHandler:Landroid/os/Handler;

.field private mRunningAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/BoundsAnimationTarget;",
            "Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transition"    # Lcom/android/server/wm/AppTransition;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "animationHandler"    # Landroid/animation/AnimationHandler;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 113
    new-instance v0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    .line 123
    iput-object p3, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    .line 124
    iput-object p2, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 126
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 128
    iput-object p4, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 129
    if-eqz p4, :cond_0

    .line 131
    new-instance v0, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$dXxeGqbKxeDo9iKFwG9az5rUo3U;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$dXxeGqbKxeDo9iKFwG9az5rUo3U;-><init>(Lcom/android/server/wm/BoundsAnimationController;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 133
    new-instance v0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mChoreographer:Landroid/view/Choreographer;

    invoke-direct {v0, v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>(Landroid/view/Choreographer;)V

    invoke-virtual {p4, v0}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    .line 135
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/BoundsAnimationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wm/BoundsAnimationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/BoundsAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController;->updateBooster()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/BoundsAnimationController;)Lcom/android/server/wm/AppTransition;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/BoundsAnimationController;)Landroid/animation/AnimationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method public static synthetic lambda$MoVv_WhxoMrTVo-xz1qu2FMcYrM(Lcom/android/server/wm/BoundsAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController;->resume()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/BoundsAnimationController;)V
    .locals 1

    .line 131
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private resume()V
    .locals 2

    .line 479
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 481
    .local v1, "b":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    invoke-virtual {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->resume()V

    .line 479
    .end local v1    # "b":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateBooster()V
    .locals 2

    .line 486
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 487
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 486
    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setBoundsAnimationRunning(Z)V

    .line 488
    return-void
.end method


# virtual methods
.method public animateBounds(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .locals 0
    .param p1, "target"    # Lcom/android/server/wm/BoundsAnimationTarget;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "animationDuration"    # I
    .param p5, "schedulePipModeChangedState"    # I
    .param p6, "moveFromFullscreen"    # Z
    .param p7, "moveToFullscreen"    # Z

    .line 395
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/wm/BoundsAnimationController;->animateBoundsImpl(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 397
    return-void
.end method

.method animateBoundsImpl(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    .locals 21
    .param p1, "target"    # Lcom/android/server/wm/BoundsAnimationTarget;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "animationDuration"    # I
    .param p5, "schedulePipModeChangedState"    # I
    .param p6, "moveFromFullscreen"    # Z
    .param p7, "moveToFullscreen"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v0, p5

    .line 403
    iget-object v3, v9, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 404
    .local v11, "existing":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    const/4 v12, 0x1

    if-eqz v11, :cond_0

    move v3, v12

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v13, v3

    .line 405
    .local v13, "replacing":Z
    const/4 v3, 0x0

    .line 412
    .local v3, "prevSchedulePipModeChangedState":I
    const/4 v14, 0x2

    if-eqz v13, :cond_9

    .line 413
    move-object/from16 v15, p3

    invoke-virtual {v11, v15}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->isAnimatingTo(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p7, :cond_1

    invoke-static {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$700(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    if-eqz p6, :cond_2

    .line 414
    invoke-static {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$800(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 420
    :cond_2
    return-object v11

    .line 424
    :cond_3
    invoke-static {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$900(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v3

    .line 427
    invoke-static {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$900(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v4

    if-ne v4, v12, :cond_5

    .line 428
    if-ne v0, v12, :cond_4

    goto :goto_2

    .line 434
    :cond_4
    const/4 v0, 0x2

    .end local p5    # "schedulePipModeChangedState":I
    .local v0, "schedulePipModeChangedState":I
    :goto_1
    goto :goto_2

    .line 436
    .end local v0    # "schedulePipModeChangedState":I
    .restart local p5    # "schedulePipModeChangedState":I
    :cond_5
    invoke-static {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$900(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v4

    if-ne v4, v14, :cond_7

    .line 437
    if-ne v0, v12, :cond_6

    goto :goto_2

    .line 443
    :cond_6
    const/4 v0, 0x2

    goto :goto_1

    .line 449
    .end local p5    # "schedulePipModeChangedState":I
    .restart local v0    # "schedulePipModeChangedState":I
    :cond_7
    :goto_2
    if-nez p6, :cond_8

    if-nez p7, :cond_8

    .line 450
    invoke-static {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$700(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v2

    .line 451
    .end local p7    # "moveToFullscreen":Z
    .local v2, "moveToFullscreen":Z
    invoke-static {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$800(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v1

    .end local p6    # "moveFromFullscreen":Z
    .local v1, "moveFromFullscreen":Z
    goto :goto_3

    .line 455
    .end local v1    # "moveFromFullscreen":Z
    .end local v2    # "moveToFullscreen":Z
    .restart local p6    # "moveFromFullscreen":Z
    .restart local p7    # "moveToFullscreen":Z
    :cond_8
    move/from16 v1, p6

    move/from16 v2, p7

    .end local p6    # "moveFromFullscreen":Z
    .end local p7    # "moveToFullscreen":Z
    .restart local v1    # "moveFromFullscreen":Z
    .restart local v2    # "moveToFullscreen":Z
    :goto_3
    invoke-virtual {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancel()V

    .line 457
    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v19, v2

    goto :goto_4

    .end local v0    # "schedulePipModeChangedState":I
    .end local v1    # "moveFromFullscreen":Z
    .end local v2    # "moveToFullscreen":Z
    .restart local p5    # "schedulePipModeChangedState":I
    .restart local p6    # "moveFromFullscreen":Z
    .restart local p7    # "moveToFullscreen":Z
    :cond_9
    move-object/from16 v15, p3

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v16, v0

    .end local v3    # "prevSchedulePipModeChangedState":I
    .end local p5    # "schedulePipModeChangedState":I
    .end local p6    # "moveFromFullscreen":Z
    .end local p7    # "moveToFullscreen":Z
    .local v16, "schedulePipModeChangedState":I
    .local v17, "prevSchedulePipModeChangedState":I
    .local v18, "moveFromFullscreen":Z
    .local v19, "moveToFullscreen":Z
    :goto_4
    move/from16 v17, v3

    new-instance v20, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    move-object/from16 v0, v20

    move-object v1, v9

    move-object v2, v10

    move-object/from16 v3, p2

    move-object v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    .line 460
    .local v0, "animator":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    iget-object v1, v9, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    new-array v1, v14, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setFloatValues([F)V

    .line 462
    const/4 v1, -0x1

    move/from16 v2, p4

    if-eq v2, v1, :cond_a

    .line 463
    move v1, v2

    goto :goto_5

    :cond_a
    const/16 v1, 0x1a9

    :goto_5
    mul-int/2addr v1, v12

    int-to-long v3, v1

    .line 462
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 464
    iget-object v1, v9, Lcom/android/server/wm/BoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 465
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->start()V

    .line 466
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onAllWindowsDrawn()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$MoVv_WhxoMrTVo-xz1qu2FMcYrM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$MoVv_WhxoMrTVo-xz1qu2FMcYrM;-><init>(Lcom/android/server/wm/BoundsAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 476
    return-void
.end method
