.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
.super Ljava/lang/Object;
.source "AnimParam.java"


# static fields
.field public static final DEFAULT_HEIGHT:I = 0x780

.field public static final DEFAULT_WIDTH:I = 0x438

.field public static final DIRECT_INVALIDATE:I = -0x1

.field public static final DIRECT_LEFT_B2T:I = 0x1

.field public static final DIRECT_LEFT_T2B:I = 0x0

.field public static final DIRECT_RIGHT_B2T:I = 0x3

.field public static final DIRECT_RIGHT_T2B:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PageFlippingController"

.field public static final TIME_MAX:I = 0xdac

.field public static final TIME_PAGE_ALPHA_MAX:I = 0xc8

.field public static final TIME_PAGE_ALPHA_MIN:I = 0x14

.field public static final TIME_PAGE_PAGE_FLIPPING:I = 0x1f4

.field public static final ZONE_LEFT_BOTTOM:I = 0x5

.field public static final ZONE_LEFT_TOP:I = 0x4

.field public static final ZONE_RIGHT_BOTTOM:I = 0x7

.field public static final ZONE_RIGHT_TOP:I = 0x6


# instance fields
.field private final ANGLE_APP_FLIP1:F

.field private final ANGLE_APP_FLIP1_ROTATION:F

.field private final ANGLE_APP_FLIP2:F

.field private final ANGLE_APP_FLIP2_ROTATION:F

.field private mAnimFactorEnd:F

.field private mAnimFactorStart:F

.field private final mBasePoint:Landroid/graphics/PointF;

.field private mCurrentPoint:Landroid/graphics/PointF;

.field private mDirect:I

.field private mDownY:F

.field private mFactor:F

.field private mHandler:Landroid/os/Handler;

.field private mHashcodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightRemain:F

.field private mIsFirstUpdate:Z

.field private mIsFitWindowAdded:Z

.field private mLastY:F

.field private mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineFlipAngle:F

.field private mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

.field private mPageFlippingView:Landroid/opengl/GLSurfaceView;

.field private mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

.field private mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

.field private mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide v0, 0x405a400000000000L    # 105.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    .line 36
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    const v1, 0x40490fdb    # (float)Math.PI

    sub-float v0, v1, v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    .line 38
    const-wide v2, 0x4052c00000000000L    # 75.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    .line 39
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    .line 66
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 67
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 68
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    .line 69
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFirstUpdate:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFitWindowAdded:Z

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 14
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 14
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    return-object v0
.end method

