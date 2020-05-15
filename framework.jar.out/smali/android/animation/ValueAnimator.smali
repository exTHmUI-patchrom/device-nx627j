.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;,
        Landroid/animation/ValueAnimator$RepeatMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ValueAnimator"

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDurationScale:F


# instance fields
.field private mAnimationEndRequested:Z

.field private mCurrentFraction:F

.field private mDuration:J

.field private mDurationScale:F

.field private mFirstFrameTime:J

.field mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLastFrameTime:J

.field private mOverallFraction:F

.field private mPauseTime:J

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mResumed:Z

.field private mReversing:Z

.field private mRunning:Z

.field mSeekFraction:F

.field private mSelfPulse:Z

.field private mStartDelay:J

.field private mStartListenersCalled:Z

.field mStartTime:J

.field mStartTimeCommitted:Z

.field private mStarted:Z

.field private mSuppressSelfPulseRequested:Z

.field mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Landroid/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 130
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 324
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 114
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 127
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 145
    const/4 v4, 0x0

    iput v4, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 151
    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 156
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 162
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 172
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 178
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 185
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 191
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 196
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 203
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 212
    iput v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 219
    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 225
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 231
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 238
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 259
    iput v2, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    .line 325
    return-void
.end method

.method private addAnimationCallback(J)V
    .locals 1
    .param p1, "delay"    # J

    .line 1508
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_0

    .line 1509
    return-void

    .line 1511
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    .line 1512
    return-void
.end method

.method private addOneShotCommitCallback()V
    .locals 1

    .line 1494
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_0

    .line 1495
    return-void

    .line 1497
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1498
    return-void
.end method

.method public static areAnimatorsEnabled()Z
    .locals 2

    .line 316
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private clampFraction(F)F
    .locals 2
    .param p1, "fraction"    # F

    .line 714
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 715
    const/4 p1, 0x0

    goto :goto_0

    .line 716
    :cond_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 717
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 719
    :cond_1
    :goto_0
    return p1
.end method

