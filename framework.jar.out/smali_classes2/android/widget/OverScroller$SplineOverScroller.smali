.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$SplineOverScroller$releasePerformanceLockRunnable;
    }
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingBoost:Landroid/os/IBinder;

.field private mFlingFriction:F

.field private mHandler:Landroid/os/Handler;

.field private mIsPerfLockAcquired:Z

.field private mOver:I

.field private mPerf:Landroid/util/BoostFramework;

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 606
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 614
    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 615
    new-array v0, v0, [F

    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, "x_min":F
    const/4 v1, 0x0

    .line 636
    .local v1, "y_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    .line 637
    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    .line 639
    .local v5, "alpha":F
    move v3, v0

    move v0, v4

    .line 642
    .local v0, "x_max":F
    .local v3, "x_min":F
    :goto_1
    sub-float v6, v0, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v3

    .line 643
    .local v6, "x":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v8, v6

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    .line 644
    .local v9, "coef":F
    sub-float v10, v4, v6

    const v11, 0x3e333333    # 0.175f

    mul-float/2addr v10, v11

    const v12, 0x3eb33334    # 0.35000002f

    mul-float v13, v6, v12

    add-float/2addr v10, v13

    mul-float/2addr v10, v9

    mul-float v13, v6, v6

    mul-float/2addr v13, v6

    add-float/2addr v10, v13

    .line 645
    .local v10, "tx":F
    sub-float v13, v10, v5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v13, v13, v15

    if-gez v13, :cond_2

    .line 649
    sget-object v13, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sub-float v14, v4, v6

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v14, v14, v17

    add-float/2addr v14, v6

    mul-float/2addr v14, v9

    mul-float v18, v6, v6

    mul-float v18, v18, v6

    add-float v14, v14, v18

    aput v14, v13, v2

    .line 651
    move v13, v9

    move v9, v1

    move v1, v4

    .line 654
    .local v1, "y_max":F
    .local v9, "y_min":F
    .local v13, "coef":F
    :goto_2
    sub-float v14, v1, v9

    div-float/2addr v14, v7

    add-float/2addr v14, v9

    .line 655
    .local v14, "y":F
    mul-float v18, v8, v14

    sub-float v19, v4, v14

    mul-float v13, v18, v19

    .line 656
    sub-float v18, v4, v14

    mul-float v18, v18, v17

    add-float v18, v18, v14

    mul-float v18, v18, v13

    mul-float v19, v14, v14

    mul-float v19, v19, v14

    add-float v18, v18, v19

    .line 657
    .local v18, "dy":F
    sub-float v7, v18, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v20, v9

    float-to-double v8, v7

    .end local v9    # "y_min":F
    .local v20, "y_min":F
    cmpg-double v7, v8, v15

    if-gez v7, :cond_0

    .line 661
    sget-object v7, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    sub-float/2addr v4, v14

    mul-float/2addr v4, v11

    mul-float/2addr v12, v14

    add-float/2addr v4, v12

    mul-float/2addr v4, v13

    mul-float v8, v14, v14

    mul-float/2addr v8, v14

    add-float/2addr v4, v8

    aput v4, v7, v2

    .line 636
    .end local v0    # "x_max":F
    .end local v1    # "y_max":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v10    # "tx":F
    .end local v13    # "coef":F
    .end local v14    # "y":F
    .end local v18    # "dy":F
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    move/from16 v1, v20

    goto/16 :goto_0

    .line 658
    .restart local v0    # "x_max":F
    .restart local v1    # "y_max":F
    .restart local v5    # "alpha":F
    .restart local v6    # "x":F
    .restart local v10    # "tx":F
    .restart local v13    # "coef":F
    .restart local v14    # "y":F
    .restart local v18    # "dy":F
    :cond_0
    cmpl-float v7, v18, v5

    if-lez v7, :cond_1

    move v1, v14

    .line 651
    move/from16 v9, v20

    .end local v14    # "y":F
    .end local v18    # "dy":F
    .end local v20    # "y_min":F
    .restart local v9    # "y_min":F
    :goto_3
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    .line 659
    .end local v9    # "y_min":F
    .restart local v14    # "y":F
    .restart local v18    # "dy":F
    .restart local v20    # "y_min":F
    :cond_1
    move v9, v14

    .end local v20    # "y_min":F
    .restart local v9    # "y_min":F
    goto :goto_3

    .line 646
    .end local v13    # "coef":F
    .end local v14    # "y":F
    .end local v18    # "dy":F
    .local v1, "y_min":F
    .local v9, "coef":F
    :cond_2
    cmpl-float v7, v10, v5

    if-lez v7, :cond_3

    move v0, v6

    goto/16 :goto_1

    .line 647
    :cond_3
    move v3, v6

    goto/16 :goto_1

    .line 663
    .end local v2    # "i":I
    .end local v3    # "x_min":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v9    # "coef":F
    .end local v10    # "tx":F
    .local v0, "x_min":F
    :cond_4
    sget-object v2, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v5, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v4, v5, v3

    aput v4, v2, v3

    .line 664
    .end local v0    # "x_min":F
    .end local v1    # "y_min":F
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 598
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 626
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    .line 627
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 629
    iput-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingBoost:Landroid/os/IBinder;

    .line 671
    iput-object p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    .line 673
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingBoost:Landroid/os/IBinder;

    .line 674
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mHandler:Landroid/os/Handler;

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 677
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    .line 678
    .local v0, "ppi":F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d    # 0.84f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 683
    invoke-static {}, Landroid/widget/OverScroller;->access$800()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    if-nez v1, :cond_0

    .line 684
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1, p1}, Landroid/util/BoostFramework;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    .line 686
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .line 556
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;
    .param p1, "x1"    # Z

    .line 556
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .line 556
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .line 556
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;
    .param p1, "x1"    # Z

    .line 556
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/OverScroller$SplineOverScroller;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .line 556
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .line 556
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .line 556
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .line 556
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/OverScroller$SplineOverScroller;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .line 556
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .line 556
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .line 704
    sub-int v0, p2, p1

    .line 705
    .local v0, "oldDistance":I
    sub-int v1, p3, p1

    .line 706
    .local v1, "newDistance":I
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 707
    .local v2, "x":F
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v3, v2

    float-to-int v4, v4

    .line 708
    .local v4, "index":I
    const/16 v5, 0x64

    if-ge v4, v5, :cond_0

    .line 709
    int-to-float v5, v4

    div-float/2addr v5, v3

    .line 710
    .local v5, "x_inf":F
    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 711
    .local v6, "x_sup":F
    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v3, v4

    .line 712
    .local v3, "t_inf":F
    sget-object v7, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    .line 713
    .local v7, "t_sup":F
    sub-float v8, v2, v5

    sub-float v9, v6, v5

    div-float/2addr v8, v9

    sub-float v9, v7, v3

    mul-float/2addr v8, v9

    add-float/2addr v8, v3

    .line 714
    .local v8, "timeCoef":F
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 716
    .end local v3    # "t_inf":F
    .end local v5    # "x_inf":F
    .end local v6    # "x_sup":F
    .end local v7    # "t_sup":F
    .end local v8    # "timeCoef":F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 864
    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    .line 866
    .local v0, "durationToApex":F
    int-to-float v1, p3

    int-to-float v2, p3

    mul-float/2addr v1, v2

    .line 867
    .local v1, "velocitySquared":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    .line 868
    .local v2, "distanceToApex":F
    sub-int v3, p2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    .line 869
    .local v3, "distanceToEdge":F
    add-float v4, v2, v3

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v4

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 870
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v6, v4

    .line 869
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 871
    .local v4, "totalDuration":F
    iget-wide v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-float v7, v4, v0

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v7

    float-to-int v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 872
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 873
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 874
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .line 696
    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    :goto_0
    return v0
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .param p1, "velocity"    # I

    .line 846
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v0

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v0, v2

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .param p1, "velocity"    # I

    .line 850
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 851
    .local v0, "l":D
    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 852
    .local v2, "decelMinusOne":D
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .param p1, "velocity"    # I

    .line 857
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 858
    .local v0, "l":D
    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 859
    .local v2, "decelMinusOne":D
    div-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v4

    double-to-int v4, v6

    return v4
