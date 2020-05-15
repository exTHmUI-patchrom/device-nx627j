.class public Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;
.super Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
.source "StartSingleSlide.java"

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

.field private mStartingApp:Ljava/lang/String;

.field private mTextureUploaded:Z

.field private mWindowCreated:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "stateName"    # I

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;-><init>(I)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mEntered:Z

    .line 21
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mWindowCreated:Z

    .line 22
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mTextureUploaded:Z

    .line 23
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mList:Ljava/util/List;

    .line 25
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 26
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 27
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mStartingApp:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private convertToCtrlStatus(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)I
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 120
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->isUpState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->isLeft(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x2

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x4

    return v0

    .line 129
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->isLeft(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method private isLeft(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 108
    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointerCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->x:F

    .line 115
    .local v0, "x":F
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/state/DirectionClassifier;->isLeft(F)Z

    move-result v1

    return v1

    .line 109
    .end local v0    # "x":F
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In PreSingleSlide state, gesture point count is not 1, is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isUpState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 94
    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x1001

    if-eq v0, v1, :cond_3

    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x4008

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x1002

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x4009

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In StartSingleSlide state, gesture action not correct, is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private prepare()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setFitWindowCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onSurfaceCreated"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v2}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->beginWait(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 85
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->addFitWindow()V

    .line 87
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onTextureUploaded"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v1, v3, v2}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->beginWait(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 88
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->startSingleSlide(Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V

    .line 90
    return-void
.end method

.method private startAnimation()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mAnimSyncCallback:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V

    .line 193
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->getMappedDirection()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingSuccAnim(ILjava/util/List;)V

    .line 194
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;->canApplyStateChangeInner(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V

    .line 195
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mStartingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;->canChangeToEnding(Ljava/lang/String;)V

    .line 196
    return-void

    .line 189
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

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public enter(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)V
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    .param p2, "animController"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p3, "loader"    # Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 67
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartSingleSlide enter time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartSingleSlide enter time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mEntered:Z

    .line 73
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 74
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->convertToCtrlStatus(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->setDirection(I)V

    .line 75
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 76
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 78
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->prepare()V

    .line 79
    return-void
.end method

.method public handleEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 41
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mEntered:Z

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->updateEvent(Landroid/view/MotionEvent;)V

    .line 45
    return-void
.end method

.method public leave()V
    .locals 2

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mEntered:Z

    .line 53
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mWindowCreated:Z

    .line 54
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mTextureUploaded:Z

    .line 55
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mList:Ljava/util/List;

    .line 56
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 57
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 58
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mStartingApp:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onTextureUploaded"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onSurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 4

    .line 166
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mEntered:Z

    if-nez v0, :cond_0

    .line 167
    const-string v0, "State"

    const-string/jumbo v1, "onSurfaceCreated called but StartSingleSlide state has gone"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 169
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mWindowCreated:Z

    if-nez v0, :cond_2

    .line 175
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceCreated in StartSingleSlide time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceCreated in StartSingleSlide time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onSurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mWindowCreated:Z

    .line 181
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mTextureUploaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mWindowCreated:Z

    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->startAnimation()V

    .line 184
    :cond_1
    return-void

    .line 170
    :cond_2
    const-string v0, "State"

    const-string/jumbo v1, "onSurfaceCreated called here more than once in StartSingleSlide"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "onSurfaceCreated called here more than once in StartSingleSlide"

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

    .line 139
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mEntered:Z

    if-nez v0, :cond_0

    .line 140
    const-string v0, "State"

    const-string/jumbo v1, "onTextureUploaded called but StartSingleSlide state has gone"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mTextureUploaded:Z

    if-nez v0, :cond_2

    .line 148
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextureUploaded in StartSingleSlide time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextureUploaded in StartSingleSlide time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onTextureUploaded"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mList:Ljava/util/List;

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mTextureUploaded:Z

    .line 153
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mStartingApp:Ljava/lang/String;

    .line 156
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mTextureUploaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->mWindowCreated:Z

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/StartSingleSlide;->startAnimation()V

    .line 160
    :cond_1
    return-void

    .line 143
    :cond_2
    const-string v0, "State"

    const-string/jumbo v1, "onTextureUploaded called here more than once in StartSingleSlide"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "onTextureUploaded called here more than once in StartSingleSlide"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
