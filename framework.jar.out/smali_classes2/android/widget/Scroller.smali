.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Scroller$ViscousFluidInterpolator;
    }
.end annotation


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field bIsPerfBoostEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingBoost:Landroid/os/IBinder;

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPerf:Landroid/util/BoostFramework;

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field private mPreStartX:I

.field private mPreStartY:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F

.field private sBoostParamVal:[I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 103
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/Scroller;->DECELERATION_RATE:F

    .line 111
    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    .line 112
    new-array v0, v0, [F

    sput-object v0, Landroid/widget/Scroller;->SPLINE_TIME:[F

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "x_min":F
    const/4 v1, 0x0

    .line 139
    .local v1, "y_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    .line 140
    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    .line 142
    .local v5, "alpha":F
    move v3, v0

    move v0, v4

    .line 145
    .local v0, "x_max":F
    .local v3, "x_min":F
    :goto_1
    sub-float v6, v0, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v3

    .line 146
    .local v6, "x":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v8, v6

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    .line 147
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

    .line 148
    .local v10, "tx":F
    sub-float v13, v10, v5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v13, v13, v15

    if-gez v13, :cond_2

    .line 152
    sget-object v13, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    sub-float v14, v4, v6

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v14, v14, v17

    add-float/2addr v14, v6

    mul-float/2addr v14, v9

    mul-float v18, v6, v6

    mul-float v18, v18, v6

    add-float v14, v14, v18

    aput v14, v13, v2

    .line 154
    move v13, v9

    move v9, v1

    move v1, v4

    .line 157
    .local v1, "y_max":F
    .local v9, "y_min":F
    .local v13, "coef":F
    :goto_2
    sub-float v14, v1, v9

    div-float/2addr v14, v7

    add-float/2addr v14, v9

    .line 158
    .local v14, "y":F
    mul-float v18, v8, v14

    sub-float v19, v4, v14

    mul-float v13, v18, v19

    .line 159
    sub-float v18, v4, v14

    mul-float v18, v18, v17

    add-float v18, v18, v14

    mul-float v18, v18, v13

    mul-float v19, v14, v14

    mul-float v19, v19, v14

    add-float v18, v18, v19

    .line 160
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

    .line 164
    sget-object v7, Landroid/widget/Scroller;->SPLINE_TIME:[F

    sub-float/2addr v4, v14

    mul-float/2addr v4, v11

    mul-float/2addr v12, v14

    add-float/2addr v4, v12

    mul-float/2addr v4, v13

    mul-float v8, v14, v14

    mul-float/2addr v8, v14

    add-float/2addr v4, v8

    aput v4, v7, v2

    .line 139
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

    .line 161
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

    .line 154
    move/from16 v9, v20

    .end local v14    # "y":F
    .end local v18    # "dy":F
    .end local v20    # "y_min":F
    .restart local v9    # "y_min":F
    :goto_3
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    .line 162
    .end local v9    # "y_min":F
    .restart local v14    # "y":F
    .restart local v18    # "dy":F
    .restart local v20    # "y_min":F
    :cond_1
    move v9, v14

    .end local v20    # "y_min":F
    .restart local v9    # "y_min":F
    goto :goto_3

    .line 149
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

    .line 150
    :cond_3
    move v3, v6

    goto/16 :goto_1

    .line 166
    .end local v2    # "i":I
    .end local v3    # "x_min":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v9    # "coef":F
    .end local v10    # "tx":F
    .local v0, "x_min":F
    :cond_4
    sget-object v2, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    sget-object v5, Landroid/widget/Scroller;->SPLINE_TIME:[F

    aput v4, v5, v3

    aput v4, v2, v3

    .line 167
    .end local v0    # "x_min":F
    .end local v1    # "y_min":F
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 182
    nop

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mFlingFriction:F

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Scroller;->mPerf:Landroid/util/BoostFramework;

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Scroller;->bIsPerfBoostEnabled:Z

    .line 132
    const v1, 0x7fffffff

    iput v1, p0, Landroid/widget/Scroller;->mPreStartX:I

    .line 133
    iput v1, p0, Landroid/widget/Scroller;->mPreStartY:I

    .line 134
    iput-object v0, p0, Landroid/widget/Scroller;->mFlingBoost:Landroid/os/IBinder;

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 193
    iput-object p1, p0, Landroid/widget/Scroller;->mContext:Landroid/content/Context;

    .line 194
    if-nez p2, :cond_0

    .line 195
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 197
    :cond_0
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 199
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mPpi:F

    .line 200
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 201
    iput-boolean p3, p0, Landroid/widget/Scroller;->mFlywheel:Z

    .line 203
    const v0, 0x3f570a3d    # 0.84f

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    .line 205
    iget-object v0, p0, Landroid/widget/Scroller;->mPerf:Landroid/util/BoostFramework;

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0, p1}, Landroid/util/BoostFramework;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Scroller;->mPerf:Landroid/util/BoostFramework;

    .line 209
    :cond_1
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/widget/Scroller;->mFlingBoost:Landroid/os/IBinder;

    .line 211
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2
    .param p1, "friction"    # F

    .line 226
    iget v0, p0, Landroid/widget/Scroller;->mPpi:F

    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    mul-float/2addr v1, p1

    return v1
.end method

.method private getSplineDeceleration(F)D
    .locals 3
    .param p1, "velocity"    # F

    .line 520
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v0

    iget v0, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v0, v2

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(F)D
    .locals 8
    .param p1, "velocity"    # F

    .line 530
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 531
    .local v0, "l":D
    sget v2, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 532
    .local v2, "decelMinusOne":D
    iget v4, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(F)I
    .locals 8
    .param p1, "velocity"    # F

    .line 524
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 525
    .local v0, "l":D
    sget v2, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 526
    .local v2, "decelMinusOne":D
    div-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v4

    double-to-int v4, v6

    return v4
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 543
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 544
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 546
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 12

    .line 330
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    return v0

    .line 334
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 336
    .local v0, "timePassed":I
    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    .line 337
    iget v1, p0, Landroid/widget/Scroller;->mMode:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 344
    :pswitch_0
    int-to-float v1, v0

    iget v3, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 345
    .local v1, "t":F
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v3, v1

    float-to-int v4, v4

    .line 346
    .local v4, "index":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 347
    .local v5, "distanceCoef":F
    const/4 v6, 0x0

    .line 348
    .local v6, "velocityCoef":F
    const/16 v7, 0x64

    if-ge v4, v7, :cond_1

    .line 349
    int-to-float v7, v4

    div-float/2addr v7, v3

    .line 350
    .local v7, "t_inf":F
    add-int/lit8 v8, v4, 0x1

    int-to-float v8, v8

    div-float/2addr v8, v3

    .line 351
    .local v8, "t_sup":F
    sget-object v3, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    aget v3, v3, v4

    .line 352
    .local v3, "d_inf":F
    sget-object v9, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    add-int/lit8 v10, v4, 0x1

    aget v9, v9, v10

    .line 353
    .local v9, "d_sup":F
    sub-float v10, v9, v3

    sub-float v11, v8, v7

    div-float v6, v10, v11

    .line 354
    sub-float v10, v1, v7

    mul-float/2addr v10, v6

    add-float v5, v3, v10

    .line 357
    .end local v3    # "d_inf":F
    .end local v7    # "t_inf":F
    .end local v8    # "t_sup":F
    .end local v9    # "d_sup":F
    :cond_1
    iget v3, p0, Landroid/widget/Scroller;->mDistance:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    iget v7, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v7

    iput v3, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    .line 359
    iget v3, p0, Landroid/widget/Scroller;->mStartX:I

    iget v7, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v8, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v3, v7

    iput v3, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 361
    iget v3, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v7, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 362
    iget v3, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v7, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 364
    iget v3, p0, Landroid/widget/Scroller;->mStartY:I

    iget v7, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v8, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v3, v7

    iput v3, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 366
    iget v3, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v7, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 367
    iget v3, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v7, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 369
    iget v3, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v7, p0, Landroid/widget/Scroller;->mFinalX:I

    if-ne v3, v7, :cond_2

    iget v3, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v7, p0, Landroid/widget/Scroller;->mFinalY:I

    if-ne v3, v7, :cond_2

    .line 370
    iput-boolean v2, p0, Landroid/widget/Scroller;->mFinished:Z

    .end local v1    # "t":F
    .end local v4    # "index":I
    .end local v5    # "distanceCoef":F
    .end local v6    # "velocityCoef":F
    goto :goto_0

    .line 339
    :pswitch_1
    iget-object v1, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    mul-float/2addr v3, v4

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 340
    .local v1, "x":F
    iget v3, p0, Landroid/widget/Scroller;->mStartX:I

    iget v4, p0, Landroid/widget/Scroller;->mDeltaX:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 341
    iget v3, p0, Landroid/widget/Scroller;->mStartY:I

    iget v4, p0, Landroid/widget/Scroller;->mDeltaY:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 342
    nop

    .line 373
    .end local v1    # "x":F
    :cond_2
    :goto_0
    goto :goto_1

    .line 377
    :cond_3
    iget v1, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v1, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 378
    iget v1, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v1, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 379
    iput-boolean v2, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 381
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .param p1, "extend"    # I

    .line 557
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    .line 558
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    .line 559
    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    iput v2, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 560
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 561
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 16
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 467
    iget-boolean v5, v0, Landroid/widget/Scroller;->mFlywheel:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v5, :cond_0

    .line 468
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v5

    .line 470
    .local v5, "oldVel":F
    iget v6, v0, Landroid/widget/Scroller;->mFinalX:I

    iget v7, v0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 471
    .local v6, "dx":F
    iget v7, v0, Landroid/widget/Scroller;->mFinalY:I

    iget v8, v0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 472
    .local v7, "dy":F
    float-to-double v8, v6

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 474
    .local v8, "hyp":F
    div-float v9, v6, v8

    .line 475
    .local v9, "ndx":F
    div-float v10, v7, v8

    .line 477
    .local v10, "ndy":F
    mul-float v11, v9, v5

    .line 478
    .local v11, "oldVelocityX":F
    mul-float v12, v10, v5

    .line 479
    .local v12, "oldVelocityY":F
    int-to-float v13, v3

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v13

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-nez v13, :cond_0

    int-to-float v13, v4

    .line 480
    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v13

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-nez v13, :cond_0

    .line 481
    int-to-float v13, v3

    add-float/2addr v13, v11

    float-to-int v3, v13

    .line 482
    .end local p3    # "velocityX":I
    .local v3, "velocityX":I
    int-to-float v13, v4

    add-float/2addr v13, v12

    float-to-int v4, v13

    .line 486
    .end local v5    # "oldVel":F
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v8    # "hyp":F
    .end local v9    # "ndx":F
    .end local v10    # "ndy":F
    .end local v11    # "oldVelocityX":F
    .end local v12    # "oldVelocityY":F
    .end local p4    # "velocityY":I
    .local v4, "velocityY":I
    :cond_0
    const/4 v5, 0x1

    iput v5, v0, Landroid/widget/Scroller;->mMode:I

    .line 487
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/Scroller;->mFinished:Z

    .line 489
    int-to-double v5, v3

    int-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 491
    .local v5, "velocity":F
    iput v5, v0, Landroid/widget/Scroller;->mVelocity:F

    .line 492
    invoke-direct {v0, v5}, Landroid/widget/Scroller;->getSplineFlingDuration(F)I

    move-result v6

    iput v6, v0, Landroid/widget/Scroller;->mDuration:I

    .line 493
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/Scroller;->mStartTime:J

    .line 494
    iput v1, v0, Landroid/widget/Scroller;->mStartX:I

    .line 495
    iput v2, v0, Landroid/widget/Scroller;->mStartY:I

    .line 497
    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v7, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    int-to-float v7, v3

    div-float/2addr v7, v5

    .line 498
    .local v7, "coeffX":F
    :goto_0
    cmpl-float v6, v5, v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v6, v4

    div-float v8, v6, v5

    :goto_1
    move v6, v8

    .line 500
    .local v6, "coeffY":F
    invoke-direct {v0, v5}, Landroid/widget/Scroller;->getSplineFlingDistance(F)D

    move-result-wide v8

    .line 501
    .local v8, "totalDistance":D
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v10

    float-to-double v10, v10

    mul-double/2addr v10, v8

    double-to-int v10, v10

    iput v10, v0, Landroid/widget/Scroller;->mDistance:I

    .line 503
    move/from16 v10, p5

    iput v10, v0, Landroid/widget/Scroller;->mMinX:I

    .line 504
    move/from16 v11, p6

    iput v11, v0, Landroid/widget/Scroller;->mMaxX:I

    .line 505
    move/from16 v12, p7

    iput v12, v0, Landroid/widget/Scroller;->mMinY:I

    .line 506
    move/from16 v13, p8

    iput v13, v0, Landroid/widget/Scroller;->mMaxY:I

    .line 508
    float-to-double v14, v7

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    add-int/2addr v14, v1

    iput v14, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 510
    iget v14, v0, Landroid/widget/Scroller;->mFinalX:I

    iget v15, v0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iput v14, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 511
    iget v14, v0, Landroid/widget/Scroller;->mFinalX:I

    iget v15, v0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 513
    float-to-double v14, v6

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    add-int/2addr v14, v2

    iput v14, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 515
    iget v14, v0, Landroid/widget/Scroller;->mFinalY:I

    iget v15, v0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iput v14, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 516
    iget v14, v0, Landroid/widget/Scroller;->mFinalY:I

    iget v15, v0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 517
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .line 248
    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 249
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .line 285
    iget v0, p0, Landroid/widget/Scroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 286
    iget v0, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/Scroller;->mVelocity:F

    iget v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 285
    :goto_0
    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .line 266
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .line 275
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 257
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .line 313
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .line 322
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .line 295
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .line 304
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 602
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v2, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 603
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v2, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 602
    :goto_0
    return v0
.end method

.method public setFinalX(I)V
    .locals 2
    .param p1, "newX"    # I

    .line 580
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 581
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 583
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .param p1, "newY"    # I

    .line 593
    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 594
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 596
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 221
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 222
    iput p1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    .line 223
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 399
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 400
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 5
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    .line 418
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 419
    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    .line 420
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 421
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 422
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 423
    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 424
    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 425
    int-to-float v0, p3

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 426
    int-to-float v0, p4

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 427
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 435
    iget-object v0, p0, Landroid/widget/Scroller;->mFlingBoost:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    iget v0, p0, Landroid/widget/Scroller;->mPreStartX:I

    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/Scroller;->mPreStartY:I

    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    if-eq v0, v1, :cond_1

    .line 436
    :cond_0
    iget-object v0, p0, Landroid/widget/Scroller;->mFlingBoost:Landroid/os/IBinder;

    const-string v1, "com.fling.overscroller"

    const/16 v2, 0xa

    iget v3, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BSPApplicationManager$Trigger;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 443
    :cond_1
    return-void
.end method

.method public timePassed()I
    .locals 4

    .line 569
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