.end method

.method private onEdgeReached()V
    .locals 6

    .line 919
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 920
    .local v0, "velocitySquared":F
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float v1, v0, v1

    .line 921
    .local v1, "distance":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 923
    .local v3, "sign":F
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 925
    neg-float v4, v3

    mul-float/2addr v4, v0

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    div-float/2addr v4, v2

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 926
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v1, v2

    .line 929
    :cond_0
    float-to-int v2, v1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 930
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 931
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    neg-float v4, v1

    :goto_0
    float-to-int v4, v4

    add-int/2addr v2, v4

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 932
    const/high16 v2, 0x447a0000    # 1000.0f

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 933
    return-void
.end method

.method private startAfterEdge(IIII)V
    .locals 17
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p3

    .line 883
    move/from16 v9, p4

    const/4 v0, 0x1

    move/from16 v10, p2

    if-le v7, v10, :cond_0

    if-ge v7, v8, :cond_0

    .line 884
    const-string v1, "OverScroller"

    const-string/jumbo v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iput-boolean v0, v6, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 886
    return-void

    .line 888
    :cond_0
    const/4 v1, 0x0

    if-le v7, v8, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v11, v2

    .line 889
    .local v11, "positive":Z
    if-eqz v11, :cond_2

    move v2, v8

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    move v12, v2

    .line 890
    .local v12, "edge":I
    sub-int v13, v7, v12

    .line 891
    .local v13, "overDistance":I
    mul-int v2, v13, v9

    if-ltz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    move v14, v0

    .line 892
    .local v14, "keepIncreasing":Z
    if-eqz v14, :cond_4

    .line 894
    invoke-direct {v6, v7, v12, v9}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5

    .line 896
    :cond_4
    invoke-direct {v6, v9}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v15

    .line 897
    .local v15, "totalDistance":D
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    cmpl-double v0, v15, v0

    if-lez v0, :cond_7

    .line 898
    if-eqz v11, :cond_5

    move v3, v10

    goto :goto_3

    :cond_5
    move v3, v7

    :goto_3
    if-eqz v11, :cond_6

    move v4, v7

    goto :goto_4

    :cond_6
    move v4, v8

    :goto_4
    iget v5, v6, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v0, v6

    move v1, v7

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_5

    .line 900
    :cond_7
    invoke-direct {v6, v7, v12, v9}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 903
    .end local v15    # "totalDistance":D
    :goto_5
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 877
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 878
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 879
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 880
    return-void
