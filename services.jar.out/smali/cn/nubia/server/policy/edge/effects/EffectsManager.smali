.class public Lcn/nubia/server/policy/edge/effects/EffectsManager;
.super Ljava/lang/Object;
.source "EffectsManager.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;


# instance fields
.field private final mCheckedThread:Ljava/lang/Thread;

.field private mOutsideListner:Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;

.field private mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

.field private mStateMachine:Lcn/nubia/server/policy/edge/effects/state/StateVerifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;Landroid/os/HandlerThread;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;
    .param p3, "changeListener"    # Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;
    .param p4, "thread"    # Landroid/os/HandlerThread;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p4, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mCheckedThread:Ljava/lang/Thread;

    .line 33
    :try_start_0
    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 34
    .local v0, "looper":Landroid/os/Looper;
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mOutsideListner:Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;

    .line 35
    new-instance v1, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/GuardHandler;

    invoke-direct {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/GuardHandler;-><init>(Landroid/os/Looper;)V

    .line 36
    .local v1, "handler":Lcn/nubia/server/policy/edge/effectsutil/safeguarder/GuardHandler;
    new-instance v2, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-direct {v2, v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;-><init>(Landroid/os/Handler;Landroid/os/Looper;)V

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 37
    new-instance v2, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-direct {v2, p1, p0, v3}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;-><init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mStateMachine:Lcn/nubia/server/policy/edge/effects/state/StateVerifier;

    .line 38
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mStateMachine:Lcn/nubia/server/policy/edge/effects/state/StateVerifier;

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/GuardHandler;->setExceptionListner(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/ExceptionListener;)V

    .line 40
    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mCheckedThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;-><init>(J)V

    .line 41
    .local v2, "textureManager":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;
    new-instance v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-direct {v3, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;-><init>(Landroid/content/Context;)V

    .line 42
    .local v3, "animationController":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    invoke-virtual {v3, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setTextureManagement(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;)V

    .line 43
    invoke-virtual {v3, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setSystemGestureService(Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V

    .line 44
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V

    .line 46
    new-instance v4, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    invoke-direct {v4, p1}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;-><init>(Landroid/content/Context;)V

    .line 47
    .local v4, "resLoader":Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;
    invoke-virtual {v4, v2}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->setTextureManagement(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;)V

    .line 48
    invoke-virtual {v4, p2}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->setSystemGestureService(Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V

    .line 49
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v4, v5}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V

    .line 51
    new-instance v5, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    invoke-direct {v5, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;-><init>(Landroid/content/Context;)V

    .line 52
    .local v5, "windowObserver":Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v5, v6}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V

    .line 54
    new-instance v6, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-direct {v6, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;-><init>(Landroid/content/Context;)V

    .line 55
    .local v6, "launcherObserver":Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v6, v7}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V

    .line 57
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mStateMachine:Lcn/nubia/server/policy/edge/effects/state/StateVerifier;

    invoke-virtual {v7, v3, v5, v4, v6}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->initControllers(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "looper":Landroid/os/Looper;
    .end local v1    # "handler":Lcn/nubia/server/policy/edge/effectsutil/safeguarder/GuardHandler;
    .end local v2    # "textureManager":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;
    .end local v3    # "animationController":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .end local v4    # "resLoader":Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;
    .end local v5    # "windowObserver":Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
    .end local v6    # "launcherObserver":Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Crash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception catch in constructors:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "State"

    const-string v1, "EffectsManager init finished"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method private checkThread()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mCheckedThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 96
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only the thread that construct EffectsManager can touch it"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canApplyStateChange(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 89
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mOutsideListner:Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mOutsideListner:Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;

    invoke-interface {v0, p1}, Lcn/nubia/server/policy/edge/effectsutil/LetGoStateChange;->canApplyStateChange(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V

    .line 91
    :cond_0
    return-void
.end method

.method public deliverTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 77
    const-string v0, "Event"

    const-string v1, "deliverTouchEvent"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/EffectsManager;->checkThread()V

    .line 80
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mStateMachine:Lcn/nubia/server/policy/edge/effects/state/StateVerifier;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->deliverEventToState(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public notifyGestureChanges(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 66
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyGestureChanges "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/EffectsManager;->checkThread()V

    .line 69
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mStateMachine:Lcn/nubia/server/policy/edge/effects/state/StateVerifier;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/StateVerifier;->transferToState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/EffectsManager;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