.method public static createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .locals 8
    .param p0, "basePoint"    # Landroid/graphics/PointF;
    .param p1, "slope"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 272
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 273
    .local v0, "point":Landroid/graphics/PointF;
    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .line 274
    .local v1, "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFF)V

    .line 275
    const/high16 v2, -0x40800000    # -1.0f

    div-float/2addr v2, p1

    .line 276
    .end local p1    # "slope":F
    .local v2, "slope":F
    new-instance p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {p1, p2, p3, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(FFF)V

    .line 277
    .local p1, "lineFlipEnd":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    new-instance v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .line 278
    .local v3, "lineFlipEndEx":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v4, v5, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->symmetryPoint(FFLandroid/graphics/PointF;)V

    .line 279
    const/high16 v4, 0x43160000    # 150.0f

    invoke-virtual {p1, v3, v4, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    .line 280
    invoke-virtual {v3, v1, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    .line 281
    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->y:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v5, v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 282
    return-object v1
.end method

.method static getFactorByAnimationTime(I)F
    .locals 2
    .param p0, "time"    # I

    .line 205
    int-to-float v0, p0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getHeightRemain(F)F
    .locals 7
    .param p1, "currY"    # F

    .line 726
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v0

    .line 727
    .local v0, "rotation":I
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v1

    .line 728
    .local v1, "width":I
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v2

    .line 729
    .local v2, "height":I
    const/4 v3, 0x0

    .line 731
    .local v3, "heightRemain":F
    const/4 v4, 0x3

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    .line 763
    :pswitch_0
    iget v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 767
    :cond_0
    move v3, p1

    goto :goto_4

    .line 765
    :cond_1
    :goto_0
    int-to-float v4, v1

    sub-float v3, v4, p1

    goto :goto_4

    .line 753
    :pswitch_1
    iget v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 757
    :cond_2
    move v3, p1

    .line 760
    goto :goto_4

    .line 755
    :cond_3
    :goto_1
    int-to-float v4, v2

    sub-float v3, v4, p1

    goto :goto_4

    .line 743
    :pswitch_2
    iget v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v4, v5, :cond_4

    goto :goto_2

    .line 747
    :cond_4
    int-to-float v4, v1

    sub-float v3, v4, p1

    .line 750
    goto :goto_4

    .line 745
    :cond_5
    :goto_2
    move v3, p1

    goto :goto_4

    .line 733
    :pswitch_3
    iget v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v5, v6, :cond_7

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v4, v5, :cond_6

    goto :goto_3

    .line 737
    :cond_6
    int-to-float v4, v2

    sub-float v3, v4, p1

    .line 740
    goto :goto_4

    .line 735
    :cond_7
    :goto_3
    move v3, p1

    .line 773
    :goto_4
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getLineFlipAngle(IIFF)F
    .locals 3
    .param p0, "rotation"    # I
    .param p1, "direct"    # I
    .param p2, "y"    # F
    .param p3, "height"    # F

    .line 549
    invoke-static {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngleStart(II)F

    move-result v0

    .line 550
    .local v0, "angleStart":F
    invoke-static {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngleEnd(II)F

    move-result v1

    .line 552
    .local v1, "angleEnd":F
    const/4 v2, 0x0

    invoke-static {p2, v2, p3, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v2

    .line 553
    .local v2, "angle":F
    return v2
.end method

.method private static getLineFlipAngleEnd(II)F
    .locals 3
    .param p0, "rotation"    # I
    .param p1, "direct"    # I

    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, "angle":F
    packed-switch p0, :pswitch_data_0

    goto :goto_3

    .line 518
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    .line 536
    :pswitch_1
    const/high16 v0, 0x42d20000    # 105.0f

    goto :goto_3

    .line 531
    :pswitch_2
    const/high16 v0, 0x42700000    # 60.0f

    .line 532
    goto :goto_3

    .line 526
    :pswitch_3
    const/high16 v0, 0x42960000    # 75.0f

    .line 527
    goto :goto_3

    .line 521
    :pswitch_4
    const/high16 v0, 0x42f00000    # 120.0f

    .line 522
    goto :goto_3

    .line 492
    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 510
    :pswitch_6
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 505
    :pswitch_7
    const/high16 v0, 0x43160000    # 150.0f

    .line 506
    goto :goto_0

    .line 500
    :pswitch_8
    const/high16 v0, 0x43250000    # 165.0f

    .line 501
    goto :goto_0

    .line 495
    :pswitch_9
    const/high16 v0, 0x41f00000    # 30.0f

    .line 496
    nop

    .line 514
    :goto_0
    goto :goto_3

    .line 466
    :pswitch_a
    packed-switch p1, :pswitch_data_3

    goto :goto_1

    .line 484
    :pswitch_b
    const/high16 v0, 0x42f00000    # 120.0f

    goto :goto_1

    .line 479
    :pswitch_c
    const/high16 v0, 0x42960000    # 75.0f

    .line 480
    goto :goto_1

    .line 474
    :pswitch_d
    const/high16 v0, 0x42700000    # 60.0f

    .line 475
    goto :goto_1

    .line 469
    :pswitch_e
    const/high16 v0, 0x42d20000    # 105.0f

    .line 470
    nop

    .line 488
    :goto_1
    goto :goto_3

    .line 440
    :pswitch_f
    packed-switch p1, :pswitch_data_4

    goto :goto_2

    .line 458
    :pswitch_10
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_2

    .line 453
    :pswitch_11
    const/high16 v0, 0x43250000    # 165.0f

    .line 454
    goto :goto_2

    .line 448
    :pswitch_12
    const/high16 v0, 0x43160000    # 150.0f

    .line 449
    goto :goto_2

    .line 443
    :pswitch_13
    const/high16 v0, 0x41700000    # 15.0f

    .line 444
    nop

    .line 462
    :goto_2
    nop

    .line 544
    :goto_3
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_a
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private static getLineFlipAngleStart(II)F
    .locals 3
    .param p0, "rotation"    # I
    .param p1, "direct"    # I

    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, "angle":F
    packed-switch p0, :pswitch_data_0

    goto :goto_3

    .line 406
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    .line 424
    :pswitch_1
    const/high16 v0, 0x42f00000    # 120.0f

    goto :goto_3

    .line 419
    :pswitch_2
    const/high16 v0, 0x42960000    # 75.0f

    .line 420
    goto :goto_3

    .line 414
    :pswitch_3
    const/high16 v0, 0x42700000    # 60.0f

    .line 415
    goto :goto_3

    .line 409
    :pswitch_4
    const/high16 v0, 0x42d20000    # 105.0f

    .line 410
    goto :goto_3

    .line 380
    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 398
    :pswitch_6
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0

    .line 393
    :pswitch_7
    const/high16 v0, 0x43250000    # 165.0f

    .line 394
    goto :goto_0

    .line 388
    :pswitch_8
    const/high16 v0, 0x43160000    # 150.0f

    .line 389
    goto :goto_0

    .line 383
    :pswitch_9
    const/high16 v0, 0x41700000    # 15.0f

    .line 384
    nop

    .line 402
    :goto_0
    goto :goto_3

    .line 354
    :pswitch_a
    packed-switch p1, :pswitch_data_3

    goto :goto_1

    .line 372
    :pswitch_b
    const/high16 v0, 0x42d20000    # 105.0f

    goto :goto_1

    .line 367
    :pswitch_c
    const/high16 v0, 0x42700000    # 60.0f

    .line 368
    goto :goto_1

    .line 362
    :pswitch_d
    const/high16 v0, 0x42960000    # 75.0f

    .line 363
    goto :goto_1

    .line 357
    :pswitch_e
    const/high16 v0, 0x42f00000    # 120.0f

    .line 358
    nop

    .line 376
    :goto_1
    goto :goto_3

    .line 328
    :pswitch_f
    packed-switch p1, :pswitch_data_4

    goto :goto_2

    .line 346
    :pswitch_10
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_2

    .line 341
    :pswitch_11
    const/high16 v0, 0x43160000    # 150.0f

    .line 342
    goto :goto_2

    .line 336
    :pswitch_12
    const/high16 v0, 0x43250000    # 165.0f

    .line 337
    goto :goto_2

    .line 331
    :pswitch_13
    const/high16 v0, 0x41f00000    # 30.0f

    .line 332
    nop

    .line 350
    :goto_2
    nop

    .line 432
    :goto_3
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_a
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private getLineFlipApp(FI)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .locals 15
    .param p1, "factor"    # F
    .param p2, "direct"    # I

    move-object v0, p0

    .line 286
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 287
    .local v1, "basePoint":Landroid/graphics/PointF;
    const/high16 v2, 0x41f00000    # 30.0f

    .line 290
    .local v2, "ANGLE_CHANGE_TOTAL":F
    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 291
    .local v3, "width":F
    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 292
    .local v4, "height":F
    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v5

    .line 294
    .local v5, "rotation":I
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 303
    :pswitch_0
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iput v6, v1, Landroid/graphics/PointF;->x:F

    .line 304
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v6, v4, v6

    iput v6, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 297
    :pswitch_1
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v6, v3, v6

    iput v6, v1, Landroid/graphics/PointF;->x:F

    .line 298
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iput v6, v1, Landroid/graphics/PointF;->y:F

    .line 299
    nop

    .line 308
    :goto_0
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    .line 309
    neg-float v6, v2

    .local v6, "angle":F
    goto :goto_1

    .line 311
    .end local v6    # "angle":F
    :cond_0
    move v6, v2

    .line 314
    .restart local v6    # "angle":F
    :goto_1
    iget-object v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    const-wide v9, 0x4066800000000000L    # 180.0

    mul-double/2addr v7, v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v7, v11

    mul-float v13, p1, v6

    float-to-double v13, v13

    add-double/2addr v7, v13

    double-to-float v7, v7

    .line 316
    .local v7, "angleApp":F
    float-to-double v13, v7

    mul-double/2addr v13, v11

    div-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 318
    .local v8, "slopeApp":F
    iget v9, v1, Landroid/graphics/PointF;->x:F

    sub-float v9, v3, v9

    .line 319
    .local v9, "x":F
    iget v10, v1, Landroid/graphics/PointF;->y:F

    sub-float v10, v4, v10

    .line 320
    .local v10, "y":F
    invoke-static {v1, v8, v9, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v11

    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getPageAnimationTime(FF)I
    .locals 2
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F

    .line 201
    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private intAnimParam(IF)V
    .locals 8
    .param p1, "direct"    # I
    .param p2, "downY"    # F

    .line 557
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v0

    .line 558
    .local v0, "width":I
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v1

    .line 559
    .local v1, "height":I
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v2

    .line 561
    .local v2, "rotation":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 563
    .local v3, "slopeApp":F
    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 670
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 693
    :pswitch_1
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->x:F

    .line 694
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v5, v1

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 695
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v5, v1

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 696
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    goto :goto_0

    .line 686
    :pswitch_2
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v5, v0

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 687
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v5, v1

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 688
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v5, v1

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 689
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 690
    goto :goto_0

    .line 679
    :pswitch_3
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->x:F

    .line 680
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 681
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 682
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 683
    goto :goto_0

    .line 672
    :pswitch_4
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v6, v0

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 673
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 674
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 675
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 676
    nop

    .line 700
    :goto_0
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    iput v5, v4, Landroid/graphics/PointF;->x:F

    goto/16 :goto_4

    .line 635
    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto :goto_1

    .line 658
    :pswitch_6
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->x:F

    .line 659
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 660
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->x:F

    .line 661
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    goto :goto_1

    .line 651
    :pswitch_7
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->x:F

    .line 652
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v6, v1

    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 653
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->x:F

    .line 654
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 655
    goto :goto_1

    .line 644
    :pswitch_8
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v6, v0

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 645
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 646
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v5, v0

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 647
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 648
    goto :goto_1

    .line 637
    :pswitch_9
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v5, v0

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 638
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v5, v1

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 639
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v5, v0

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 640
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 641
    nop

    .line 665
    :goto_1
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 666
    goto/16 :goto_4

    .line 600
    :pswitch_a
    packed-switch p1, :pswitch_data_3

    goto :goto_2

    .line 623
    :pswitch_b
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v6, v0

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 624
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 625
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 626
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    goto :goto_2

    .line 616
    :pswitch_c
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->x:F

    .line 617
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 618
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 619
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 620
    goto :goto_2

    .line 609
    :pswitch_d
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v5, v0

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 610
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v5, v1

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 611
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v5, v1

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 612
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2_ROTATION:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 613
    goto :goto_2

    .line 602
    :pswitch_e
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->x:F

    .line 603
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v5, v1

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 604
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v5, v1

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 605
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1_ROTATION:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 606
    nop

    .line 630
    :goto_2
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 631
    goto :goto_4

    .line 565
    :pswitch_f
    packed-switch p1, :pswitch_data_4

    goto :goto_3

    .line 588
    :pswitch_10
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v5, v0

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 589
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v5, v1

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 590
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 591
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v5, v0

    iput v5, v4, Landroid/graphics/PointF;->x:F

    goto :goto_3

    .line 581
    :pswitch_11
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v6, v0

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 582
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 583
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 584
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    int-to-float v5, v0

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 585
    goto :goto_3

    .line 574
    :pswitch_12
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->x:F

    .line 575
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    int-to-float v6, v1

    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 576
    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP2:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v3, v5

    .line 577
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->x:F

    .line 578
    goto :goto_3

    .line 567
    :pswitch_13
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->x:F

    .line 568
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 569
    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->ANGLE_APP_FLIP1:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v3, v5

    .line 570
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput v4, v5, Landroid/graphics/PointF;->x:F

    .line 571
    nop

    .line 595
    :goto_3
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 596
    nop

    .line 705
    :goto_4
    int-to-float v4, v0

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    .line 706
    .local v4, "x":F
    int-to-float v5, v1

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    .line 708
    .local v5, "y":F
    packed-switch v2, :pswitch_data_5

    goto :goto_5

    .line 716
    :pswitch_14
    iget v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    int-to-float v7, v0

    invoke-static {v2, p1, v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngle(IIFF)F

    move-result v6

    iput v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    goto :goto_5

    .line 711
    :pswitch_15
    iget v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    int-to-float v7, v1

    invoke-static {v2, p1, v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngle(IIFF)F

    move-result v6

    iput v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    .line 712
    nop

    .line 720
    :goto_5
    iget v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 721
    .local v6, "slope":F
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    invoke-static {v7, v6, v4, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 722
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    invoke-static {v7, v3, v4, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipApp:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 723
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_a
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method public static isDirectLeft(I)Z
    .locals 1
    .param p0, "direct"    # I

    .line 143
    const/4 v0, 0x1

    .line 145
    .local v0, "isLeft":Z
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :pswitch_1
    const/4 v0, 0x1

    .line 149
    nop

    .line 157
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method checkGuidePageAnimPara(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 240
    .local p1, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    .line 245
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 247
    .local v0, "pageNum":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 252
    const/4 v1, 0x1

    return v1

    .line 248
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGuidePageAnimPara error pageNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PageFlippingController"

    invoke-static {v2, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkGuidePageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    .end local v0    # "pageNum":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGuidePageAnimPara error hashcode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PageFlippingController"

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkGuidePageAnimPara error!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkLoopPageAnimPara()Z
    .locals 3

    .line 256
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 263
    .local v0, "pageNum":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 268
    const/4 v1, 0x1

    return v1

    .line 264
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLoopPageAnimPara error pageNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PageFlippingController"

    invoke-static {v2, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkLoopPageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    .end local v0    # "pageNum":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkLoopPageAnimPara error direct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; hashcode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PageFlippingController"

    invoke-static {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkLoopPageAnimPara error!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkPageAnimPara(Z)Z
    .locals 5
    .param p1, "needThrow"    # Z

    .line 213
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 226
    .local v0, "pageNum":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 227
    const-string v2, "PageFlippingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPageAnimPara error pageNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-nez p1, :cond_1

    .line 233
    return v1

    .line 230
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkPageAnimPara error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 214
    .end local v0    # "pageNum":I
    :cond_3
    :goto_0
    const-string v0, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPageAnimPara error direct = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; hashcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-nez p1, :cond_4

    .line 221
    return v1

    .line 218
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkPageAnimPara error!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getAnimFactorEnd()F
    .locals 1

    .line 103
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mAnimFactorEnd:F

    return v0
.end method

.method getAnimFactorStart()F
    .locals 1

    .line 95
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mAnimFactorStart:F

    return v0
.end method

.method getAppPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .locals 15
    .param p1, "factor"    # F
    .param p2, "indexFg"    # I
    .param p3, "indexBg"    # I
    .param p4, "alphaFg"    # F
    .param p5, "alphaBg"    # F

    move-object v0, p0

    .line 192
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    move/from16 v2, p2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 193
    .local v1, "hashcode":I
    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v10

    .line 194
    .local v10, "textureIdFg":I
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    move/from16 v11, p3

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 195
    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v12

    .line 196
    .local v12, "textureIdBg":I
    new-instance v13, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    iget v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    move/from16 v14, p1

    invoke-direct {v0, v14, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipApp(FI)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v4

    move-object v3, v13

    move v5, v14

    move v6, v10

    move v7, v12

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FIIFF)V

    return-object v13
.end method

.method getDirect()I
    .locals 1

    .line 83
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    return v0
.end method

.method public getFactor()F
    .locals 1

    .line 111
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mFactor:F

    return v0
.end method

.method public getFactorByY(F)F
    .locals 8
    .param p1, "y"    # F

    .line 923
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v0

    .line 924
    .local v0, "slope":F
    const/high16 v1, -0x40800000    # -1.0f

    div-float/2addr v1, v0

    .line 926
    .end local v0    # "slope":F
    .local v1, "slope":F
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 934
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 929
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 930
    nop

    .line 938
    :goto_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mCurrentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, v3, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(FFF)V

    .line 939
    .local v0, "lineFlipEnd":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 940
    .local v2, "point":Landroid/graphics/PointF;
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v0, v3, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    .line 941
    new-instance v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5, v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(FFFF)V

    .line 942
    .local v3, "lineEx":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getLength()F

    move-result v4

    const/high16 v5, 0x43160000    # 150.0f

    add-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 943
    invoke-virtual {v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getLength()F

    move-result v5

    div-float/2addr v4, v5

    .line 944
    .local v4, "factor":F
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getFitWindowAdded()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFitWindowAdded:Z

    return v0
.end method

.method getHashcodeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->getSurfaceHeight()I

    move-result v0

    return v0

    .line 130
    :cond_0
    const/16 v0, 0x780

    return v0
.end method

.method getPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .locals 14
    .param p1, "factor"    # F
    .param p2, "indexFg"    # I
    .param p3, "indexBg"    # I
    .param p4, "alphaFg"    # F
    .param p5, "alphaBg"    # F

    move-object v0, p0

    .line 182
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    move/from16 v2, p2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 183
    .local v1, "hashcode":I
    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v10

    .line 184
    .local v10, "textureIdFg":I
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    move/from16 v11, p3

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 185
    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getTextureId(I)I

    move-result v12

    .line 186
    .local v12, "textureIdBg":I
    new-instance v13, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-object v3, v13

    move v5, p1

    move v6, v10

    move v7, v12

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FIIFF)V

    return-object v13
.end method

.method getRotation()I
    .locals 1

    .line 135
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->getSurfaceRotation()I

    move-result v0

    return v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTextureId(I)I
    .locals 1
    .param p1, "hashcode"    # I

    .line 161
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getTextureId(I)I

    move-result v0

    return v0
.end method

.method getWidth()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->getSurfaceWidth()I

    move-result v0

    return v0

    .line 122
    :cond_0
    const/16 v0, 0x438

    return v0
.end method

.method isAppWindowCreated()Z
    .locals 1

    .line 907
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    .line 908
    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;->isAppWindowCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 907
    :goto_0
    return v0
.end method

.method isLauncherWindowCreated()Z
    .locals 1

    .line 912
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    .line 913
    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;->isLauncherWindowCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 912
    :goto_0
    return v0
.end method

.method onAnimationEnd()V
    .locals 2

    .line 858
    const-string v0, "PageFlippingController"

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$1;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 868
    return-void
.end method

.method onDrawFirstFrame()V
    .locals 1

    .line 871
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;->onDrawFirstFrame()V

    .line 874
    :cond_0
    return-void
.end method

.method onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V
    .locals 9
    .param p1, "drawContent"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    .line 886
    const/4 v0, 0x0

    .line 888
    .local v0, "z":F
    iget-object v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mPageList:Ljava/util/List;

    .line 890
    .local v1, "pageList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;>;"
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "z":F
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 891
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    .line 892
    .local v4, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v5

    .line 893
    .local v5, "offset":[F
    const/4 v6, 0x2

    aput v3, v5, v6

    .line 894
    aget v7, v5, v2

    const/4 v8, 0x1

    aget v8, v5, v8

    aget v6, v5, v6

    invoke-virtual {v4, v7, v8, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setOffset(FFF)V

    .line 895
    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v3, v6

    .line 890
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    .end local v0    # "i":I
    .end local v4    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .end local v5    # "offset":[F
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$2;

    invoke-direct {v4, p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam$2;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    invoke-virtual {v2, v4}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 904
    return-void
.end method

.method postRunable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 877
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v1, p1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 878
    return-void
.end method

.method postRunable(Ljava/lang/Runnable;I)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "time"    # I

    .line 881
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v1, p1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeRunnbale(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 882
    return-void
.end method

.method reset()V
    .locals 1

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mFactor:F

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFirstUpdate:Z

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFitWindowAdded:Z

    .line 80
    return-void
.end method

.method setAnimFactorEnd(F)V
    .locals 0
    .param p1, "factor"    # F

    .line 107
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mAnimFactorEnd:F

    .line 108
    return-void
.end method

.method setAnimFactorStart(F)V
    .locals 0
    .param p1, "factor"    # F

    .line 99
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mAnimFactorStart:F

    .line 100
    return-void
.end method

.method setAnimSyncListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;)V
    .locals 0
    .param p1, "animSync"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    .line 845
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingAnimSync:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingAnimSync;

    .line 846
    return-void
.end method

.method setDirect(IF)V
    .locals 2
    .param p1, "direct"    # I
    .param p2, "downY"    # F

    .line 87
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 88
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    .line 89
    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDownY:F

    .line 90
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->intAnimParam(IF)V

    .line 92
    :cond_0
    return-void
.end method

.method public setFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .line 115
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mFactor:F

    .line 116
    return-void
.end method

.method setFitWindowAdded(Z)V
    .locals 0
    .param p1, "fitWindowAdded"    # Z

    .line 165
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFitWindowAdded:Z

    .line 166
    return-void
.end method

.method setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 0
    .param p1, "pageFlippingView"    # Landroid/opengl/GLSurfaceView;

    .line 854
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mPageFlippingView:Landroid/opengl/GLSurfaceView;

    .line 855
    return-void
.end method

.method setHashcodeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p1, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHashcodeList:Ljava/util/List;

    .line 174
    return-void
.end method

.method setRender(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    .line 841
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mRenderer:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    .line 842
    return-void
.end method

.method setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 1
    .param p1, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 849
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 850
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHandler:Landroid/os/Handler;

    .line 851
    return-void
.end method

.method setTextureManagement(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;)V
    .locals 0
    .param p1, "management"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    .line 209
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    .line 210
    return-void
.end method

.method public updateLineFlip(F)V
    .locals 11
    .param p1, "currY"    # F

    .line 777
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getRotation()I

    move-result v0

    .line 779
    .local v0, "rotation":I
    const/4 v1, 0x1

    .line 781
    .local v1, "isIncreased":Z
    iget-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFirstUpdate:Z

    if-eqz v2, :cond_0

    .line 782
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mIsFirstUpdate:Z

    .line 783
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLastY:F

    .line 784
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeightRemain(F)F

    move-result v2

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHeightRemain:F

    .line 787
    :cond_0
    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLastY:F

    sub-float v2, p1, v2

    .line 788
    .local v2, "deltaY":F
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLastY:F

    .line 790
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 805
    :pswitch_0
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 810
    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    .line 807
    :cond_2
    :goto_0
    neg-float v2, v2

    .line 808
    const/4 v1, 0x0

    goto :goto_2

    .line 793
    :pswitch_1
    const/4 v3, 0x1

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-eq v3, v4, :cond_4

    const/4 v3, 0x3

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 798
    :cond_3
    const/4 v1, 0x1

    .line 801
    goto :goto_2

    .line 795
    :cond_4
    :goto_1
    neg-float v2, v2

    .line 796
    const/4 v1, 0x0

    .line 816
    :goto_2
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_5

    .line 817
    return-void

    .line 820
    :cond_5
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    invoke-static {v0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngleStart(II)F

    move-result v3

    .line 821
    .local v3, "angleStart":F
    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mDirect:I

    invoke-static {v0, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getLineFlipAngleEnd(II)F

    move-result v4

    .line 822
    .local v4, "angleEnd":F
    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mHeightRemain:F

    div-float v5, v2, v5

    sub-float v6, v3, v4

    mul-float/2addr v5, v6

    .line 824
    .local v5, "deltaAngle":F
    if-nez v1, :cond_6

    .line 825
    neg-float v5, v5

    .line 828
    :cond_6
    iget v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    add-float/2addr v6, v5

    .line 829
    .local v6, "angle":F
    invoke-static {v6, v4, v3, v4, v3}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v6

    .line 831
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_7

    .line 832
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    .line 833
    .local v7, "x":F
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    .line 834
    .local v8, "y":F
    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 835
    .local v9, "slope":F
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mBasePoint:Landroid/graphics/PointF;

    invoke-static {v10, v9, v7, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->createLineFlip(Landroid/graphics/PointF;FFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlip:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 836
    iput v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->mLineFlipAngle:F

    .line 838
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "slope":F
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
