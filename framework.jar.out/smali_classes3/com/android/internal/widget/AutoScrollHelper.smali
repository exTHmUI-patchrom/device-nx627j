.class public abstract Lcom/android/internal/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;,
        Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;,
        Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field private mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field private mNeedsCancel:Z

.field private mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field private final mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

.field private final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/android/internal/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    .line 139
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 148
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    .line 151
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    .line 160
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    .line 163
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    .line 166
    new-array v0, v0, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    .line 209
    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    .line 211
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 212
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x44c4e000    # 1575.0f

    mul-float/2addr v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v2, v1

    float-to-int v2, v2

    .line 213
    .local v2, "maxVelocity":I
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const v4, 0x439d8000    # 315.0f

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    float-to-int v1, v4

    .line 214
    .local v1, "minVelocity":I
    int-to-float v3, v2

    int-to-float v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->setMaximumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 215
    int-to-float v3, v1

    int-to-float v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->setMinimumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 217
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setEdgeType(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 218
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, v3, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setMaximumEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 219
    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v3, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setRelativeEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 220
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setRelativeVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 221
    sget v3, Lcom/android/internal/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setActivationDelay(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 222
    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setRampUpDuration(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 223
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setRampDownDuration(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 224
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .line 83
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/widget/AutoScrollHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .line 83
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/AutoScrollHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .line 83
    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .line 83
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/AutoScrollHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/AutoScrollHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .line 83
    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->cancelTargetTouch()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/AutoScrollHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(III)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 83
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(FFF)F
    .locals 1
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 83
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private cancelTargetTouch()V
    .locals 10

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 677
    .local v8, "eventTime":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v8

    move-wide v2, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 679
    .local v0, "cancel":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 680
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 681
    return-void
.end method

.method private computeTargetVelocity(IFFF)F
    .locals 8
    .param p1, "direction"    # I
    .param p2, "coordinate"    # F
    .param p3, "srcSize"    # F
    .param p4, "dstSize"    # F

    .line 538
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v0, v0, p1

    .line 539
    .local v0, "relativeEdge":F
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v1, v1, p1

    .line 540
    .local v1, "maximumEdge":F
    invoke-direct {p0, v0, p3, v1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result v2

    .line 541
    .local v2, "value":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    .line 543
    return v3

    .line 546
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget v4, v4, p1

    .line 547
    .local v4, "relativeVelocity":F
    iget-object v5, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v5, v5, p1

    .line 548
    .local v5, "minimumVelocity":F
    iget-object v6, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget v6, v6, p1

    .line 549
    .local v6, "maximumVelocity":F
    mul-float v7, v4, p4

    .line 554
    .local v7, "targetVelocity":F
    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 555
    mul-float v3, v2, v7

    invoke-static {v3, v5, v6}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v3

    return v3

    .line 557
    :cond_1
    neg-float v3, v2

    mul-float/2addr v3, v7

    invoke-static {v3, v5, v6}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v3

    neg-float v3, v3

    return v3
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 662
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 663
    return p2

    .line 664
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    .line 665
    return p1

    .line 667
    :cond_1
    return p0
.end method

.method private static constrain(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 652
    if-le p0, p2, :cond_0

    .line 653
    return p2

    .line 654
    :cond_0
    if-ge p0, p1, :cond_1

    .line 655
    return p1

    .line 657
    :cond_1
    return p0
.end method

.method private constrainEdgeValue(FF)F
    .locals 4
    .param p1, "current"    # F
    .param p2, "leading"    # F

    .line 623
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    .line 624
    return v0

    .line 627
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 641
    :pswitch_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    .line 643
    neg-float v0, p2

    div-float v0, p1, v0

    return v0

    .line 630
    :pswitch_1
    cmpg-float v1, p1, p2

    if-gez v1, :cond_2

    .line 631
    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_1

    .line 633
    div-float v0, p1, p2

    sub-float/2addr v2, v0

    return v2

    .line 634
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 636
    return v2

    .line 648
    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .locals 7
    .param p1, "relativeValue"    # F
    .param p2, "size"    # F
    .param p3, "maxValue"    # F
    .param p4, "current"    # F

    .line 606
    mul-float v0, p1, p2

    const/4 v1, 0x0

    invoke-static {v0, v1, p3}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    .line 607
    .local v0, "edgeSize":F
    invoke-direct {p0, p4, v0}, Lcom/android/internal/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v2

    .line 608
    .local v2, "valueLeading":F
    sub-float v3, p2, p4

    invoke-direct {p0, v3, v0}, Lcom/android/internal/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v3

    .line 609
    .local v3, "valueTrailing":F
    sub-float v4, v3, v2

    .line 611
    .local v4, "value":F
    cmpg-float v5, v4, v1

    if-gez v5, :cond_0

    .line 612
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float v5, v4

    invoke-interface {v1, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    neg-float v1, v1

    .local v1, "interpolated":F
    :goto_0
    goto :goto_1

    .line 613
    .end local v1    # "interpolated":F
    :cond_0
    cmpl-float v5, v4, v1

    if-lez v5, :cond_1

    .line 614
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_0

    .line 616
    .restart local v1    # "interpolated":F
    :goto_1
    nop

    .line 619
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v6}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v5

    return v5

    .line 616
    .end local v1    # "interpolated":F
    :cond_1
    return v1
.end method

.method private requestStop()V
    .locals 1

    .line 527
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    goto :goto_0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    .line 534
    :goto_0
    return-void
.end method

.method private shouldAnimate()Z
    .locals 4

    .line 491
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    .line 492
    .local v0, "scroller":Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v1

    .line 493
    .local v1, "verticalDirection":I
    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v2

    .line 495
    .local v2, "horizontalDirection":I
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    .line 496
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 495
    :goto_0
    return v3
.end method

.method private startAnimating()V
    .locals 5

    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Lcom/android/internal/widget/AutoScrollHelper;Lcom/android/internal/widget/AutoScrollHelper$1;)V

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    .line 507
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    .line 508
    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 510
    iget-boolean v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mActivationDelay:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 518
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 519
    return-void
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method public isEnabled()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    return v0
.end method

.method public isExclusive()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 455
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 456
    return v1

    .line 459
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 460
    .local v0, "action":I
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 480
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->requestStop()V

    goto :goto_0

    .line 462
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 463
    iput-boolean v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 466
    :pswitch_2
    nop

    .line 467
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 466
    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v3

    .line 468
    .local v3, "xTargetVelocity":F
    nop

    .line 469
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 468
    invoke-direct {p0, v2, v4, v5, v6}, Lcom/android/internal/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v4

    .line 470
    .local v4, "yTargetVelocity":F
    iget-object v5, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 474
    iget-boolean v5, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 475
    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->startAnimating()V

    .line 484
    .end local v3    # "xTargetVelocity":F
    .end local v4    # "yTargetVelocity":F
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 0
    .param p1, "delayMillis"    # I

    .line 411
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mActivationDelay:I

    .line 412
    return-object p0
.end method

.method public setEdgeType(I)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 0
    .param p1, "type"    # I

    .line 353
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeType:I

    .line 354
    return-object p0
.end method

.method public setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 1
    .param p1, "enabled"    # Z

    .line 234
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->requestStop()V

    .line 238
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    .line 239
    return-object p0
.end method

.method public setExclusive(Z)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 0
    .param p1, "exclusive"    # Z

    .line 262
    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    .line 263
    return-object p0
.end method

.method public setMaximumEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 2
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .line 394
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 396
    return-object p0
.end method

.method public setMaximumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, p1, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 294
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    div-float v1, p2, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 295
    return-object p0
.end method

.method public setMinimumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontalMin"    # F
    .param p2, "verticalMin"    # F

    .line 311
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, p1, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 312
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    div-float v1, p2, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 313
    return-object p0
.end method

.method public setRampDownDuration(I)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 1
    .param p1, "durationMillis"    # I

    .line 441
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    .line 442
    return-object p0
.end method

.method public setRampUpDuration(I)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 1
    .param p1, "durationMillis"    # I

    .line 426
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    .line 427
    return-object p0
.end method

.method public setRelativeEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 2
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .line 372
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 374
    return-object p0
.end method

.method public setRelativeVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .line 332
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, p1, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 333
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    div-float v1, p2, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 334
    return-object p0
.end method
