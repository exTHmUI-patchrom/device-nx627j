.class public Landroid/animation/TimeAnimator;
.super Landroid/animation/ValueAnimator;
.source "TimeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/TimeAnimator$TimeListener;
    }
.end annotation


# instance fields
.field private mListener:Landroid/animation/TimeAnimator$TimeListener;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    return-void
.end method


# virtual methods
.method animateBasedOnTime(J)Z
    .locals 8
    .param p1, "currentTime"    # J

    .line 41
    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    if-eqz v0, :cond_1

    .line 42
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    sub-long v0, p1, v0

    .line 43
    .local v0, "totalTime":J
    iget-wide v2, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move-wide v6, v4

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    sub-long v2, p1, v2

    move-wide v6, v2

    .line 44
    .local v6, "deltaTime":J
    :goto_0
    iput-wide p1, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 45
    iget-object v2, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    move-object v3, p0

    move-wide v4, v0

    invoke-interface/range {v2 .. v7}, Landroid/animation/TimeAnimator$TimeListener;->onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V

    .line 47
    .end local v0    # "totalTime":J
    .end local v6    # "deltaTime":J
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method animateValue(F)V
    .locals 0
    .param p1, "fraction"    # F

    .line 71
    return-void
.end method

.method initAnimation()V
    .locals 0

    .line 76
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 6
    .param p1, "playTime"    # J

    .line 52
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 53
    .local v0, "currentTime":J
    iget-wide v2, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    sub-long v4, v0, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    .line 54
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/TimeAnimator;->mStartTimeCommitted:Z

    .line 55
    invoke-virtual {p0, v0, v1}, Landroid/animation/TimeAnimator;->animateBasedOnTime(J)Z

    .line 56
    return-void
.end method

.method public setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/TimeAnimator$TimeListener;

    .line 65
    iput-object p1, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    .line 66
    return-void
.end method

.method public start()V
    .locals 2

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 36
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 37
    return-void
.end method