.method private endAnimation()V
    .locals 7

    .line 1209
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v0, :cond_0

    .line 1210
    return-void

    .line 1212
    :cond_0
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    .line 1214
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1215
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1216
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1217
    .local v0, "notify":Z
    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v2, :cond_3

    .line 1219
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1221
    :cond_3
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1222
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1223
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1224
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1225
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1226
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1227
    if-eqz v0, :cond_4

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1228
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    .line 1229
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1230
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1231
    .local v3, "numListeners":I
    move v4, v1

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 1232
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-interface {v5, p0, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 1231
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1236
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v3    # "numListeners":I
    .end local v4    # "i":I
    :cond_4
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1237
    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1238
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v3

    .line 1239
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 1238
    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1241
    :cond_5
    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    .line 1616
    invoke-static {}, Landroid/animation/AnimationHandler;->getAnimationCount()I

    move-result v0

    return v0
.end method

.method private getCurrentIteration(F)I
    .locals 4
    .param p1, "fraction"    # F

    .line 683
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 687
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 688
    .local v0, "iteration":D
    float-to-double v2, p1

    cmpl-double v2, v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 689
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    .line 691
    :cond_0
    double-to-int v2, v0

    return v2
.end method

.method private getCurrentIterationFraction(FZ)F
    .locals 3
    .param p1, "fraction"    # F
    .param p2, "inReverse"    # Z

    .line 700
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 701
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->getCurrentIteration(F)I

    move-result v0

    .line 702
    .local v0, "iteration":I
    int-to-float v1, v0

    sub-float v1, p1, v1

    .line 703
    .local v1, "currentFraction":F
    invoke-direct {p0, v0, p2}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    return v2
.end method

.method public static getDurationScale()F
    .locals 1

    .line 299
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .line 810
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {}, Landroid/animation/AnimationHandler;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private getScaledDuration()J
    .locals 2

    .line 603
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private isPulsingInternal()Z
    .locals 4

    .line 1272
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyStartListeners()V
    .locals 5

    .line 1008
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    if-nez v0, :cond_0

    .line 1009
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    .line 1010
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1011
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1012
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1013
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-interface {v3, p0, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 1012
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1016
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1017
    return-void
.end method

.method public static varargs ofArgb([I)Landroid/animation/ValueAnimator;
    .locals 2
    .param p0, "values"    # [I

    .line 356
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 357
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 358
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 359
    return-object v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [F

    .line 374
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 375
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 376
    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [I

    .line 339
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 340
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 341
    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p1, "values"    # [Ljava/lang/Object;

    .line 416
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 417
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 419
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [Landroid/animation/PropertyValuesHolder;

    .line 388
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 389
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 390
    return-object v0
.end method

.method private removeAnimationCallback()V
    .locals 1

    .line 1501
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_0

    .line 1502
    return-void

    .line 1504
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1505
    return-void
.end method

.method private resolveDurationScale()F
    .locals 2

    .line 599
    iget v0, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    goto :goto_0

    :cond_0
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    :goto_0
    return v0
.end method

.method public static setDurationScale(F)V
    .locals 0
    .param p0, "durationScale"    # F

    .line 291
    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 292
    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    .line 830
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {p0, p1}, Landroid/animation/AnimationHandler;->setFrameDelay(J)V

    .line 831
    return-void
.end method

.method private shouldPlayBackward(IZ)Z
    .locals 3
    .param p1, "iteration"    # I
    .param p2, "inReverse"    # Z

    .line 728
    if-lez p1, :cond_4

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 732
    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 733
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    .line 735
    :cond_2
    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    .line 738
    :cond_4
    return p2
.end method

.method private start(Z)V
    .locals 7
    .param p1, "playBackwards"    # Z

    .line 1033
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1036
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1037
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 1039
    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p1, :cond_1

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_1

    .line 1040
    iget v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1042
    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v3, v3

    iget v5, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    .line 1043
    .local v3, "fraction":F
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    iput v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1044
    .end local v3    # "fraction":F
    goto :goto_0

    .line 1045
    :cond_0
    iget v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    sub-float/2addr v3, v4

    iput v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1048
    :cond_1
    :goto_0
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1049
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1050
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1051
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1055
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1056
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1057
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1058
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    .line 1060
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v1, v0

    if-gez v0, :cond_2

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v0, :cond_4

    .line 1064
    :cond_2
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1065
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    .line 1069
    invoke-virtual {p0, v3, v4}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    .line 1071
    :cond_3
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 1074
    :cond_4
    :goto_1
    return-void

    .line 1034
    :cond_5
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startAnimation()V
    .locals 4

    .line 1248
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1249
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v2

    .line 1250
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1249
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1253
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1254
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1256
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 1257
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput v0, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    goto :goto_0

    .line 1259
    :cond_1
    iput v1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1261
    :goto_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1262
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1264
    :cond_2
    return-void
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 923
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 926
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    return-void
.end method

.method animateBasedOnPlayTime(JJZ)V
    .locals 5
    .param p1, "currentPlayTime"    # J
    .param p3, "lastPlayTime"    # J
    .param p5, "inReverse"    # Z

    .line 1355
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2

    .line 1359
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1361
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lez v0, :cond_0

    .line 1362
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 1363
    .local v0, "iteration":I
    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long v1, p3, v1

    long-to-int v1, v1

    .line 1366
    .local v1, "lastIteration":I
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1367
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1369
    if-eq v0, v1, :cond_0

    .line 1370
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1371
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1372
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1373
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1372
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1379
    .end local v0    # "iteration":I
    .end local v1    # "lastIteration":I
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    mul-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 1380
    invoke-virtual {p0, p5}, Landroid/animation/ValueAnimator;->skipToEndValue(Z)V

    goto :goto_1

    .line 1383
    :cond_1
    long-to-float v0, p1

    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 1384
    .local v0, "fraction":F
    invoke-direct {p0, v0, p5}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v0

    .line 1385
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1387
    .end local v0    # "fraction":F
    :goto_1
    return-void

    .line 1356
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Play time should never be negative."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method animateBasedOnTime(J)Z
    .locals 12
    .param p1, "currentTime"    # J

    .line 1313
    const/4 v0, 0x0

    .line 1314
    .local v0, "done":Z
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_7

    .line 1315
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v1

    .line 1316
    .local v1, "scaledDuration":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 1317
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v5, p1, v5

    long-to-float v5, v5

    long-to-float v6, v1

    div-float/2addr v5, v6

    goto :goto_0

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1318
    .local v5, "fraction":F
    :goto_0
    iget v6, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1319
    .local v6, "lastFraction":F
    float-to-int v7, v5

    float-to-int v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-le v7, v8, :cond_1

    move v7, v10

    goto :goto_1

    :cond_1
    move v7, v9

    .line 1320
    .local v7, "newIteration":Z
    :goto_1
    iget v8, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/2addr v8, v10

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_2

    iget v8, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v11, -0x1

    if-eq v8, v11, :cond_2

    goto :goto_2

    :cond_2
    move v10, v9

    :goto_2
    move v8, v10

    .line 1322
    .local v8, "lastIterationFinished":Z
    cmp-long v3, v1, v3

    if-nez v3, :cond_3

    .line 1324
    const/4 v0, 0x1

    goto :goto_4

    .line 1325
    :cond_3
    if-eqz v7, :cond_5

    if-nez v8, :cond_5

    .line 1327
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 1328
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1329
    .local v3, "numListeners":I
    nop

    .local v9, "i":I
    :goto_3
    move v4, v9

    .end local v9    # "i":I
    .local v4, "i":I
    if-ge v4, v3, :cond_4

    .line 1330
    iget-object v9, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v9, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1329
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "i":I
    .restart local v9    # "i":I
    goto :goto_3

    .line 1332
    .end local v3    # "numListeners":I
    .end local v9    # "i":I
    :cond_4
    goto :goto_4

    .line 1333
    :cond_5
    if-eqz v8, :cond_6

    .line 1334
    const/4 v0, 0x1

    .line 1336
    :cond_6
    :goto_4
    invoke-direct {p0, v5}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result v3

    iput v3, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1337
    iget v3, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, v3, v4}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v3

    .line 1339
    .local v3, "currentIterationFraction":F
    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1341
    .end local v1    # "scaledDuration":J
    .end local v3    # "currentIterationFraction":F
    .end local v5    # "fraction":F
    .end local v6    # "lastFraction":F
    .end local v7    # "newIteration":Z
    .end local v8    # "lastIterationFinished":Z
    :cond_7
    return v0
.end method

.method animateValue(F)V
    .locals 4
    .param p1, "fraction"    # F

    .line 1538
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1539
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1540
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    .line 1541
    .local v0, "numValues":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1542
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1541
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1544
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1545
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1546
    .local v2, "numListeners":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1547
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 1546
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1550
    .end local v1    # "i":I
    .end local v2    # "numListeners":I
    :cond_1
    return-void
.end method

.method public canReverse()Z
    .locals 1

    .line 1201
    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 3

    .line 1093
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1099
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v0, :cond_0

    .line 1100
    return-void

    .line 1106
    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1107
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_2

    .line 1109
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1111
    :cond_2
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    .line 1112
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1113
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 1114
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1115
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    goto :goto_0

    .line 1117
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_3
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1119
    return-void

    .line 1094
    :cond_4
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .line 70
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .locals 7

    .line 1554
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1555
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1556
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1558
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1559
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1560
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 1561
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1562
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1563
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1564
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1565
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1566
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1567
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1568
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1569
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1570
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1571
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1572
    const/4 v2, 0x0

    iput v2, v0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1573
    iput v2, v0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1574
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 1575
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1577
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1578
    .local v2, "oldValues":[Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_1

    .line 1579
    array-length v3, v2

    .line 1580
    .local v3, "numValues":I
    new-array v4, v3, [Landroid/animation/PropertyValuesHolder;

    iput-object v4, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1581
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1582
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1583
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1584
    .local v4, "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v1

    .line 1585
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    .end local v4    # "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1588
    .end local v1    # "i":I
    .end local v3    # "numValues":I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public commitAnimationFrame(J)V
    .locals 4
    .param p1, "frameTime"    # J

    .line 1288
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    if-nez v0, :cond_0

    .line 1289
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1290
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    sub-long v0, p1, v0

    .line 1291
    .local v0, "adjustment":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1292
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1298
    .end local v0    # "adjustment":J
    :cond_0
    return-void
.end method

.method public final doAnimationFrame(J)Z
    .locals 8
    .param p1, "frameTime"    # J

    .line 1420
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1423
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v0, :cond_0

    .line 1424
    nop

    .line 1425
    move-wide v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    long-to-float v0, v0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v0, p1

    :goto_0
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1429
    :cond_1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1430
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1431
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    .line 1432
    return v1

    .line 1433
    :cond_2
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v0, :cond_3

    .line 1434
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1435
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    .line 1437
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1441
    :cond_3
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    const/high16 v4, -0x40800000    # -1.0f

    if-nez v0, :cond_5

    .line 1444
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    cmp-long v0, v5, p1

    if-lez v0, :cond_4

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    .line 1448
    return v1

    .line 1452
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1453
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1457
    :cond_5
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    cmp-long v0, v5, v2

    if-gez v0, :cond_7

    .line 1458
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    .line 1459
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v2

    long-to-float v0, v2

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v0, v2

    float-to-long v2, v0

    .line 1460
    .local v2, "seekTime":J
    sub-long v5, p1, v2

    iput-wide v5, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1461
    iput v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1463
    .end local v2    # "seekTime":J
    :cond_6
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1465
    :cond_7
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1470
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1471
    .local v0, "currentTime":J
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animateBasedOnTime(J)Z

    move-result v2

    .line 1473
    .local v2, "finished":Z
    if-eqz v2, :cond_8

    .line 1474
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1476
    :cond_8
    return v2
.end method

.method public end()V
    .locals 2

    .line 1123
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1126
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_0

    .line 1128
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1129
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    goto :goto_0

    .line 1130
    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1

    .line 1131
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1133
    :cond_1
    :goto_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, v0, v1}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1134
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1135
    return-void

    .line 1124
    :cond_3
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnimatedFraction()F
    .locals 1

    .line 1521
    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .line 846
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 847
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 850
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 864
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    .line 865
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 869
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAnimationHandler()Landroid/animation/AnimationHandler;
    .locals 1

    .line 1674
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayTime()J
    .locals 5

    .line 752
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    .line 755
    :cond_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 756
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0

    .line 758
    :cond_1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v0

    .line 759
    .local v0, "durationScale":F
    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 760
    const/high16 v0, 0x3f800000    # 1.0f

    .line 762
    :cond_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v1, v1

    return-wide v1

    .line 753
    .end local v0    # "durationScale":F
    :cond_3
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 613
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 982
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .locals 1

    .line 1279
    const-string v0, "animator"

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 891
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 912
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 773
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 6

    .line 618
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 619
    const-wide/16 v0, -0x1

    return-wide v0

    .line 621
    :cond_0
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    .line 544
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 3

    .line 559
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1

    .line 560
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    .line 561
    .local v0, "numValues":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 562
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 566
    .end local v0    # "numValues":I
    :cond_1
    return-void
.end method

.method isInitialized()Z
    .locals 1

    .line 1409
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1164
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 1169
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public overrideDurationScale(F)V
    .locals 0
    .param p1, "durationScale"    # F

    .line 595
    iput p1, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    .line 596
    return-void
.end method

.method public pause()V
    .locals 3

    .line 1154
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1155
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 1156
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1157
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1158
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1160
    :cond_0
    return-void
.end method

.method pulseAnimationFrame(J)Z
    .locals 1
    .param p1, "frameTime"    # J

    .line 1481
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-eqz v0, :cond_0

    .line 1488
    const/4 v0, 0x0

    return v0

    .line 1490
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .line 933
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 934
    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 938
    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 947
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 948
    return-void

    .line 950
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 951
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 952
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 954
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    .line 1139
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1143
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-nez v0, :cond_0

    .line 1144
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1145
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1146
    invoke-direct {p0, v2, v3}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    .line 1149
    :cond_0
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 1150
    return-void

    .line 1140
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be resumed from the same thread that the animator was started on"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reverse()V
    .locals 10

    .line 1181
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1182
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 1183
    .local v2, "currentTime":J
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v4, v2, v4

    .line 1184
    .local v4, "currentPlayTime":J
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 1185
    .local v6, "timeLeft":J
    sub-long v8, v2, v6

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1186
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1187
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1188
    .end local v2    # "currentTime":J
    .end local v4    # "currentPlayTime":J
    .end local v6    # "timeLeft":J
    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-eqz v0, :cond_1

    .line 1189
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1190
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 1192
    :cond_1
    invoke-direct {p0, v1}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 1194
    :goto_0
    return-void
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 0
    .param p1, "mayRunAsync"    # Z

    .line 1667
    return-void
.end method

.method public setCurrentFraction(F)V
    .locals 6
    .param p1, "fraction"    # F

    .line 658
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 659
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 661
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    .line 663
    .local v0, "seekTime":J
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 666
    .local v2, "currentTime":J
    sub-long v4, v2, v0

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 667
    .end local v0    # "seekTime":J
    .end local v2    # "currentTime":J
    goto :goto_0

    .line 670
    :cond_0
    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 672
    :goto_0
    iput p1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 673
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, p1, v0}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v0

    .line 674
    .local v0, "currentIterationFraction":F
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 675
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 4
    .param p1, "playTime"    # J

    .line 636
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    long-to-float v0, p1

    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 637
    .local v0, "fraction":F
    :goto_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 638
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "duration"    # J

    .line 579
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 583
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 584
    return-object p0

    .line 580
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2
    .param p1, "value"    # Landroid/animation/TypeEvaluator;

    .line 1002
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1003
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1005
    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 3
    .param p1, "values"    # [F

    .line 465
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 468
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    .line 472
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .end local v0    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    goto :goto_1

    .line 469
    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 475
    :goto_1
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 476
    return-void

    .line 466
    :cond_3
    :goto_2
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 3
    .param p1, "values"    # [I

    .line 437
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 440
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 443
    :cond_1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    .line 444
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .end local v0    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    goto :goto_1

    .line 441
    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 447
    :goto_1
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 448
    return-void

    .line 438
    :cond_3
    :goto_2
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .line 968
    if-eqz p1, :cond_0

    .line 969
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 971
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 973
    :goto_0
    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 4
    .param p1, "values"    # [Ljava/lang/Object;

    .line 502
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 505
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 508
    :cond_1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    .line 509
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .end local v0    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    goto :goto_1

    .line 506
    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 512
    :goto_1
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 513
    return-void

    .line 503
    :cond_3
    :goto_2
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "value"    # I

    .line 882
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 883
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "value"    # I

    .line 902
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 903
    return-void
.end method

.method public setStartDelay(J)V
    .locals 2
    .param p1, "startDelay"    # J

    .line 786
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 787
    const-string v0, "ValueAnimator"

    const-string v1, "Start delay should always be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-wide/16 p1, 0x0

    .line 790
    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 791
    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 6
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .line 524
    array-length v0, p1

    .line 525
    .local v0, "numValues":I
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 526
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 527
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 528
    aget-object v3, p1, v2

    .line 529
    .local v3, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .end local v3    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 532
    .end local v2    # "i":I
    :cond_0
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 533
    return-void
.end method

.method skipToEndValue(Z)V
    .locals 4
    .param p1, "inReverse"    # Z

    .line 1398
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1399
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1400
    .local v0, "endFraction":F
    :goto_0
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    if-ne v1, v2, :cond_1

    .line 1402
    const/4 v0, 0x0

    .line 1404
    :cond_1
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1405
    return-void
.end method

.method public start()V
    .locals 1

    .line 1088
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 1089
    return-void
.end method

.method startWithoutPulsing(Z)V
    .locals 1
    .param p1, "inReverse"    # Z

    .line 1077
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1078
    if-eqz p1, :cond_0

    .line 1079
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    .line 1081
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 1083
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1084
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1622
    .local v0, "returnVal":Ljava/lang/String;
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_0

    .line 1623
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1627
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