.end method

.method private startSpringback(III)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 785
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 786
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 787
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 788
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 789
    sub-int v0, p1, p2

    .line 790
    .local v0, "delta":I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 792
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 793
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 794
    int-to-double v1, v0

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    mul-double/2addr v3, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v1, v1

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v1

    double-to-int v1, v3

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 795
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 6

    .line 936
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 953
    :pswitch_0
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 954
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 955
    goto :goto_0

    .line 957
    :pswitch_1
    return v1

    .line 939
    :pswitch_2
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v2, :cond_0

    .line 941
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 943
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 944
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 945
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 946
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 949
    :cond_0
    return v1

    .line 960
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 961
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 4
    .param p1, "extend"    # I

    .line 759
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 760
    .local v0, "time":J
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 761
    .local v2, "elapsedTime":I
    add-int v3, v2, p1

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 762
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 763
    return-void
.end method

.method finish()V
    .locals 1

    .line 740
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingBoost:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingBoost:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/BSPApplicationManager$Trigger;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 746
    :cond_0
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 751
    return-void
.end method

.method fling(IIIII)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .line 798
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 800
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, p2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 801
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 802
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 803
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 811
    iget-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingBoost:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 812
    iget-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingBoost:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/os/BSPApplicationManager$Trigger;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 813
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 817
    :cond_0
    if-gt p1, p4, :cond_5

    if-ge p1, p3, :cond_1

    goto :goto_0

    .line 822
    :cond_1
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 823
    const-wide/16 v0, 0x0

    .line 825
    .local v0, "totalDistance":D
    if-eqz p2, :cond_2

    .line 826
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 827
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 830
    :cond_2
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 831
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 834
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ge v2, p3, :cond_3

    .line 835
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 836
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 839
    :cond_3
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_4

    .line 840
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 841
    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 843
    :cond_4
    return-void

    .line 818
    .end local v0    # "totalDistance":D
    :cond_5
    :goto_0
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 819
    return-void
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .line 907
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 908
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 909
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 912
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 914
    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 754
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 756
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .line 667
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 668
    return-void
.end method

.method springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 768
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 769
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 771
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 772
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 774
    if-ge p1, p2, :cond_0

    .line 775
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 776
    :cond_0
    if-le p1, p3, :cond_1

    .line 777
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 780
    :cond_1
    :goto_0
    iget-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .line 719
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 721
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 722
    add-int v1, p1, p2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 724
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 725
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 728
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 729
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 730
    return-void
.end method

