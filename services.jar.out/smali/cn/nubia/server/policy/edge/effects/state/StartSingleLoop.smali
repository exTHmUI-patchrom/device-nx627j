.class public Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;
.super Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
.source "StartSingleLoop.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;
.implements Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;


# instance fields
.field private mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

.field private mEntered:Z

.field private mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

.field private mTextureUploaded:Z

.field private mWindowCreated:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "stateName"    # I

    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;-><init>(I)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 17
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mEntered:Z

    .line 18
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mWindowCreated:Z

    .line 19
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mTextureUploaded:Z

    .line 20
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mList:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 23
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 27
    return-void
.end method

.method private prepare()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setFitWindowCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;)V

    .line 52
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onSurfaceCreated"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v2}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->beginWait(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 53
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->addFitWindow()V

    .line 55
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onTextureUploaded"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v1, v3, v2}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->beginWait(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 56
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->startSingleMultiSlide(Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V

    .line 58
    return-void
.end method

.method private startAnimation()V
    .locals 5

    .line 131
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V

    .line 136
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->getMappedDirection()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    .line 137
    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->getCurrentDeltaY()F

    move-result v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->getCurrentY()F

    move-result v3

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mList:Ljava/util/List;

    .line 136
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingLoopAnim(IFFLjava/util/List;)V

    .line 138
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;->canApplyStateChangeInner(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V

    .line 139
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;->canChangeToEnding(Ljava/lang/String;)V

    .line 140
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mSyncCallbk is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canTransferTo(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public enter(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)V
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    .param p2, "animController"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p3, "loader"    # Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 37
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartSingleLoop enter time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartSingleLoop enter time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mEntered:Z

    .line 42
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 43
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 44
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 46
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->prepare()V

    .line 47
    return-void
.end method

.method public handleEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 62
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mEntered:Z

    if-nez v0, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->updateEvent(Landroid/view/MotionEvent;)V

    .line 67
    return-void
.end method

.method public leave()V
    .locals 2

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 72
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mEntered:Z

    .line 73
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mWindowCreated:Z

    .line 74
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mTextureUploaded:Z

    .line 75
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mList:Ljava/util/List;

    .line 76
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 77
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 78
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onTextureUploaded"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onSurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 4

    .line 85
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mEntered:Z

    if-nez v0, :cond_0

    .line 86
    const-string v0, "State"

    const-string/jumbo v1, "onSurfaceCreated called but StartSingleLoop state has gone"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mWindowCreated:Z

    if-nez v0, :cond_2

    .line 93
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceCreated in StartSingleLoop time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceCreated in StartSingleLoop time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onSurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mWindowCreated:Z

    .line 99
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mTextureUploaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mWindowCreated:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->startAnimation()V

    .line 103
    :cond_1
    return-void

    .line 89
    :cond_2
    const-string v0, "State"

    const-string/jumbo v1, "onSurfaceCreated called here more than once in StartSingleLoop"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "onSurfaceCreated called here more than once in StartSingleLoop"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTextureUploaded(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 108
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mEntered:Z

    if-nez v0, :cond_0

    .line 109
    const-string v0, "State"

    const-string/jumbo v1, "onTextureUploaded called but StartSingleLoop state has gone"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mTextureUploaded:Z

    if-nez v0, :cond_2

    .line 116
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextureUploaded in StartSingleLoop time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextureUploaded in StartSingleLoop time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onTextureUploaded"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mList:Ljava/util/List;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mTextureUploaded:Z

    .line 123
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mTextureUploaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->mWindowCreated:Z

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/StartSingleLoop;->startAnimation()V

    .line 127
    :cond_1
    return-void

    .line 112
    :cond_2
    const-string v0, "State"

    const-string/jumbo v1, "onTextureUploaded called here more than once in StartSingleLoop"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "onTextureUploaded called here more than once in StartSingleLoop"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
