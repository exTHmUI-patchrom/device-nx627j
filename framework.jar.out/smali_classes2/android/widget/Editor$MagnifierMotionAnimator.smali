.class Landroid/widget/Editor$MagnifierMotionAnimator;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MagnifierMotionAnimator"
.end annotation


# static fields
.field private static final DURATION:J = 0x64L


# instance fields
.field private mAnimationCurrentX:F

.field private mAnimationCurrentY:F

.field private mAnimationStartX:F

.field private mAnimationStartY:F

.field private final mAnimator:Landroid/animation/ValueAnimator;

.field private mLastX:F

.field private mLastY:F

.field private final mMagnifier:Landroid/widget/Magnifier;

.field private mMagnifierIsShowing:Z


# direct methods
.method private constructor <init>(Landroid/widget/Magnifier;)V
    .locals 3
    .param p1, "magnifier"    # Landroid/widget/Magnifier;

    .line 4390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4391
    iput-object p1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    .line 4393
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 4394
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4395
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4396
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/-$$Lambda$Editor$MagnifierMotionAnimator$E-RaelOMgCHAzvKgSSZE-hDYeIg;

    invoke-direct {v1, p0}, Landroid/widget/-$$Lambda$Editor$MagnifierMotionAnimator$E-RaelOMgCHAzvKgSSZE-hDYeIg;-><init>(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4404
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$100(Landroid/widget/Editor$MagnifierMotionAnimator;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$MagnifierMotionAnimator;

    .line 4370
    invoke-direct {p0}, Landroid/widget/Editor$MagnifierMotionAnimator;->update()V

    return-void
.end method

.method static synthetic access$5300(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$MagnifierMotionAnimator;

    .line 4370
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/widget/Editor$MagnifierMotionAnimator;FF)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$MagnifierMotionAnimator;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 4370
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$MagnifierMotionAnimator;->show(FF)V

    return-void
.end method

.method static synthetic access$6100(Landroid/widget/Editor$MagnifierMotionAnimator;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$MagnifierMotionAnimator;

    .line 4370
    invoke-direct {p0}, Landroid/widget/Editor$MagnifierMotionAnimator;->dismiss()V

    return-void
.end method

.method private dismiss()V
    .locals 1

    .line 4446
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {v0}, Landroid/widget/Magnifier;->dismiss()V

    .line 4447
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4448
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifierIsShowing:Z

    .line 4449
    return-void
.end method

.method public static synthetic lambda$new$0(Landroid/widget/Editor$MagnifierMotionAnimator;Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 4398
    iget v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    iget v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastX:F

    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    sub-float/2addr v1, v2

    .line 4399
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentX:F

    .line 4400
    iget v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    iget v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    sub-float/2addr v1, v2

    .line 4401
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentY:F

    .line 4402
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    iget v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentX:F

    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentY:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/Magnifier;->show(FF)V

    .line 4403
    return-void
.end method

.method private show(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 4413
    iget-boolean v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifierIsShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4415
    .local v0, "startNewAnimation":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 4416
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4417
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4418
    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentX:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    .line 4419
    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentY:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    goto :goto_1

    .line 4421
    :cond_1
    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastX:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    .line 4422
    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    .line 4424
    :goto_1
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 4426
    :cond_2
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4427
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {v2, p1, p2}, Landroid/widget/Magnifier;->show(FF)V

    .line 4430
    :cond_3
    :goto_2
    iput p1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastX:F

    .line 4431
    iput p2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    .line 4432
    iput-boolean v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifierIsShowing:Z

    .line 4433
    return-void
.end method

.method private update()V
    .locals 1

    .line 4439
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {v0}, Landroid/widget/Magnifier;->update()V

    .line 4440
    return-void
.end method