.method update()Z
    .locals 19

    .line 970
    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 971
    .local v1, "time":J
    iget-wide v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    .line 973
    .local v3, "currentTime":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_1

    .line 975
    iget v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-lez v5, :cond_0

    move v6, v7

    nop

    :cond_0
    return v6

    .line 977
    :cond_1
    iget v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v8, v5

    cmp-long v5, v3, v8

    if-lez v5, :cond_2

    .line 978
    return v6

    .line 981
    :cond_2
    invoke-static {}, Landroid/widget/OverScroller;->access$800()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    if-nez v5, :cond_3

    .line 982
    iget-object v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 984
    .local v5, "currentPackage":Ljava/lang/String;
    iput-boolean v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 989
    invoke-static {}, Landroid/widget/OverScroller;->access$900()Z

    move-result v6

    if-nez v6, :cond_3

    .line 990
    iget-object v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingBoost:Landroid/os/IBinder;

    const-string v8, "com.fling.overscroller"

    const/16 v9, 0xa

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v10, v10

    .line 991
    invoke-static {v6, v8, v9, v10, v11}, Landroid/os/BSPApplicationManager$Trigger;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 996
    iget-object v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mHandler:Landroid/os/Handler;

    new-instance v8, Landroid/widget/OverScroller$SplineOverScroller$releasePerformanceLockRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Landroid/widget/OverScroller$SplineOverScroller$releasePerformanceLockRunnable;-><init>(Landroid/widget/OverScroller$SplineOverScroller;Landroid/widget/OverScroller$1;)V

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v9, v9

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1002
    .end local v5    # "currentPackage":Ljava/lang/String;
    :cond_3
    const-wide/16 v5, 0x0

    .line 1003
    .local v5, "distance":D
    iget v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x447a0000    # 1000.0f

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_0

    .line 1024
    :pswitch_0
    long-to-float v8, v3

    div-float/2addr v8, v10

    .line 1025
    .local v8, "t":F
    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v10, v10

    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1026
    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float/2addr v11, v8

    mul-float/2addr v11, v8

    div-float/2addr v11, v9

    add-float/2addr v10, v11

    float-to-double v5, v10

    .line 1027
    goto :goto_0

    .line 1031
    .end local v8    # "t":F
    :pswitch_1
    long-to-float v8, v3

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    .line 1032
    .restart local v8    # "t":F
    mul-float v10, v8, v8

    .line 1033
    .local v10, "t2":F
    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v11

    .line 1034
    .local v11, "sign":F
    iget v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v12, v12

    mul-float/2addr v12, v11

    const/high16 v13, 0x40400000    # 3.0f

    mul-float/2addr v13, v10

    mul-float/2addr v9, v8

    mul-float/2addr v9, v10

    sub-float/2addr v13, v9

    mul-float/2addr v12, v13

    float-to-double v5, v12

    .line 1035
    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v9, v9

    mul-float/2addr v9, v11

    const/high16 v12, 0x40c00000    # 6.0f

    mul-float/2addr v9, v12

    neg-float v12, v8

    add-float/2addr v12, v10

    mul-float/2addr v9, v12

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1036
    goto :goto_0

    .line 1005
    .end local v8    # "t":F
    .end local v10    # "t2":F
    .end local v11    # "sign":F
    :pswitch_2
    long-to-float v8, v3

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 1006
    .restart local v8    # "t":F
    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v11, v9, v8

    float-to-int v11, v11

    .line 1007
    .local v11, "index":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1008
    .local v12, "distanceCoef":F
    const/4 v13, 0x0

    .line 1009
    .local v13, "velocityCoef":F
    const/16 v14, 0x64

    if-ge v11, v14, :cond_4

    .line 1010
    int-to-float v14, v11

    div-float/2addr v14, v9

    .line 1011
    .local v14, "t_inf":F
    add-int/lit8 v15, v11, 0x1

    int-to-float v15, v15

    div-float/2addr v15, v9

    .line 1012
    .local v15, "t_sup":F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v9, v9, v11

    .line 1013
    .local v9, "d_inf":F
    sget-object v16, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v17, v11, 0x1

    aget v16, v16, v17

    .line 1014
    .local v16, "d_sup":F
    sub-float v17, v16, v9

    sub-float v18, v15, v14

    div-float v13, v17, v18

    .line 1015
    sub-float v17, v8, v14

    mul-float v17, v17, v13

    add-float v12, v9, v17

    .line 1018
    .end local v9    # "d_inf":F
    .end local v14    # "t_inf":F
    .end local v15    # "t_sup":F
    .end local v16    # "d_sup":F
    :cond_4
    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v9, v9

    mul-float/2addr v9, v12

    float-to-double v5, v9

    .line 1019
    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v9, v9

    mul-float/2addr v9, v13

    iget v14, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v14, v14

    div-float/2addr v9, v14

    mul-float/2addr v9, v10

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1020
    nop

    .line 1040
    .end local v8    # "t":F
    .end local v11    # "index":I
    .end local v12    # "distanceCoef":F
    .end local v13    # "velocityCoef":F
    :goto_0
    iget v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1042
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .param p1, "q"    # F

    .line 689
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 690
    return-void
.end method
