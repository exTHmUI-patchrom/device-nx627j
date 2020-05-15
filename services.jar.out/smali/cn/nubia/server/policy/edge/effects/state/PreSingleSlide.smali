.class public Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;
.super Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;
.source "PreSingleSlide.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;
.implements Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;


# instance fields
.field private mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

.field private mAnimating:Z

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

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/BaseGestureState;-><init>(I)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 21
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mEntered:Z

    .line 22
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mWindowCreated:Z

    .line 23
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mTextureUploaded:Z

    .line 24
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mList:Ljava/util/List;

    .line 25
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mAnimating:Z

    .line 27
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 28
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 32
    return-void
.end method

.method private convertToDirectionPool(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)I
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 158
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->isUpState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->isLeft(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x2

    return v0

    .line 163
    :cond_0
    const/4 v0, 0x4

    return v0

    .line 167
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->isLeft(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method private isLeft(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 3
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 146
    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointerCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->x:F

    .line 153
    .local v0, "x":F
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/state/DirectionClassifier;->isLeft(F)Z

    move-result v1

    return v1

    .line 147
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

    .line 132
    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x1005

    if-eq v0, v1, :cond_3

    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x4004

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x1006

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x4005

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In PreSingleSlide state, gesture action not correct, is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private prepare()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setFitWindowCallback(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;)V

    .line 95
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onSurfaceCreated"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v2}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->beginWait(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->addFitWindow()V

    .line 98
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onTextureUploaded"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v1, v3, v2}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->beginWait(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 99
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 100
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->isLeft(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4e21

    goto :goto_0

    :cond_0
    const/16 v1, 0x4e22

    .line 101
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    invoke-direct {p0, v2}, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->isUpState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4e23

    goto :goto_1

    :cond_1
    const/16 v2, 0x4e24

    .line 99
    :goto_1
    invoke-virtual {v0, v1, v2, p0}, Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;->prepareSingleSlideTexture(IILcn/nubia/server/policy/edge/effects/resloader/SingleSlideResCallback;)V

    .line 102
    return-void
.end method

.method private startAnimation()V
    .locals 5

    .line 200
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V

    .line 201
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->getMappedDirection()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    .line 202
    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->getCurrentDeltaY()F

    move-result v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->getCurrentY()F

    move-result v3

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mList:Ljava/util/List;

    .line 201
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingPreAnim(IFFLjava/util/List;)V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mAnimating:Z

    .line 205
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mMachineNotifier:Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    invoke-interface {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/StateMachineNotifier;->canApplyStateChangeInner(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)V

    .line 206
    return-void
.end method


# virtual methods
.method public canTransferTo(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 1
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 36
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;->isStartSingleSlide(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;->isPreSingleLoop(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;->isSingleFailState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 36
    :goto_1
    return v0
.end method

.method public enter(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;)V
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    .param p2, "animController"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;
    .param p3, "loader"    # Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 74
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreSingleSlide enter time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreSingleSlide enter time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mEntered:Z

    .line 80
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 81
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->convertToDirectionPool(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->setDirection(I)V

    .line 83
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 84
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 86
    iget-object v0, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->id:I

    .line 87
    .local v0, "pointerId":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-virtual {v2, v0}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->initPointerId(I)V

    .line 88
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    iget-object v3, p1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v1, v3, v1

    iget v1, v1, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->y:F

    invoke-virtual {v2, v1}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->updateY(F)V

    .line 89
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->prepare()V

    .line 90
    return-void
.end method

.method public handleEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 43
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mEntered:Z

    if-nez v0, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->updateEvent(Landroid/view/MotionEvent;)V

    .line 48
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mDirectionPool:Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/state/UniqueDirectionPool;->getMappedDirection()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    .line 50
    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->getCurrentDeltaY()F

    move-result v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mEventPool:Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/state/UniqueEventPool;->getCurrentY()F

    move-result v3

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mList:Ljava/util/List;

    .line 49
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->updatePageFlippingAnim(IFFLjava/util/List;)V

    .line 53
    :cond_1
    return-void
.end method

.method public leave()V
    .locals 2

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mGesture:Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mEntered:Z

    .line 61
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mWindowCreated:Z

    .line 62
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mTextureUploaded:Z

    .line 63
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mList:Ljava/util/List;

    .line 64
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mAnimating:Z

    .line 65
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mAnimController:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 66
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mResLoader:Lcn/nubia/server/policy/edge/effects/resloader/TaskBitmapManager;

    .line 67
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onTextureUploaded"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onSurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 4

    .line 177
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mEntered:Z

    if-nez v0, :cond_0

    .line 178
    const-string v0, "State"

    const-string/jumbo v1, "onSurfaceCreated called but PreSingleSlide state has gone"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mWindowCreated:Z

    if-nez v0, :cond_2

    .line 186
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceCreated in PreSingleSlide time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceCreated in PreSingleSlide time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onSurfaceCreated"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mWindowCreated:Z

    .line 192
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mTextureUploaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mWindowCreated:Z

    if-eqz v0, :cond_1

    .line 193
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->startAnimation()V

    .line 196
    :cond_1
    return-void

    .line 181
    :cond_2
    const-string v0, "State"

    const-string/jumbo v1, "onSurfaceCreated called here more than once in PreSingleSlide"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "onSurfaceCreated called here more than once in PreSingleSlide"

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
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mEntered:Z

    if-nez v0, :cond_0

    .line 109
    const-string v0, "State"

    const-string/jumbo v1, "onTextureUploaded called but PreSingleSlide state has gone"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mTextureUploaded:Z

    if-nez v0, :cond_2

    .line 117
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextureUploaded in PreSingleSlide time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextureUploaded in PreSingleSlide time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mWatchDogLite:Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;

    const-string/jumbo v1, "onTextureUploaded"

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/state/WatchDogLite;->reached(Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mList:Ljava/util/List;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mTextureUploaded:Z

    .line 124
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mTextureUploaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->mWindowCreated:Z

    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/state/PreSingleSlide;->startAnimation()V

    .line 128
    :cond_1
    return-void

    .line 112
    :cond_2
    const-string v0, "State"

    const-string/jumbo v1, "onTextureUploaded called here more than once in PreSingleSlide"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "onTextureUploaded called here more than once in PreSingleSlide"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
