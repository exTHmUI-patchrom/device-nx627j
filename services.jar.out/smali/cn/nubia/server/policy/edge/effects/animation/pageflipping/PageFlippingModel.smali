.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;
.super Ljava/lang/Object;
.source "PageFlippingModel.java"


# static fields
.field private static final DRAW_BG:I = 0x4

.field private static final DRAW_BG_FULL:I = 0x80

.field private static final DRAW_FG:I = 0x1

.field private static final DRAW_FG_BACK:I = 0x2

.field private static final DRAW_FG_FULL:I = 0x40

.field private static final DRAW_ROLL:I = 0x8

.field private static final DRAW_SHADOW_PAGE:I = 0x10

.field private static final DRAW_SHADOW_ROLL:I = 0x20

.field public static final END_ANGLE:F

.field public static final FLIP_DIAMETER_MAX:I = 0x12c

.field public static final FLIP_RADIUS_MAX:I = 0x96

.field public static final FLIP_RADIUS_MIN:I = 0x32

.field private static final LAYER_BG_HEIGHT:F = 0.0f

.field private static final LAYER_FG_HEIGHT:F = 0.0f

.field private static final ROLL_BLOCK_NUM:I = 0x10

.field private static final SHADOW_WIDTH:I = 0x50

.field private static final START_ANGLE:F

.field private static final TAG:Ljava/lang/String; = "PageFlippingController"

.field public static final TRIANGLE_MAX:I = 0x26

.field private static final TRIANGLE_MAX_BG:I = 0x3

.field private static final TRIANGLE_MAX_FG:I = 0x3

.field private static final TRIANGLE_MAX_FG_BACK:I = 0x3

.field private static final TRIANGLE_MAX_ROLL:I = 0x26


# instance fields
.field private mBasePoint:Landroid/graphics/PointF;

.field private mBasePointEx:Landroid/graphics/PointF;

.field private mBetweenEnd:F

.field private mBgDim:F

.field private mDrawFlag:I

.field private mHeight:I

.field private mIsNeedDraw:Z

.field private mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineFlipCenter:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

.field private mLineShadowPageNum:I

.field private mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

.field private mPageRect:Landroid/graphics/Rect;

.field private mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

.field private mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

.field private mRadius:F

.field private mRollNum:I

.field private mRollTexCoor:[F

.field private mRollVertex:[F

.field private mShadowPageNum:I

.field private mShadowPageTexCoor:[F

.field private mShadowPageVertex:[F

.field private mShadowRollNum:I

.field private mShadowRollTexCoor:[F

.field private mShadowRollVertex:[F

.field private mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

.field private mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

.field private mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

.field private mTriangleNumBg:I

.field private mTriangleNumFg:I

.field private mTriangleNumFgBack:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-wide v0, -0x3fa9800000000000L    # -90.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->START_ANGLE:F

    .line 18
    const-wide v0, 0x4052c00000000000L    # 75.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->init()V

    .line 77
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->initAllTriangle()V

    .line 78
    return-void
.end method

.method private calculateBg(I)V
    .locals 24
    .param p1, "rotation"    # I

    move-object/from16 v0, p0

    .line 712
    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    .line 713
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v1

    .line 714
    .local v1, "offset":[F
    const/4 v2, 0x0

    .line 715
    .local v2, "z":F
    const/4 v3, 0x2

    aget v4, v1, v3

    add-float/2addr v2, v4

    .line 717
    const/16 v4, 0x80

    invoke-virtual {v0, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDraw(I)Z

    move-result v4

    const/4 v15, 0x1

    if-ne v15, v4, :cond_0

    .line 718
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    move/from16 v14, p1

    invoke-direct {v0, v4, v2, v14}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateFullScreen([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;FI)V

    .line 719
    iput v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumBg:I

    goto/16 :goto_1

    .line 723
    :cond_0
    move/from16 v14, p1

    const/4 v3, 0x6

    new-array v3, v3, [I

    .line 728
    .local v3, "index":[I
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->getRegionIndex(I[I)I

    move-result v4

    .line 729
    .local v4, "num":I
    add-int/lit8 v4, v4, -0x2

    .line 731
    const/16 v16, 0x0

    move/from16 v5, v16

    .local v5, "i":I
    :goto_0
    move v13, v5

    .end local v5    # "i":I
    .local v13, "i":I
    if-ge v13, v4, :cond_1

    .line 732
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget v6, v3, v16

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget v6, v1, v16

    add-float v17, v5, v6

    .line 733
    .local v17, "x0":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget v6, v3, v16

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aget v6, v1, v15

    add-float v18, v5, v6

    .line 734
    .local v18, "y0":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v6, v13, 0x1

    aget v6, v3, v6

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget v6, v1, v16

    add-float v19, v5, v6

    .line 735
    .local v19, "x1":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v6, v13, 0x1

    aget v6, v3, v6

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aget v6, v1, v15

    add-float v20, v5, v6

    .line 736
    .local v20, "y1":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v6, v13, 0x2

    aget v6, v3, v6

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget v6, v1, v16

    add-float v21, v5, v6

    .line 737
    .local v21, "x2":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v6, v13, 0x2

    aget v6, v3, v6

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aget v6, v1, v15

    add-float v22, v5, v6

    .line 738
    .local v22, "y2":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v5, v5, v13

    move/from16 v6, v17

    move/from16 v7, v18

    move v8, v2

    move/from16 v9, v19

    move/from16 v10, v20

    move v11, v2

    move/from16 v12, v21

    move/from16 v23, v13

    move/from16 v13, v22

    .end local v13    # "i":I
    .local v23, "i":I
    move v14, v2

    invoke-virtual/range {v5 .. v14}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 740
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget v6, v3, v16

    aget-object v5, v5, v6

    iget v13, v5, Landroid/graphics/PointF;->x:F

    .line 741
    .end local v17    # "x0":F
    .local v13, "x0":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget v6, v3, v16

    aget-object v5, v5, v6

    iget v14, v5, Landroid/graphics/PointF;->y:F

    .line 742
    .end local v18    # "y0":F
    .local v14, "y0":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v6, v23, 0x1

    aget v6, v3, v6

    aget-object v5, v5, v6

    iget v12, v5, Landroid/graphics/PointF;->x:F

    .line 743
    .end local v19    # "x1":F
    .local v12, "x1":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v6, v23, 0x1

    aget v6, v3, v6

    aget-object v5, v5, v6

    iget v11, v5, Landroid/graphics/PointF;->y:F

    .line 744
    .end local v20    # "y1":F
    .local v11, "y1":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v6, v23, 0x2

    aget v6, v3, v6

    aget-object v5, v5, v6

    iget v10, v5, Landroid/graphics/PointF;->x:F

    .line 745
    .end local v21    # "x2":F
    .local v10, "x2":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v6, v23, 0x2

    aget v6, v3, v6

    aget-object v5, v5, v6

    iget v9, v5, Landroid/graphics/PointF;->y:F

    .line 746
    .end local v22    # "y2":F
    .local v9, "y2":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v5, v5, v23

    move v6, v13

    move v7, v14

    move v8, v12

    move/from16 v17, v9

    move v9, v11

    .end local v9    # "y2":F
    .local v17, "y2":F
    move/from16 v18, v10

    .end local v10    # "x2":F
    .local v18, "x2":F
    move/from16 v19, v11

    move/from16 v11, v17

    .end local v11    # "y1":F
    .local v19, "y1":F
    move/from16 v20, v12

    move/from16 v12, p1

    .end local v12    # "x1":F
    .local v20, "x1":F
    invoke-virtual/range {v5 .. v12}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 748
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v5, v5, v23

    invoke-virtual {v5, v15}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 731
    add-int/lit8 v5, v23, 0x1

    .end local v23    # "i":I
    .restart local v5    # "i":I
    move/from16 v14, p1

    goto/16 :goto_0

    .line 751
    .end local v5    # "i":I
    .end local v14    # "y0":F
    .end local v17    # "y2":F
    .end local v18    # "x2":F
    .end local v19    # "y1":F
    .end local v20    # "x1":F
    .local v13, "i":I
    :cond_1
    move/from16 v23, v13

    .end local v13    # "i":I
    .restart local v23    # "i":I
    iput v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumBg:I

    .line 753
    .end local v3    # "index":[I
    .end local v4    # "num":I
    .end local v23    # "i":I
    :goto_1
    return-void
.end method

.method private calculateFg(I)V
    .locals 25
    .param p1, "rotation"    # I

    move-object/from16 v0, p0

    .line 563
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v1

    .line 564
    .local v1, "offset":[F
    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    .line 565
    const/4 v2, 0x0

    .line 566
    .local v2, "z":F
    const/4 v4, 0x2

    aget v5, v1, v4

    add-float/2addr v2, v5

    .line 568
    const/16 v5, 0x40

    invoke-virtual {v0, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDraw(I)Z

    move-result v5

    if-ne v3, v5, :cond_0

    .line 569
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    move/from16 v5, p1

    invoke-direct {v0, v3, v2, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateFullScreen([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;FI)V

    .line 570
    iput v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumFg:I

    goto/16 :goto_1

    .line 574
    :cond_0
    move/from16 v5, p1

    const/4 v4, 0x6

    new-array v4, v4, [I

    .line 579
    .local v4, "index":[I
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    invoke-virtual {v6, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->getRegionIndex(I[I)I

    move-result v6

    .line 580
    .local v6, "num":I
    add-int/lit8 v15, v6, -0x2

    .line 582
    .end local v6    # "num":I
    .local v15, "num":I
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "i":I
    :goto_0
    move v14, v6

    .end local v6    # "i":I
    .local v14, "i":I
    if-ge v14, v15, :cond_1

    .line 583
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v6, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget v7, v4, v16

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget v7, v1, v16

    add-float v17, v6, v7

    .line 584
    .local v17, "x0":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v6, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget v7, v4, v16

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aget v7, v1, v3

    add-float v18, v6, v7

    .line 585
    .local v18, "y0":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v6, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v7, v14, 0x1

    aget v7, v4, v7

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget v7, v1, v16

    add-float v19, v6, v7

    .line 586
    .local v19, "x1":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v6, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v7, v14, 0x1

    aget v7, v4, v7

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aget v7, v1, v3

    add-float v20, v6, v7

    .line 587
    .local v20, "y1":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v6, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v7, v14, 0x2

    aget v7, v4, v7

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget v7, v1, v16

    add-float v21, v6, v7

    .line 588
    .local v21, "x2":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v6, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    add-int/lit8 v7, v14, 0x2

    aget v7, v4, v7

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aget v7, v1, v3

    add-float v22, v6, v7

    .line 589
    .local v22, "y2":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v6, v6, v14

    move/from16 v7, v17

    move/from16 v8, v18

    move v9, v2

    move/from16 v10, v19

    move/from16 v11, v20

    move v12, v2

    move/from16 v13, v21

    move/from16 v23, v14

    move/from16 v14, v22

    .end local v14    # "i":I
    .local v23, "i":I
    move/from16 v24, v15

    move v15, v2

    .end local v15    # "num":I
    .local v24, "num":I
    invoke-virtual/range {v6 .. v15}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 591
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v6, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget v7, v4, v16

    aget-object v6, v6, v7

    iget v13, v6, Landroid/graphics/PointF;->x:F

    .line 592
    .end local v17    # "x0":F
    .local v13, "x0":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v6, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget v7, v4, v16

    aget-object v6, v6, v7

    iget v14, v6, Landroid/graphics/PointF;->y:F

    .line 593
    .end local v18    # "y0":F
    .local v14, "y0":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v6, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v7, v23, 0x1

    aget v7, v4, v7

    aget-object v6, v6, v7

    iget v15, v6, Landroid/graphics/PointF;->x:F

    .line 594
    .end local v19    # "x1":F
    .local v15, "x1":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v6, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v7, v23, 0x1

    aget v7, v4, v7

    aget-object v6, v6, v7

    iget v12, v6, Landroid/graphics/PointF;->y:F

    .line 595
    .end local v20    # "y1":F
    .local v12, "y1":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v6, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v7, v23, 0x2

    aget v7, v4, v7

    aget-object v6, v6, v7

    iget v11, v6, Landroid/graphics/PointF;->x:F

    .line 596
    .end local v21    # "x2":F
    .local v11, "x2":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v6, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v7, v23, 0x2

    aget v7, v4, v7

    aget-object v6, v6, v7

    iget v10, v6, Landroid/graphics/PointF;->y:F

    .line 597
    .end local v22    # "y2":F
    .local v10, "y2":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v6, v6, v23

    move-object v5, v6

    move v6, v13

    move v7, v14

    move v8, v15

    move v9, v12

    move/from16 v17, v10

    move v10, v11

    .end local v10    # "y2":F
    .local v17, "y2":F
    move/from16 v18, v11

    move/from16 v11, v17

    .end local v11    # "x2":F
    .local v18, "x2":F
    move/from16 v19, v12

    move/from16 v12, p1

    .end local v12    # "y1":F
    .local v19, "y1":F
    invoke-virtual/range {v5 .. v12}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 599
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v5, v5, v23

    invoke-virtual {v5, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 582
    add-int/lit8 v6, v23, 0x1

    .end local v23    # "i":I
    .restart local v6    # "i":I
    move/from16 v5, p1

    move/from16 v15, v24

    goto/16 :goto_0

    .line 602
    .end local v6    # "i":I
    .end local v13    # "x0":F
    .end local v17    # "y2":F
    .end local v18    # "x2":F
    .end local v19    # "y1":F
    .end local v24    # "num":I
    .local v14, "i":I
    .local v15, "num":I
    :cond_1
    move/from16 v23, v14

    move/from16 v24, v15

    .end local v14    # "i":I
    .end local v15    # "num":I
    .restart local v23    # "i":I
    .restart local v24    # "num":I
    move/from16 v6, v24

    iput v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumFg:I

    .line 604
    .end local v4    # "index":[I
    .end local v23    # "i":I
    .end local v24    # "num":I
    :goto_1
    return-void
.end method

.method private calculateFgBack(I)V
    .locals 41
    .param p1, "rotation"    # I

    move-object/from16 v0, p0

    .line 617
    const/4 v1, 0x6

    new-array v1, v1, [I

    .line 631
    .local v1, "index":[I
    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .line 633
    .local v2, "lineCenter":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 635
    .local v3, "pointSym":Landroid/graphics/PointF;
    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    const/4 v5, 0x2

    or-int/2addr v4, v5

    iput v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    .line 636
    const-wide v6, 0x4056800000000000L    # 90.0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v4, v6

    sget v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    sub-float/2addr v4, v6

    .line 637
    .local v4, "angle":F
    iget v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    const/4 v7, 0x0

    sub-float v6, v7, v6

    iget v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    sget v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v8, v9

    sub-float/2addr v6, v8

    .line 638
    .local v6, "height":F
    iget-object v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v8

    .line 639
    .local v8, "offset":[F
    aget v5, v8, v5

    add-float/2addr v6, v5

    .line 640
    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v5, v9

    .line 641
    .local v5, "sina":F
    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 642
    .local v9, "cosa":F
    iget-object v10, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    const/4 v11, -0x1

    invoke-virtual {v10, v11, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->getRegionIndex(I[I)I

    move-result v10

    .line 643
    .local v10, "num":I
    new-array v11, v10, [F

    .line 644
    .local v11, "x":[F
    new-array v12, v10, [F

    .line 645
    .local v12, "y":[F
    new-array v13, v10, [F

    .line 647
    .local v13, "z":[F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v10, :cond_1

    .line 648
    iget-object v14, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v14, v14, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget v17, v1, v15

    aget-object v14, v14, v17

    iget v14, v14, Landroid/graphics/PointF;->x:F

    .line 649
    .local v14, "x0":F
    iget-object v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v7, v7, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget v17, v1, v15

    aget-object v7, v7, v17

    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 650
    .local v7, "y0":F
    move/from16 v19, v4

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .end local v4    # "angle":F
    .local v19, "angle":F
    invoke-virtual {v4, v14, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->distance(FF)F

    move-result v4

    .line 651
    .local v4, "distanceEnd":F
    mul-float v17, v4, v9

    .line 652
    .local v17, "distanceEndEx":F
    move/from16 v20, v9

    iget v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBetweenEnd:F

    .end local v9    # "cosa":F
    .local v20, "cosa":F
    add-float/2addr v9, v4

    add-float v9, v9, v17

    .line 653
    .local v9, "distance":F
    const/high16 v21, 0x40000000    # 2.0f

    div-float v9, v9, v21

    .line 654
    sub-float/2addr v9, v4

    .line 656
    const/16 v18, 0x0

    cmpg-float v21, v9, v18

    if-gez v21, :cond_0

    .line 657
    move-object/from16 v22, v1

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    .local v1, "point":Landroid/graphics/PointF;
    .local v22, "index":[I
    goto :goto_1

    .line 659
    .end local v22    # "index":[I
    .local v1, "index":[I
    :cond_0
    move-object/from16 v22, v1

    .end local v1    # "index":[I
    .restart local v22    # "index":[I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    .line 662
    .local v1, "point":Landroid/graphics/PointF;
    :goto_1
    move-object/from16 v23, v8

    iget-object v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .end local v8    # "offset":[F
    .local v23, "offset":[F
    invoke-virtual {v8, v2, v9, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    .line 663
    invoke-virtual {v2, v14, v7, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->symmetryPoint(FFLandroid/graphics/PointF;)V

    .line 664
    iget v8, v3, Landroid/graphics/PointF;->x:F

    aput v8, v11, v15

    .line 665
    iget v8, v3, Landroid/graphics/PointF;->y:F

    aput v8, v12, v15

    .line 666
    mul-float v8, v4, v5

    sub-float v8, v6, v8

    aput v8, v13, v15

    .line 647
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v18

    move/from16 v4, v19

    move/from16 v9, v20

    move-object/from16 v1, v22

    move-object/from16 v8, v23

    goto :goto_0

    .line 669
    .end local v7    # "y0":F
    .end local v14    # "x0":F
    .end local v17    # "distanceEndEx":F
    .end local v19    # "angle":F
    .end local v20    # "cosa":F
    .end local v22    # "index":[I
    .end local v23    # "offset":[F
    .local v1, "index":[I
    .local v4, "angle":F
    .restart local v8    # "offset":[F
    .local v9, "cosa":F
    :cond_1
    move-object/from16 v22, v1

    move/from16 v19, v4

    move-object/from16 v23, v8

    move/from16 v20, v9

    .end local v1    # "index":[I
    .end local v4    # "angle":F
    .end local v8    # "offset":[F
    .end local v9    # "cosa":F
    .restart local v19    # "angle":F
    .restart local v20    # "cosa":F
    .restart local v22    # "index":[I
    .restart local v23    # "offset":[F
    add-int/lit8 v10, v10, -0x2

    .line 670
    const/4 v1, 0x0

    aget v4, v11, v1

    aget v7, v23, v1

    add-float/2addr v4, v7

    .line 671
    .local v4, "x0":F
    aget v7, v12, v1

    const/4 v8, 0x1

    aget v9, v23, v8

    add-float/2addr v7, v9

    .line 672
    .restart local v7    # "y0":F
    aget v9, v13, v1

    .line 673
    .local v9, "z0":F
    iget-object v14, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v14, v14, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget v16, v22, v1

    aget-object v14, v14, v16

    iget v14, v14, Landroid/graphics/PointF;->x:F

    .line 674
    .local v14, "x0Ex":F
    iget-object v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v8, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    aget v17, v22, v1

    aget-object v1, v8, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 676
    .local v1, "y0Ex":F
    const/4 v8, 0x0

    .end local v15    # "i":I
    .local v8, "i":I
    :goto_2
    if-ge v8, v10, :cond_2

    .line 677
    add-int/lit8 v15, v8, 0x1

    aget v15, v11, v15

    const/16 v16, 0x0

    aget v17, v23, v16

    add-float v15, v15, v17

    .line 678
    .local v15, "x1":F
    add-int/lit8 v17, v8, 0x1

    aget v17, v12, v17

    const/16 v18, 0x1

    aget v21, v23, v18

    add-float v17, v17, v21

    .line 679
    .local v17, "y1":F
    add-int/lit8 v18, v8, 0x1

    aget v18, v13, v18

    .line 680
    .local v18, "z1":F
    add-int/lit8 v21, v8, 0x2

    aget v21, v11, v21

    const/16 v16, 0x0

    aget v24, v23, v16

    add-float v21, v21, v24

    .line 681
    .local v21, "x2":F
    add-int/lit8 v24, v8, 0x2

    aget v24, v12, v24

    const/16 v25, 0x1

    aget v26, v23, v25

    add-float v34, v24, v26

    .line 682
    .local v34, "y2":F
    add-int/lit8 v24, v8, 0x2

    aget v35, v13, v24

    .line 683
    .local v35, "z2":F
    move-object/from16 v36, v2

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    .end local v2    # "lineCenter":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .local v36, "lineCenter":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    aget-object v24, v2, v8

    move/from16 v25, v4

    move/from16 v26, v7

    move/from16 v27, v9

    move/from16 v28, v15

    move/from16 v29, v17

    move/from16 v30, v18

    move/from16 v31, v21

    move/from16 v32, v34

    move/from16 v33, v35

    invoke-virtual/range {v24 .. v33}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 685
    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v24, v8, 0x1

    aget v24, v22, v24

    aget-object v2, v2, v24

    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 686
    .end local v15    # "x1":F
    .local v2, "x1":F
    iget-object v15, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v15, v15, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v24, v8, 0x1

    aget v24, v22, v24

    aget-object v15, v15, v24

    iget v15, v15, Landroid/graphics/PointF;->y:F

    .line 687
    .end local v17    # "y1":F
    .local v15, "y1":F
    move-object/from16 v37, v3

    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    .end local v3    # "pointSym":Landroid/graphics/PointF;
    .local v37, "pointSym":Landroid/graphics/PointF;
    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v17, v8, 0x2

    aget v17, v22, v17

    aget-object v3, v3, v17

    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 688
    .end local v21    # "x2":F
    .local v3, "x2":F
    move/from16 v38, v4

    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    .end local v4    # "x0":F
    .local v38, "x0":F
    iget-object v4, v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mTexCoor:[Landroid/graphics/PointF;

    add-int/lit8 v17, v8, 0x2

    aget v17, v22, v17

    aget-object v4, v4, v17

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 689
    .end local v34    # "y2":F
    .local v4, "y2":F
    move/from16 v39, v5

    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    .end local v5    # "sina":F
    .local v39, "sina":F
    aget-object v24, v5, v8

    move/from16 v25, v14

    move/from16 v26, v1

    move/from16 v27, v2

    move/from16 v28, v15

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, p1

    invoke-virtual/range {v24 .. v31}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 691
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v5, v5, v8

    move/from16 v40, v1

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 676
    .end local v1    # "y0Ex":F
    .local v40, "y0Ex":F
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move/from16 v4, v38

    move/from16 v5, v39

    move/from16 v1, v40

    goto/16 :goto_2

    .line 694
    .end local v15    # "y1":F
    .end local v18    # "z1":F
    .end local v35    # "z2":F
    .end local v36    # "lineCenter":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v37    # "pointSym":Landroid/graphics/PointF;
    .end local v38    # "x0":F
    .end local v39    # "sina":F
    .end local v40    # "y0Ex":F
    .restart local v1    # "y0Ex":F
    .local v2, "lineCenter":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .local v3, "pointSym":Landroid/graphics/PointF;
    .local v4, "x0":F
    .restart local v5    # "sina":F
    :cond_2
    move/from16 v40, v1

    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move/from16 v38, v4

    move/from16 v39, v5

    .end local v1    # "y0Ex":F
    .end local v2    # "lineCenter":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v3    # "pointSym":Landroid/graphics/PointF;
    .end local v4    # "x0":F
    .end local v5    # "sina":F
    .restart local v36    # "lineCenter":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .restart local v37    # "pointSym":Landroid/graphics/PointF;
    .restart local v38    # "x0":F
    .restart local v39    # "sina":F
    .restart local v40    # "y0Ex":F
    iput v10, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumFgBack:I

    .line 697
    add-int/lit8 v1, v10, 0x2

    invoke-direct {v0, v1, v11, v12, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->preCalculateShadowPage1(I[F[F[F)V

    .line 698
    return-void
.end method

.method private calculateFullScreen([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;FI)V
    .locals 36
    .param p1, "triangle"    # [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .param p2, "z"    # F
    .param p3, "rotation"    # I

    move-object/from16 v0, p0

    .line 518
    const/4 v1, 0x0

    .line 525
    .local v1, "i":I
    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v2

    .line 527
    .local v2, "offset":[F
    iget-object v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 528
    .local v3, "x0":F
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 529
    .local v4, "y0":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    .line 530
    .local v5, "x1":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    .line 531
    .local v6, "y1":F
    iget-object v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    .line 532
    .local v7, "x2":F
    iget-object v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    .line 533
    .local v8, "y2":F
    const/4 v9, 0x2

    aget v9, v2, v9

    add-float v9, p2, v9

    .line 534
    .end local p2    # "z":F
    .local v9, "z":F
    aget-object v10, p1, v1

    const/16 v20, 0x0

    aget v11, v2, v20

    add-float/2addr v11, v3

    const/4 v14, 0x1

    aget v12, v2, v14

    add-float/2addr v12, v4

    aget v13, v2, v20

    add-float v15, v5, v13

    aget v13, v2, v14

    add-float v16, v6, v13

    aget v13, v2, v20

    add-float v17, v7, v13

    aget v13, v2, v14

    add-float v18, v8, v13

    move v13, v9

    move-object/from16 v21, v2

    move v2, v14

    move v14, v15

    .end local v2    # "offset":[F
    .local v21, "offset":[F
    move/from16 v15, v16

    move/from16 v16, v9

    move/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 538
    invoke-direct {v0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v30

    .line 539
    .local v30, "x0Ex":F
    invoke-direct {v0, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v31

    .line 540
    .local v31, "y0Ex":F
    invoke-direct {v0, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v32

    .line 541
    .local v32, "x1Ex":F
    invoke-direct {v0, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v33

    .line 542
    .local v33, "y1Ex":F
    invoke-direct {v0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v34

    .line 543
    .local v34, "x2Ex":F
    invoke-direct {v0, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v35

    .line 544
    .local v35, "y2Ex":F
    aget-object v22, p1, v1

    move/from16 v23, v30

    move/from16 v24, v31

    move/from16 v25, v32

    move/from16 v26, v33

    move/from16 v27, v34

    move/from16 v28, v35

    move/from16 v29, p3

    invoke-virtual/range {v22 .. v29}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 545
    aget-object v10, p1, v1

    invoke-virtual {v10, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 547
    add-int/2addr v1, v2

    .line 548
    iget-object v10, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v3, v10

    .line 549
    iget-object v10, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v10

    .line 551
    aget-object v10, p1, v1

    aget v11, v21, v20

    add-float/2addr v11, v3

    aget v12, v21, v2

    add-float/2addr v12, v4

    aget v13, v21, v20

    add-float v14, v7, v13

    aget v13, v21, v2

    add-float v15, v8, v13

    aget v13, v21, v20

    add-float v17, v5, v13

    aget v13, v21, v2

    add-float v18, v6, v13

    move v13, v9

    invoke-virtual/range {v10 .. v19}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 555
    invoke-direct {v0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v18

    .line 556
    .end local v30    # "x0Ex":F
    .local v18, "x0Ex":F
    invoke-direct {v0, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v19

    .line 557
    .end local v31    # "y0Ex":F
    .local v19, "y0Ex":F
    aget-object v10, p1, v1

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v13, v34

    move/from16 v14, v35

    move/from16 v15, v32

    move/from16 v16, v33

    move/from16 v17, p3

    invoke-virtual/range {v10 .. v17}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 558
    aget-object v10, p1, v1

    invoke-virtual {v10, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 559
    return-void
.end method

.method private calculateRoll(ZZLandroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 38
    .param p1, "haveHead"    # Z
    .param p2, "haveEnd"    # Z
    .param p3, "pointHead"    # Landroid/graphics/PointF;
    .param p4, "pointEnd"    # Landroid/graphics/PointF;
    .param p5, "rotation"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 851
    const/4 v5, 0x0

    .line 852
    .local v5, "n":I
    const/4 v6, 0x0

    .line 862
    .local v6, "m":I
    const/16 v7, 0x8

    new-array v8, v7, [F

    .line 864
    .local v8, "distance":[F
    new-instance v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .line 865
    .local v9, "lineVertex":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    new-instance v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .line 866
    .local v10, "lineTexCoor":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    const/4 v11, 0x0

    .line 868
    .local v11, "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget v12, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/2addr v7, v12

    iput v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    .line 870
    iget-object v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v7

    .line 871
    .local v7, "offsetEx":[F
    sget v12, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    sget v13, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->START_ANGLE:F

    sub-float/2addr v12, v13

    iget v13, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    mul-float/2addr v12, v13

    .line 872
    .local v12, "offsetTotal":F
    const/high16 v13, 0x41800000    # 16.0f

    div-float v13, v12, v13

    .line 873
    .local v13, "offsetStep":F
    invoke-direct {v0, v8, v12, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->findRollSegment([FFZZ)I

    move-result v14

    .line 874
    .local v14, "num":I
    invoke-direct {v0, v8, v14, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->divideRollSegment([FIF)[F

    move-result-object v15

    .line 876
    .local v15, "segment":[F
    const/16 v16, 0x2

    move-object/from16 v17, v8

    .end local v8    # "distance":[F
    .local v17, "distance":[F
    const/16 v18, 0x0

    const/16 v19, 0x1

    if-nez v1, :cond_0

    .line 877
    aget v8, v15, v18

    .line 878
    .local v8, "offset":F
    sget v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->START_ANGLE:F

    move-object/from16 v21, v11

    sget v11, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    .end local v11    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .local v21, "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    move/from16 v22, v13

    const/4 v13, 0x0

    invoke-static {v8, v13, v12, v1, v11}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v1

    .line 881
    .end local v13    # "offsetStep":F
    .local v1, "angle":F
    .local v22, "offsetStep":F
    iget v11, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v23, v14

    float-to-double v13, v1

    .end local v14    # "num":I
    .local v23, "num":I
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v11, v13

    .line 882
    .local v11, "rollLength":F
    iget v13, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    const/4 v14, 0x0

    sub-float v13, v14, v13

    iget v14, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v26, v8

    move-object/from16 v25, v9

    float-to-double v8, v1

    .end local v8    # "offset":F
    .end local v9    # "lineVertex":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .local v25, "lineVertex":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .local v26, "offset":F
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v14, v8

    sub-float/2addr v13, v14

    .line 883
    .local v13, "z":F
    aget v8, v7, v16

    add-float/2addr v13, v8

    .line 885
    iget v8, v3, Landroid/graphics/PointF;->x:F

    .line 886
    .local v8, "x":F
    iget v9, v3, Landroid/graphics/PointF;->y:F

    .line 887
    .local v9, "y":F
    iget-object v14, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v14}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v14

    invoke-virtual {v10, v8, v9, v14}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFF)V

    .line 889
    invoke-direct {v0, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v8

    .line 890
    invoke-direct {v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v9

    .line 891
    iget-object v14, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v24, v5, 0x1

    .local v24, "n":I
    aput v8, v14, v5

    .line 892
    .end local v5    # "n":I
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v14, v24, 0x1

    .local v14, "n":I
    aput v9, v5, v24

    .line 893
    .end local v24    # "n":I
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v24, v14, 0x1

    .restart local v24    # "n":I
    aput v8, v5, v14

    .line 894
    .end local v14    # "n":I
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v14, v24, 0x1

    .restart local v14    # "n":I
    aput v9, v5, v24

    .line 896
    .end local v24    # "n":I
    sub-float v5, v26, v11

    .line 897
    .end local v26    # "offset":F
    .local v5, "offset":F
    move/from16 v27, v1

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    .end local v1    # "angle":F
    .local v27, "angle":F
    move-object/from16 v3, v25

    invoke-virtual {v10, v3, v5, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    .line 899
    .end local v25    # "lineVertex":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .local v3, "lineVertex":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v24, v6, 0x1

    .local v24, "m":I
    move/from16 v28, v5

    iget-object v5, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    .end local v5    # "offset":F
    .local v28, "offset":F
    aget v5, v5, v18

    aget v25, v7, v18

    add-float v5, v5, v25

    aput v5, v1, v6

    .line 900
    .end local v6    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v5, v24, 0x1

    .local v5, "m":I
    iget-object v6, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v6, v6, v18

    aget v25, v7, v19

    add-float v6, v6, v25

    aput v6, v1, v24

    .line 901
    .end local v24    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v6, v5, 0x1

    .restart local v6    # "m":I
    aput v13, v1, v5

    .line 902
    .end local v5    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v5, v6, 0x1

    .restart local v5    # "m":I
    move/from16 v29, v8

    iget-object v8, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    .end local v8    # "x":F
    .local v29, "x":F
    aget v8, v8, v18

    aget v24, v7, v18

    add-float v8, v8, v24

    aput v8, v1, v6

    .line 903
    .end local v6    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v6, v5, 0x1

    .restart local v6    # "m":I
    iget-object v8, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v8, v8, v18

    aget v24, v7, v19

    add-float v8, v8, v24

    aput v8, v1, v5

    .line 904
    .end local v5    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v5, v6, 0x1

    .restart local v5    # "m":I
    aput v13, v1, v6

    .end local v6    # "m":I
    goto/16 :goto_0

    .line 906
    .end local v3    # "lineVertex":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v21    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v22    # "offsetStep":F
    .end local v23    # "num":I
    .end local v27    # "angle":F
    .end local v28    # "offset":F
    .end local v29    # "x":F
    .local v5, "n":I
    .restart local v6    # "m":I
    .local v9, "lineVertex":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .local v11, "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .local v13, "offsetStep":F
    .local v14, "num":I
    :cond_0
    move-object v3, v9

    move-object/from16 v21, v11

    move/from16 v22, v13

    move/from16 v23, v14

    .end local v9    # "lineVertex":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v11    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v13    # "offsetStep":F
    .end local v14    # "num":I
    .restart local v3    # "lineVertex":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .restart local v21    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .restart local v22    # "offsetStep":F
    .restart local v23    # "num":I
    const/4 v1, 0x0

    .line 907
    .local v1, "z":F
    aget v8, v7, v16

    add-float v13, v1, v8

    .line 908
    .end local v1    # "z":F
    .local v13, "z":F
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v8, v5, 0x1

    .local v8, "n":I
    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v9, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v9, v9, v18

    invoke-direct {v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v9

    aput v9, v1, v5

    .line 909
    .end local v5    # "n":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v5, v8, 0x1

    .restart local v5    # "n":I
    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v9, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v9, v9, v18

    invoke-direct {v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v9

    aput v9, v1, v8

    .line 910
    .end local v8    # "n":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v8, v5, 0x1

    .restart local v8    # "n":I
    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v9, v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v9, v9, v19

    invoke-direct {v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v9

    aput v9, v1, v5

    .line 911
    .end local v5    # "n":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v14, v8, 0x1

    .local v14, "n":I
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v5, v5, v19

    invoke-direct {v0, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v5

    aput v5, v1, v8

    .line 912
    .end local v8    # "n":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v5, v6, 0x1

    .local v5, "m":I
    iget-object v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v8, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v8, v8, v18

    aget v9, v7, v18

    add-float/2addr v8, v9

    aput v8, v1, v6

    .line 913
    .end local v6    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v6, v5, 0x1

    .restart local v6    # "m":I
    iget-object v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v8, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v8, v8, v18

    aget v9, v7, v19

    add-float/2addr v8, v9

    aput v8, v1, v5

    .line 914
    .end local v5    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v5, v6, 0x1

    .restart local v5    # "m":I
    aput v13, v1, v6

    .line 915
    .end local v6    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v6, v5, 0x1

    .restart local v6    # "m":I
    iget-object v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v8, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v8, v8, v19

    aget v9, v7, v18

    add-float/2addr v8, v9

    aput v8, v1, v5

    .line 916
    .end local v5    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v5, v6, 0x1

    .restart local v5    # "m":I
    iget-object v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v8, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v8, v8, v19

    aget v9, v7, v19

    add-float/2addr v8, v9

    aput v8, v1, v6

    .line 917
    .end local v6    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v6, v5, 0x1

    .restart local v6    # "m":I
    aput v13, v1, v5

    .line 920
    .end local v5    # "m":I
    move v5, v6

    .end local v6    # "m":I
    .restart local v5    # "m":I
    :goto_0
    array-length v1, v15

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollNum:I

    .line 922
    if-nez v2, :cond_1

    .line 923
    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollNum:I

    .local v1, "rollNum":I
    goto :goto_1

    .line 925
    .end local v1    # "rollNum":I
    :cond_1
    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollNum:I

    add-int/lit8 v1, v1, 0x1

    .line 928
    .restart local v1    # "rollNum":I
    :goto_1
    move v6, v5

    move/from16 v5, v19

    move-object/from16 v8, v21

    .end local v21    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .local v5, "i":I
    .restart local v6    # "m":I
    .local v8, "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    :goto_2
    if-ge v5, v1, :cond_4

    .line 929
    aget v9, v15, v5

    .line 930
    .local v9, "offset":F
    sget v11, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->START_ANGLE:F

    move/from16 v30, v13

    sget v13, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    .end local v13    # "z":F
    .local v30, "z":F
    move-object/from16 v31, v8

    const/4 v8, 0x0

    invoke-static {v9, v8, v12, v11, v13}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v11

    .line 933
    .end local v8    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .local v11, "angle":F
    .local v31, "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget v13, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v32, v9

    float-to-double v8, v11

    .end local v9    # "offset":F
    .local v32, "offset":F
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v13, v8

    .line 934
    .local v13, "rollLength":F
    iget v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    const/4 v9, 0x0

    sub-float v8, v9, v8

    iget v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v33, v5

    float-to-double v4, v11

    .end local v5    # "i":I
    .local v33, "i":I
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    .line 935
    .end local v30    # "z":F
    .local v8, "z":F
    aget v4, v7, v16

    add-float/2addr v4, v8

    .line 937
    .end local v8    # "z":F
    .local v4, "z":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    move/from16 v9, v32

    invoke-virtual {v5, v10, v9, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    .line 938
    .end local v32    # "offset":F
    .restart local v9    # "offset":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v10, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->correctFlipLine(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;[I)Z

    .line 940
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v8, v14, 0x1

    .local v8, "n":I
    move/from16 v34, v11

    iget-object v11, v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    .end local v11    # "angle":F
    .local v34, "angle":F
    aget v11, v11, v18

    invoke-direct {v0, v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v11

    aput v11, v5, v14

    .line 941
    .end local v14    # "n":I
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v11, v8, 0x1

    .local v11, "n":I
    iget-object v14, v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v14, v14, v18

    invoke-direct {v0, v14}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v14

    aput v14, v5, v8

    .line 942
    .end local v8    # "n":I
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v8, v11, 0x1

    .restart local v8    # "n":I
    iget-object v14, v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v14, v14, v19

    invoke-direct {v0, v14}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v14

    aput v14, v5, v11

    .line 943
    .end local v11    # "n":I
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v14, v8, 0x1

    .restart local v14    # "n":I
    iget-object v11, v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v11, v11, v19

    invoke-direct {v0, v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v11

    aput v11, v5, v8

    .line 945
    .end local v8    # "n":I
    sub-float/2addr v9, v13

    .line 946
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    invoke-virtual {v10, v3, v9, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    .line 948
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v8, v6, 0x1

    .local v8, "m":I
    iget-object v11, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v11, v11, v18

    aget v21, v7, v18

    add-float v11, v11, v21

    aput v11, v5, v6

    .line 949
    .end local v6    # "m":I
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v6, v8, 0x1

    .restart local v6    # "m":I
    iget-object v11, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v11, v11, v18

    aget v21, v7, v19

    add-float v11, v11, v21

    aput v11, v5, v8

    .line 950
    .end local v8    # "m":I
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v8, v6, 0x1

    .restart local v8    # "m":I
    aput v4, v5, v6

    .line 951
    .end local v6    # "m":I
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v6, v8, 0x1

    .restart local v6    # "m":I
    iget-object v11, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v11, v11, v19

    aget v21, v7, v18

    add-float v11, v11, v21

    aput v11, v5, v8

    .line 952
    .end local v8    # "m":I
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v8, v6, 0x1

    .restart local v8    # "m":I
    iget-object v11, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v11, v11, v19

    aget v21, v7, v19

    add-float v11, v11, v21

    aput v11, v5, v6

    .line 953
    .end local v6    # "m":I
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v6, v8, 0x1

    .restart local v6    # "m":I
    aput v4, v5, v8

    .line 955
    .end local v8    # "m":I
    if-nez v2, :cond_2

    add-int/lit8 v5, v1, -0x1

    move/from16 v8, v33

    if-ne v8, v5, :cond_3

    .line 956
    .end local v33    # "i":I
    .local v8, "i":I
    new-instance v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .line 957
    .end local v31    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .local v5, "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    invoke-virtual {v5, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V

    .line 928
    move-object/from16 v31, v5

    goto :goto_3

    .end local v5    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v8    # "i":I
    .restart local v31    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .restart local v33    # "i":I
    :cond_2
    move/from16 v8, v33

    .end local v33    # "i":I
    .restart local v8    # "i":I
    :cond_3
    :goto_3
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "i":I
    .local v5, "i":I
    move v13, v4

    move-object/from16 v8, v31

    move-object/from16 v4, p4

    goto/16 :goto_2

    .line 961
    .end local v4    # "z":F
    .end local v9    # "offset":F
    .end local v31    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v34    # "angle":F
    .local v8, "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .local v13, "z":F
    :cond_4
    move-object/from16 v31, v8

    move/from16 v30, v13

    move v8, v5

    .end local v5    # "i":I
    .end local v13    # "z":F
    .local v8, "i":I
    .restart local v30    # "z":F
    .restart local v31    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    if-nez v2, :cond_5

    .line 962
    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollNum:I

    aget v4, v15, v4

    .line 963
    .local v4, "offset":F
    sget v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->START_ANGLE:F

    sget v9, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    const/4 v11, 0x0

    invoke-static {v4, v11, v12, v5, v9}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v5

    .line 966
    .local v5, "angle":F
    iget v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v35, v12

    float-to-double v11, v5

    .end local v12    # "offsetTotal":F
    .local v35, "offsetTotal":F
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v9, v11

    .line 967
    .local v9, "rollLength":F
    iget v11, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    const/4 v12, 0x0

    sub-float v11, v12, v11

    iget v12, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    move/from16 v36, v1

    float-to-double v1, v5

    .end local v1    # "rollNum":I
    .local v36, "rollNum":I
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v12, v1

    sub-float/2addr v11, v12

    .line 968
    .end local v30    # "z":F
    .local v11, "z":F
    aget v1, v7, v16

    add-float v13, v11, v1

    .line 970
    .end local v11    # "z":F
    .restart local v13    # "z":F
    move-object/from16 v1, p4

    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 971
    .local v2, "x":F
    iget v11, v1, Landroid/graphics/PointF;->y:F

    .line 972
    .local v11, "y":F
    iget-object v12, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v12}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v12

    invoke-virtual {v10, v2, v11, v12}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFF)V

    .line 974
    invoke-direct {v0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorX(F)F

    move-result v2

    .line 975
    invoke-direct {v0, v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTexCoorY(F)F

    move-result v11

    .line 976
    iget-object v12, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v20, v14, 0x1

    .local v20, "n":I
    aput v2, v12, v14

    .line 977
    .end local v14    # "n":I
    iget-object v12, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v14, v20, 0x1

    .restart local v14    # "n":I
    aput v11, v12, v20

    .line 978
    .end local v20    # "n":I
    iget-object v12, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v20, v14, 0x1

    .restart local v20    # "n":I
    aput v2, v12, v14

    .line 979
    .end local v14    # "n":I
    iget-object v12, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    add-int/lit8 v14, v20, 0x1

    .restart local v14    # "n":I
    aput v11, v12, v20

    .line 981
    .end local v20    # "n":I
    sub-float/2addr v4, v9

    .line 982
    iget-object v12, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    invoke-virtual {v10, v3, v4, v12}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    .line 984
    iget-object v12, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v20, v6, 0x1

    .local v20, "m":I
    iget-object v1, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v1, v1, v18

    aget v21, v7, v18

    add-float v1, v1, v21

    aput v1, v12, v6

    .line 985
    .end local v6    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v6, v20, 0x1

    .restart local v6    # "m":I
    iget-object v12, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v12, v12, v18

    aget v21, v7, v19

    add-float v12, v12, v21

    aput v12, v1, v20

    .line 986
    .end local v20    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v12, v6, 0x1

    .local v12, "m":I
    aput v13, v1, v6

    .line 987
    .end local v6    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v6, v12, 0x1

    .restart local v6    # "m":I
    move/from16 v37, v2

    iget-object v2, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    .end local v2    # "x":F
    .local v37, "x":F
    aget v2, v2, v18

    aget v20, v7, v18

    add-float v2, v2, v20

    aput v2, v1, v12

    .line 988
    .end local v12    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v2, v6, 0x1

    .local v2, "m":I
    iget-object v12, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v12, v12, v18

    aget v20, v7, v19

    add-float v12, v12, v20

    aput v12, v1, v6

    .line 989
    .end local v6    # "m":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    add-int/lit8 v6, v2, 0x1

    .restart local v6    # "m":I
    aput v13, v1, v2

    .line 991
    .end local v2    # "m":I
    iget-object v1, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v1, v1, v18

    iget-object v2, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v2, v2, v18

    move-object/from16 v12, v31

    invoke-direct {v0, v12, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->preCalculateShadowPage2(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FF)V

    .end local v4    # "offset":F
    .end local v5    # "angle":F
    .end local v9    # "rollLength":F
    .end local v11    # "y":F
    .end local v31    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v37    # "x":F
    .local v12, "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    goto :goto_4

    .line 994
    .end local v13    # "z":F
    .end local v35    # "offsetTotal":F
    .end local v36    # "rollNum":I
    .restart local v1    # "rollNum":I
    .local v12, "offsetTotal":F
    .restart local v30    # "z":F
    .restart local v31    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    :cond_5
    move/from16 v36, v1

    move/from16 v35, v12

    move-object/from16 v12, v31

    move/from16 v13, v30

    .end local v1    # "rollNum":I
    .end local v30    # "z":F
    .end local v31    # "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .local v12, "lineShadowPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .restart local v13    # "z":F
    .restart local v35    # "offsetTotal":F
    .restart local v36    # "rollNum":I
    :goto_4
    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollNum:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    .line 995
    .end local v36    # "rollNum":I
    .restart local v1    # "rollNum":I
    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    move/from16 v4, p5

    invoke-direct {v0, v4, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->processTexCoor(II[F)V

    .line 996
    return-void
.end method

.method private calculateShadowPage()V
    .locals 15

    .line 1070
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    .line 1072
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 1073
    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageNum:I

    .line 1074
    return-void

    .line 1077
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 1079
    .local v0, "point":Landroid/graphics/PointF;
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    if-ge v2, v3, :cond_2

    .line 1080
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getLength()F

    move-result v3

    .line 1082
    .local v3, "width":F
    const/high16 v4, 0x43700000    # 240.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    .line 1083
    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    goto :goto_1

    .line 1085
    :cond_1
    const/high16 v3, 0x42a00000    # 80.0f

    .line 1088
    :goto_1
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    invoke-virtual {v4, v5, v3, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    .line 1079
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1091
    .end local v3    # "width":F
    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    .line 1092
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v3, v3, v2

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v5, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    .line 1093
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    aput v5, v3, v4

    .line 1094
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    aput v5, v3, v4

    .line 1095
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    aput v4, v3, v1

    .line 1096
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    aput v4, v3, v1

    .line 1091
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1099
    :cond_3
    const/4 v3, 0x0

    .line 1100
    .local v3, "m":I
    const/4 v5, 0x0

    .line 1101
    .local v5, "n":I
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v6

    .line 1102
    .local v6, "offset":[F
    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    const/4 v8, 0x0

    sub-float v7, v8, v7

    .line 1103
    .local v7, "z":F
    const/4 v9, 0x2

    aget v9, v6, v9

    add-float/2addr v7, v9

    .line 1105
    const/4 v2, 0x0

    :goto_3
    iget v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    if-ge v2, v9, :cond_4

    .line 1106
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v10, v5, 0x1

    .local v10, "n":I
    aput v8, v9, v5

    .line 1107
    .end local v5    # "n":I
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v9, v10, 0x1

    .local v9, "n":I
    aput v8, v5, v10

    .line 1108
    .end local v10    # "n":I
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v10, v9, 0x1

    .restart local v10    # "n":I
    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v5, v9

    .line 1109
    .end local v9    # "n":I
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v9, v10, 0x1

    .restart local v9    # "n":I
    aput v8, v5, v10

    .line 1110
    .end local v10    # "n":I
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v10, v9, 0x1

    .restart local v10    # "n":I
    const v11, 0x3dcccccd    # 0.1f

    aput v11, v5, v9

    .line 1111
    .end local v9    # "n":I
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v9, v10, 0x1

    .restart local v9    # "n":I
    aput v11, v5, v10

    .line 1112
    .end local v10    # "n":I
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v10, v9, 0x1

    .restart local v10    # "n":I
    const v12, 0x3f666666    # 0.9f

    aput v12, v5, v9

    .line 1113
    .end local v9    # "n":I
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    add-int/lit8 v9, v10, 0x1

    .restart local v9    # "n":I
    aput v11, v5, v10

    .line 1115
    .end local v10    # "n":I
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v5, v5, v2

    .line 1116
    .local v5, "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v10, v10, v2

    .line 1117
    .local v10, "lineEx":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v12, v3, 0x1

    .local v12, "m":I
    iget-object v13, v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v13, v13, v1

    aget v14, v6, v1

    add-float/2addr v13, v14

    aput v13, v11, v3

    .line 1118
    .end local v3    # "m":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v11, v12, 0x1

    .local v11, "m":I
    iget-object v13, v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v13, v13, v1

    aget v14, v6, v4

    add-float/2addr v13, v14

    aput v13, v3, v12

    .line 1119
    .end local v12    # "m":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v12, v11, 0x1

    .restart local v12    # "m":I
    aput v7, v3, v11

    .line 1120
    .end local v11    # "m":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v11, v12, 0x1

    .restart local v11    # "m":I
    iget-object v13, v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v13, v13, v4

    aget v14, v6, v1

    add-float/2addr v13, v14

    aput v13, v3, v12

    .line 1121
    .end local v12    # "m":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v12, v11, 0x1

    .restart local v12    # "m":I
    iget-object v13, v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v13, v13, v4

    aget v14, v6, v4

    add-float/2addr v13, v14

    aput v13, v3, v11

    .line 1122
    .end local v11    # "m":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v11, v12, 0x1

    .restart local v11    # "m":I
    aput v7, v3, v12

    .line 1123
    .end local v12    # "m":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v12, v11, 0x1

    .restart local v12    # "m":I
    iget-object v13, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v13, v13, v1

    aget v14, v6, v1

    add-float/2addr v13, v14

    aput v13, v3, v11

    .line 1124
    .end local v11    # "m":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v11, v12, 0x1

    .restart local v11    # "m":I
    iget-object v13, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v13, v13, v1

    aget v14, v6, v4

    add-float/2addr v13, v14

    aput v13, v3, v12

    .line 1125
    .end local v12    # "m":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v12, v11, 0x1

    .restart local v12    # "m":I
    aput v7, v3, v11

    .line 1126
    .end local v11    # "m":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v11, v12, 0x1

    .restart local v11    # "m":I
    iget-object v13, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v13, v13, v4

    aget v14, v6, v1

    add-float/2addr v13, v14

    aput v13, v3, v12

    .line 1127
    .end local v12    # "m":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v12, v11, 0x1

    .restart local v12    # "m":I
    iget-object v13, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v13, v13, v4

    aget v14, v6, v4

    add-float/2addr v13, v14

    aput v13, v3, v11

    .line 1128
    .end local v11    # "m":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    add-int/lit8 v11, v12, 0x1

    .restart local v11    # "m":I
    aput v7, v3, v12

    .line 1105
    .end local v12    # "m":I
    add-int/lit8 v2, v2, 0x1

    move v5, v9

    move v3, v11

    goto/16 :goto_3

    .line 1131
    .end local v9    # "n":I
    .end local v10    # "lineEx":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .end local v11    # "m":I
    .restart local v3    # "m":I
    .local v5, "n":I
    :cond_4
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageNum:I

    .line 1132
    return-void
.end method

.method private calculateShadowRoll()V
    .locals 12

    .line 1153
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    .line 1154
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getLength()F

    move-result v0

    .line 1156
    .local v0, "width":F
    const/high16 v1, 0x43700000    # 240.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 1157
    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    goto :goto_0

    .line 1159
    :cond_0
    const/high16 v0, 0x42a00000    # 80.0f

    .line 1162
    :goto_0
    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    .line 1163
    .local v1, "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v1, v0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    .line 1165
    const/4 v2, 0x0

    .line 1166
    .local v2, "m":I
    const/4 v3, 0x0

    .line 1167
    .local v3, "n":I
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getOffset()[F

    move-result-object v4

    .line 1168
    .local v4, "offset":[F
    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    const/4 v6, 0x0

    sub-float v5, v6, v5

    .line 1169
    .local v5, "z":F
    const/4 v7, 0x2

    aget v7, v4, v7

    add-float/2addr v5, v7

    .line 1171
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v8, v3, 0x1

    .local v8, "n":I
    aput v6, v7, v3

    .line 1172
    .end local v3    # "n":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v7, v8, 0x1

    .local v7, "n":I
    aput v6, v3, v8

    .line 1173
    .end local v8    # "n":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v8, v7, 0x1

    .restart local v8    # "n":I
    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v3, v7

    .line 1174
    .end local v7    # "n":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v7, v8, 0x1

    .restart local v7    # "n":I
    aput v6, v3, v8

    .line 1175
    .end local v8    # "n":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v8, v7, 0x1

    .restart local v8    # "n":I
    aput v6, v3, v7

    .line 1176
    .end local v7    # "n":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v6, v8, 0x1

    .local v6, "n":I
    const v7, 0x3dcccccd    # 0.1f

    aput v7, v3, v8

    .line 1177
    .end local v8    # "n":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v8, v6, 0x1

    .restart local v8    # "n":I
    aput v9, v3, v6

    .line 1178
    .end local v6    # "n":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    add-int/lit8 v6, v8, 0x1

    .restart local v6    # "n":I
    aput v7, v3, v8

    .line 1180
    .end local v8    # "n":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v7, v2, 0x1

    .local v7, "m":I
    iget-object v8, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    aget v10, v4, v9

    add-float/2addr v8, v10

    aput v8, v3, v2

    .line 1181
    .end local v2    # "m":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v3, v7, 0x1

    .local v3, "m":I
    iget-object v8, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v8, v8, v9

    const/4 v10, 0x1

    aget v11, v4, v10

    add-float/2addr v8, v11

    aput v8, v2, v7

    .line 1182
    .end local v7    # "m":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "m":I
    aput v5, v2, v3

    .line 1183
    .end local v3    # "m":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v3, v7, 0x1

    .restart local v3    # "m":I
    iget-object v8, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v8, v8, v10

    aget v11, v4, v9

    add-float/2addr v8, v11

    aput v8, v2, v7

    .line 1184
    .end local v7    # "m":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "m":I
    iget-object v8, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v8, v8, v10

    aget v11, v4, v10

    add-float/2addr v8, v11

    aput v8, v2, v3

    .line 1185
    .end local v3    # "m":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v3, v7, 0x1

    .restart local v3    # "m":I
    aput v5, v2, v7

    .line 1186
    .end local v7    # "m":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "m":I
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v8, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v8, v8, v9

    aget v11, v4, v9

    add-float/2addr v8, v11

    aput v8, v2, v3

    .line 1187
    .end local v3    # "m":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v3, v7, 0x1

    .restart local v3    # "m":I
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v8, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v8, v8, v9

    aget v11, v4, v10

    add-float/2addr v8, v11

    aput v8, v2, v7

    .line 1188
    .end local v7    # "m":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "m":I
    aput v5, v2, v3

    .line 1189
    .end local v3    # "m":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v3, v7, 0x1

    .restart local v3    # "m":I
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v8, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v8, v8, v10

    aget v9, v4, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 1190
    .end local v7    # "m":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "m":I
    iget-object v8, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v8, v8, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v8, v8, v10

    aget v9, v4, v10

    add-float/2addr v8, v9

    aput v8, v2, v3

    .line 1191
    .end local v3    # "m":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    add-int/lit8 v3, v7, 0x1

    .restart local v3    # "m":I
    aput v5, v2, v7

    .line 1193
    .end local v7    # "m":I
    iput v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollNum:I

    .line 1194
    return-void
.end method

.method private divideRollSegment([FIF)[F
    .locals 11
    .param p1, "distance"    # [F
    .param p2, "num"    # I
    .param p3, "step"    # F

    .line 809
    add-int/lit8 v0, p2, -0x1

    .line 810
    .local v0, "n":I
    const/4 v1, 0x0

    .line 811
    .local v1, "totalSeg":I
    new-array v2, v0, [I

    .line 812
    .local v2, "numSeg":[I
    new-array v3, v0, [F

    .line 814
    .local v3, "segLen":[F
    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    .local v1, "i":I
    .local v5, "totalSeg":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 815
    add-int/lit8 v6, v1, 0x1

    aget v6, p1, v6

    aget v7, p1, v1

    sub-float/2addr v6, v7

    .line 816
    .local v6, "segLenTotal":F
    div-float v7, v6, p3

    .line 817
    .local v7, "temp":F
    float-to-int v8, v7

    aput v8, v2, v1

    .line 818
    aget v8, v2, v1

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 819
    aget v8, v2, v1

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 821
    const v8, 0x3e4ccccd    # 0.2f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_0

    .line 822
    aget v8, v2, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v1

    .line 825
    :cond_0
    aget v8, v2, v1

    if-nez v8, :cond_1

    .line 826
    aget v8, v2, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v1

    .line 829
    :cond_1
    aget v8, v2, v1

    add-int/2addr v5, v8

    .line 830
    aget v8, v2, v1

    int-to-float v8, v8

    div-float v8, v6, v8

    aput v8, v3, v1

    .line 814
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 833
    .end local v6    # "segLenTotal":F
    .end local v7    # "temp":F
    :cond_2
    const/4 v6, 0x0

    .line 834
    .local v6, "k":I
    add-int/lit8 v7, v5, 0x1

    new-array v7, v7, [F

    .line 835
    .local v7, "segment":[F
    add-int/lit8 v8, v6, 0x1

    .local v8, "k":I
    aget v9, p1, v4

    aput v9, v7, v6

    .line 836
    .end local v6    # "k":I
    aget v6, p1, v4

    .line 838
    .local v6, "segLenTotal":F
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 839
    move v9, v8

    move v8, v6

    move v6, v4

    .local v6, "j":I
    .local v8, "segLenTotal":F
    .local v9, "k":I
    :goto_2
    aget v10, v2, v1

    if-ge v6, v10, :cond_3

    .line 840
    aget v10, v3, v1

    add-float/2addr v8, v10

    .line 841
    add-int/lit8 v10, v9, 0x1

    .local v10, "k":I
    aput v8, v7, v9

    .line 839
    .end local v9    # "k":I
    add-int/lit8 v6, v6, 0x1

    move v9, v10

    goto :goto_2

    .line 838
    .end local v10    # "k":I
    .restart local v9    # "k":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v6, v8

    move v8, v9

    goto :goto_1

    .line 845
    .end local v9    # "k":I
    .local v6, "segLenTotal":F
    .local v8, "k":I
    :cond_4
    return-object v7
.end method

.method private findRollSegment([FFZZ)I
    .locals 9
    .param p1, "distance"    # [F
    .param p2, "maxDistance"    # F
    .param p3, "haveHead"    # Z
    .param p4, "haveEnd"    # Z

    .line 775
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 776
    .local v0, "index":[I
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->getIndex(I[I)I

    move-result v1

    .line 778
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "j":I
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 779
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget v6, v0, v4

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 780
    .local v5, "x":F
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v6, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->mVertex:[Landroid/graphics/PointF;

    aget v7, v0, v4

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 781
    .local v6, "y":F
    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v7, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->distance(FF)F

    move-result v7

    .line 783
    .local v7, "temp":F
    cmpg-float v8, v7, p2

    if-gez v8, :cond_0

    .line 784
    add-int/lit8 v8, v2, 0x1

    .local v8, "j":I
    aput v7, p1, v2

    .line 778
    .end local v2    # "j":I
    move v2, v8

    .end local v8    # "j":I
    .restart local v2    # "j":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 788
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "temp":F
    :cond_1
    if-eqz p3, :cond_2

    .line 789
    add-int/lit8 v5, v2, 0x1

    .local v5, "j":I
    const/4 v6, 0x0

    aput v6, p1, v2

    .line 792
    .end local v2    # "j":I
    move v2, v5

    .end local v5    # "j":I
    .restart local v2    # "j":I
    :cond_2
    if-eqz p4, :cond_3

    .line 793
    add-int/lit8 v5, v2, 0x1

    .restart local v5    # "j":I
    aput p2, p1, v2

    .line 796
    .end local v2    # "j":I
    move v2, v5

    .end local v5    # "j":I
    .restart local v2    # "j":I
    :cond_3
    invoke-static {p1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->sort([FIZ)V

    .line 797
    return v2
.end method

.method private getTexCoorX(F)F
    .locals 1
    .param p1, "x"    # F

    .line 205
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 206
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 207
    return p1
.end method

.method private getTexCoorY(F)F
    .locals 1
    .param p1, "y"    # F

    .line 211
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 212
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 213
    return p1
.end method

.method private init()V
    .locals 4

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 85
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 86
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipCenter:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 87
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 89
    const/4 v0, 0x4

    new-array v1, v0, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 90
    new-array v1, v0, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 93
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    new-instance v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    aput-object v3, v2, v1

    .line 94
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageEx:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    new-instance v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-direct {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>()V

    aput-object v3, v2, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    .line 98
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    .line 99
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    .line 100
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    invoke-direct {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    .line 101
    const/16 v0, 0x72

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    .line 102
    const/16 v0, 0x4c

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    .line 103
    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    .line 104
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    .line 105
    const/16 v0, 0x30

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    .line 106
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    .line 107
    return-void
.end method

.method private initAllTriangle()V
    .locals 4

    .line 112
    const/4 v0, 0x3

    new-array v1, v0, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 115
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    new-instance v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    invoke-direct {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;-><init>()V

    aput-object v3, v2, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_0
    new-array v2, v0, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    .line 120
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 121
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    new-instance v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    invoke-direct {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;-><init>()V

    aput-object v3, v2, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_1
    new-array v2, v0, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    .line 126
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 127
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    new-instance v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    invoke-direct {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;-><init>()V

    aput-object v3, v2, v1

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 129
    :cond_2
    return-void
.end method

.method private preCalculateShadowPage1(I[F[F[F)V
    .locals 9
    .param p1, "num"    # I
    .param p2, "x"    # [F
    .param p3, "y"    # [F
    .param p4, "z"    # [F

    .line 1013
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 1015
    .local v0, "point":Landroid/graphics/PointF;
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    .line 1017
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    if-gtz v1, :cond_0

    .line 1018
    return-void

    .line 1021
    :cond_0
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 1022
    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    .line 1025
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    if-ge v2, v3, :cond_2

    .line 1026
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v3, v3, v2

    aget v4, p2, v2

    aget v5, p3, v2

    add-int/lit8 v6, v2, 0x1

    aget v6, p2, v6

    add-int/lit8 v7, v2, 0x1

    aget v7, p3, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 1025
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1029
    :cond_2
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v3, v3, v1

    .line 1030
    .local v3, "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v4, v3, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    .line 1031
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget-object v6, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v8, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v8, v8, v7

    invoke-virtual {v3, v4, v5, v6, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 1033
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    sub-int/2addr v5, v7

    aget-object v3, v4, v5

    .line 1034
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v4, v3, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    .line 1035
    iget-object v4, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v4, v1

    iget-object v5, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v5, v1

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 1036
    return-void
.end method

.method private preCalculateShadowPage2(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FF)V
    .locals 5
    .param p1, "lineShadowPage"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1040
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 1042
    .local v0, "point":Landroid/graphics/PointF;
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1043
    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    .line 1044
    return-void

    .line 1047
    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPageNum:I

    .line 1049
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    aget-object v2, v2, v1

    .line 1050
    .local v2, "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v3, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v1

    iget-object v4, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v4, v1

    invoke-virtual {v2, v3, v1, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 1051
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    .line 1052
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v3, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 1054
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineShadowPage:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 1055
    .end local v2    # "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .local v1, "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v2, v2, v3

    iget-object v4, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v3, v4, v3

    invoke-virtual {v1, p2, p3, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 1056
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v2, v1, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    .line 1057
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, p2, p3, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 1058
    return-void
.end method

.method private processTexCoor(II[F)V
    .locals 6
    .param p1, "rotation"    # I
    .param p2, "num"    # I
    .param p3, "texCoor"    # [F

    .line 334
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 359
    :pswitch_0
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 360
    mul-int/lit8 v2, v0, 0x2

    aget v2, p3, v2

    .line 361
    .local v2, "x":F
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, p3, v3

    .line 362
    .local v3, "y":F
    mul-int/lit8 v4, v0, 0x2

    aput v3, p3, v4

    .line 363
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    sub-float v5, v1, v2

    aput v5, p3, v4

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "i":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_1
    nop

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p2, :cond_0

    .line 350
    mul-int/lit8 v2, v0, 0x2

    aget v2, p3, v2

    .line 351
    .restart local v2    # "x":F
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, p3, v3

    .line 352
    .restart local v3    # "y":F
    mul-int/lit8 v4, v0, 0x2

    sub-float v5, v1, v2

    aput v5, p3, v4

    .line 353
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    sub-float v5, v1, v3

    aput v5, p3, v4

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 339
    .end local v0    # "i":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_2
    nop

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p2, :cond_0

    .line 340
    mul-int/lit8 v2, v0, 0x2

    aget v2, p3, v2

    .line 341
    .restart local v2    # "x":F
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, p3, v3

    .line 342
    .restart local v3    # "y":F
    mul-int/lit8 v4, v0, 0x2

    sub-float v5, v1, v3

    aput v5, p3, v4

    .line 343
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aput v2, p3, v4

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 336
    .end local v0    # "i":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_3
    nop

    .line 368
    :cond_0
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reset()V
    .locals 4

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    .line 135
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBetweenEnd:F

    .line 136
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumFg:I

    .line 137
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumFgBack:I

    .line 138
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumBg:I

    .line 139
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollNum:I

    .line 140
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageNum:I

    .line 141
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollNum:I

    .line 143
    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mIsValid:Z

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 148
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v3, v3, v1

    iput-boolean v0, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mIsValid:Z

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 152
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v3, v3, v1

    iput-boolean v0, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->mIsValid:Z

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 154
    :cond_2
    return-void
.end method


# virtual methods
.method public correctFlipLine(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;[I)Z
    .locals 16
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p3, "side"    # [I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 377
    const/4 v2, 0x0

    .line 378
    .local v2, "x0":F
    const/4 v3, 0x0

    .line 379
    .local v3, "y0":F
    const/4 v4, 0x0

    .line 380
    .local v4, "x1":F
    const/4 v5, 0x0

    .line 382
    .local v5, "y1":F
    const/4 v6, 0x2

    if-nez p3, :cond_0

    .line 383
    new-array v7, v6, [I

    .local v7, "sideEx":[I
    goto :goto_0

    .line 385
    .end local v7    # "sideEx":[I
    :cond_0
    move-object/from16 v7, p3

    .line 388
    .restart local v7    # "sideEx":[I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v8

    .line 390
    .local v8, "slope":F
    const v9, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v9, v9, v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v9, :cond_3

    .line 391
    iget-object v9, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v9, v9, v11

    .line 393
    .local v9, "x":F
    iget v12, v0, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    cmpl-float v12, v9, v12

    if-lez v12, :cond_2

    iget v12, v0, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    cmpg-float v12, v9, v12

    if-gez v12, :cond_2

    .line 394
    iget-object v12, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v12, v12, v11

    iget-object v13, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v13, v13, v10

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 395
    iget-object v12, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aput v9, v12, v11

    .line 396
    iget-object v12, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    iget v13, v0, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v12, v11

    .line 397
    aput v11, v7, v11

    .line 398
    iget-object v11, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aput v9, v11, v10

    .line 399
    iget-object v11, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    aput v12, v11, v10

    .line 400
    aput v6, v7, v10

    goto :goto_1

    .line 402
    :cond_1
    iget-object v12, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aput v9, v12, v11

    .line 403
    iget-object v12, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    aput v13, v12, v11

    .line 404
    aput v6, v7, v11

    .line 405
    iget-object v6, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aput v9, v6, v10

    .line 406
    iget-object v6, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    iget v12, v0, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v6, v10

    .line 407
    aput v11, v7, v10

    .line 410
    :goto_1
    return v10

    .line 412
    :cond_2
    const-string v6, "PageFlippingController"

    const-string v10, "correctFlipLine error 0!"

    invoke-static {v6, v10}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return v11

    .line 415
    .end local v9    # "x":F
    :cond_3
    const/4 v9, 0x0

    cmpl-float v12, v9, v8

    const/4 v13, 0x3

    if-nez v12, :cond_6

    .line 416
    iget-object v6, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v6, v6, v11

    .line 418
    .local v6, "y":F
    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    cmpl-float v9, v6, v9

    if-lez v9, :cond_5

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    cmpg-float v9, v6, v9

    if-gez v9, :cond_5

    .line 419
    iget-object v9, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v9, v9, v11

    iget-object v12, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v12, v12, v10

    cmpg-float v9, v9, v12

    if-gez v9, :cond_4

    .line 420
    iget-object v9, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    iget v12, v0, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v9, v11

    .line 421
    iget-object v9, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aput v6, v9, v11

    .line 422
    aput v13, v7, v11

    .line 423
    iget-object v9, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    iget v11, v0, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    aput v11, v9, v10

    .line 424
    iget-object v9, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aput v6, v9, v10

    .line 425
    aput v10, v7, v10

    goto :goto_2

    .line 427
    :cond_4
    iget-object v9, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    iget v12, v0, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    aput v12, v9, v11

    .line 428
    iget-object v9, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aput v6, v9, v11

    .line 429
    aput v10, v7, v11

    .line 430
    iget-object v9, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    iget v11, v0, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    aput v11, v9, v10

    .line 431
    iget-object v9, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aput v6, v9, v10

    .line 432
    aput v13, v7, v10

    .line 435
    :goto_2
    return v10

    .line 437
    :cond_5
    const-string v9, "PageFlippingController"

    const-string v10, "correctFlipLine error 1!"

    invoke-static {v9, v10}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return v11

    .line 442
    .end local v6    # "y":F
    :cond_6
    move v12, v5

    move v5, v3

    move v3, v2

    move v2, v11

    .local v2, "i":I
    .local v3, "x0":F
    .local v5, "y0":F
    .local v12, "y1":F
    :goto_3
    if-ge v2, v6, :cond_10

    .line 443
    if-nez v2, :cond_7

    .line 444
    iget v14, v0, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    .local v14, "y":F
    goto :goto_4

    .line 446
    .end local v14    # "y":F
    :cond_7
    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    .line 449
    .restart local v14    # "y":F
    :goto_4
    iget-object v9, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v9, v9, v11

    sub-float v9, v14, v9

    div-float/2addr v9, v8

    iget-object v6, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v6, v6, v11

    add-float/2addr v9, v6

    .line 451
    .restart local v9    # "x":F
    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpg-float v6, v9, v6

    if-gez v6, :cond_a

    .line 452
    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v6

    .line 453
    iget-object v6, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v6, v6, v11

    sub-float v6, v9, v6

    mul-float/2addr v6, v8

    iget-object v10, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v10, v10, v11

    add-float v14, v6, v10

    .line 455
    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    cmpg-float v6, v14, v6

    if-ltz v6, :cond_9

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    cmpl-float v6, v14, v6

    if-lez v6, :cond_8

    goto :goto_6

    .line 460
    :cond_8
    aput v13, v7, v2

    .line 479
    :goto_5
    const/4 v6, 0x2

    goto :goto_8

    .line 456
    :cond_9
    :goto_6
    const-string v6, "PageFlippingController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "correctFlipLine error 2! i = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return v11

    .line 461
    :cond_a
    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpl-float v6, v9, v6

    if-lez v6, :cond_d

    .line 462
    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v6

    .line 463
    iget-object v6, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v6, v6, v11

    sub-float v6, v9, v6

    mul-float/2addr v6, v8

    iget-object v10, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v10, v10, v11

    add-float v14, v6, v10

    .line 465
    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    cmpg-float v6, v14, v6

    if-ltz v6, :cond_c

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    cmpl-float v6, v14, v6

    if-lez v6, :cond_b

    goto :goto_7

    .line 470
    :cond_b
    const/4 v6, 0x1

    aput v6, v7, v2

    goto :goto_5

    .line 466
    :cond_c
    :goto_7
    const-string v6, "PageFlippingController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "correctFlipLine error 3! i = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v11

    .line 472
    :cond_d
    if-nez v2, :cond_e

    .line 473
    aput v11, v7, v2

    goto :goto_5

    .line 475
    :cond_e
    const/4 v6, 0x2

    aput v6, v7, v2

    .line 479
    :goto_8
    if-nez v2, :cond_f

    .line 480
    move v3, v9

    .line 481
    move v5, v14

    goto :goto_9

    .line 483
    :cond_f
    move v4, v9

    .line 484
    move v10, v14

    .line 442
    .end local v12    # "y1":F
    .local v10, "y1":F
    move v12, v10

    .end local v10    # "y1":F
    .restart local v12    # "y1":F
    :goto_9
    add-int/lit8 v2, v2, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 488
    .end local v9    # "x":F
    .end local v14    # "y":F
    :cond_10
    cmpl-float v6, v3, v4

    if-nez v6, :cond_11

    cmpl-float v6, v5, v12

    if-eqz v6, :cond_12

    :cond_11
    aget v6, v7, v11

    const/4 v9, 0x1

    aget v10, v7, v9

    if-ne v6, v10, :cond_13

    .line 490
    :cond_12
    const-string v6, "PageFlippingController"

    const-string v9, "correctFlipLine error 4!"

    invoke-static {v6, v9}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return v11

    .line 495
    :cond_13
    iget-object v6, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v6, v6, v9

    iget-object v9, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v9, v9, v11

    sub-float/2addr v6, v9

    sub-float v9, v4, v3

    mul-float/2addr v6, v9

    .line 497
    .local v6, "x":F
    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    if-gez v9, :cond_14

    .line 500
    aget v9, v7, v11

    .line 501
    .local v9, "temp":I
    const/4 v10, 0x1

    aget v13, v7, v10

    aput v13, v7, v11

    .line 502
    aput v9, v7, v10

    .line 504
    invoke-virtual {v1, v4, v12, v3, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 505
    .end local v9    # "temp":I
    goto :goto_a

    .line 506
    :cond_14
    const/4 v10, 0x1

    invoke-virtual {v1, v3, v5, v4, v12}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    .line 509
    :goto_a
    return v10
.end method

.method public getBgDim()F
    .locals 1

    .line 756
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBgDim:F

    return v0
.end method

.method public getDrawFlag()I
    .locals 1

    .line 167
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    return v0
.end method

.method public getPage()Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .locals 1

    .line 157
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    return-object v0
.end method

.method public getRollNum()I
    .locals 1

    .line 1007
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollNum:I

    return v0
.end method

.method public getRollRadius()F
    .locals 1

    .line 514
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    return v0
.end method

.method public getRollTexCoor()[F
    .locals 1

    .line 1003
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollTexCoor:[F

    return-object v0
.end method

.method public getRollVertex()[F
    .locals 1

    .line 999
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRollVertex:[F

    return-object v0
.end method

.method public getShadowPageNum()I
    .locals 1

    .line 1143
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageNum:I

    return v0
.end method

.method public getShadowPageTexCoor()[F
    .locals 1

    .line 1139
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageTexCoor:[F

    return-object v0
.end method

.method public getShadowPageVertex()[F
    .locals 1

    .line 1135
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowPageVertex:[F

    return-object v0
.end method

.method public getShadowRollNum()I
    .locals 1

    .line 1205
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollNum:I

    return v0
.end method

.method public getShadowRollTexCoor()[F
    .locals 1

    .line 1201
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollTexCoor:[F

    return-object v0
.end method

.method public getShadowRollVertex()[F
    .locals 1

    .line 1197
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mShadowRollVertex:[F

    return-object v0
.end method

.method public getTriangleBg()[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .locals 1

    .line 760
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleBg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    return-object v0
.end method

.method public getTriangleFg()[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .locals 1

    .line 607
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFg:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    return-object v0
.end method

.method public getTriangleFgBack()[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .locals 1

    .line 701
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleFgBack:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    return-object v0
.end method

.method public getTriangleNumBg()I
    .locals 1

    .line 764
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumBg:I

    return v0
.end method

.method public getTriangleNumFg()I
    .locals 1

    .line 611
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumFg:I

    return v0
.end method

.method public getTriangleNumFgBack()I
    .locals 1

    .line 705
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mTriangleNumFgBack:I

    return v0
.end method

.method public isNeedDraw()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mIsNeedDraw:Z

    return v0
.end method

.method public needDraw(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 171
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needDrawBg()Z
    .locals 2

    .line 188
    const/16 v0, 0x84

    .line 189
    .local v0, "flag":I
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public needDrawFg()Z
    .locals 2

    .line 177
    const/16 v0, 0x41

    .line 178
    .local v0, "flag":I
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public needDrawFgBack()Z
    .locals 1

    .line 182
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needDrawRoll()Z
    .locals 1

    .line 193
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needDrawShadowPage()Z
    .locals 1

    .line 197
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needDrawShadowRoll()Z
    .locals 1

    .line 201
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onProcessPageTurning(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;I)V
    .locals 29
    .param p1, "page"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .param p2, "rotation"    # I

    move-object/from16 v6, p0

    .line 227
    move/from16 v7, p2

    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 242
    .local v8, "side":[I
    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->reset()V

    .line 243
    move-object/from16 v9, p1

    iput-object v9, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    .line 244
    iget-object v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getLineFlip()Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move-result-object v10

    .line 245
    .local v10, "lineFlip":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getFactor()F

    move-result v11

    .line 246
    .local v11, "factor":F
    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x43160000    # 150.0f

    invoke-static {v11, v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v1

    iput v1, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    .line 249
    invoke-virtual {v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getLength()F

    move-result v1

    .line 250
    .local v1, "length":F
    const/high16 v12, 0x40000000    # 2.0f

    .line 251
    .local v12, "lengthStart":F
    const/high16 v2, 0x40000000    # 2.0f

    sub-float v13, v1, v2

    .line 252
    .local v13, "lengthEndEx":F
    iget v2, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    sub-float v14, v13, v2

    .line 253
    .local v14, "lengthEnd":F
    mul-float v15, v1, v11

    .line 254
    .end local v1    # "length":F
    .local v15, "length":F
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v15, v0, v14, v2, v1}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v2

    iput v2, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBgDim:F

    .line 256
    iget-object v2, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    iget-object v3, v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v5, v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v5, v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 257
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    move-object v5, v2

    .line 258
    .local v5, "pointStart":Landroid/graphics/PointF;
    iget-object v3, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    .line 259
    .local v3, "pointEnd":Landroid/graphics/PointF;
    iget v2, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mWidth:I

    int-to-float v2, v2

    iget v0, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v0

    iput v2, v5, Landroid/graphics/PointF;->x:F

    .line 260
    iget v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mHeight:I

    int-to-float v0, v0

    iget v2, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    iput v0, v5, Landroid/graphics/PointF;->y:F

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "haveShadow":Z
    const/4 v2, 0x0

    .line 264
    .local v2, "haveFgBack":Z
    cmpl-float v17, v15, v12

    if-ltz v17, :cond_2

    cmpg-float v17, v15, v13

    if-gtz v17, :cond_2

    .line 265
    iget-object v1, v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v1, v1, v4

    iget-object v4, v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/16 v17, 0x1

    aget v4, v4, v17

    move/from16 v18, v0

    move/from16 v19, v2

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v11, v0, v2, v1, v4}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v1

    .line 267
    .end local v0    # "haveShadow":Z
    .end local v2    # "haveFgBack":Z
    .local v1, "x":F
    .local v18, "haveShadow":Z
    .local v19, "haveFgBack":Z
    iget-object v4, v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/16 v16, 0x0

    aget v4, v4, v16

    move-object/from16 v20, v3

    iget-object v3, v10, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    .end local v3    # "pointEnd":Landroid/graphics/PointF;
    .local v20, "pointEnd":Landroid/graphics/PointF;
    aget v3, v3, v17

    invoke-static {v11, v0, v2, v4, v3}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v2

    .line 269
    .local v2, "y":F
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->getSlope()F

    move-result v3

    div-float/2addr v0, v3

    .line 270
    .local v0, "slope":F
    iget-object v3, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v3, v1, v2, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFF)V

    .line 271
    iget-object v3, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v4, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    move/from16 v21, v0

    iget-object v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    .end local v0    # "slope":F
    .local v21, "slope":F
    invoke-virtual {v3, v4, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->symmetryPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 273
    cmpg-float v0, v15, v14

    if-gtz v0, :cond_0

    .line 274
    iget-object v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v6, v0, v3, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->correctFlipLine(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;[I)Z

    .line 275
    iget-object v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v3, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move/from16 v22, v1

    iget-object v1, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    .end local v1    # "x":F
    .local v22, "x":F
    invoke-virtual {v0, v3, v4, v1, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->set(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;[I)V

    goto :goto_0

    .line 278
    .end local v22    # "x":F
    .restart local v1    # "x":F
    :cond_0
    move/from16 v22, v1

    .end local v1    # "x":F
    .restart local v22    # "x":F
    :goto_0
    sget v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->START_ANGLE:F

    const/4 v1, 0x0

    sub-float v0, v1, v0

    iget v1, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    mul-float/2addr v0, v1

    .line 280
    .local v0, "offset":F
    cmpl-float v1, v15, v0

    if-lez v1, :cond_1

    .line 281
    const/4 v1, 0x1

    .line 282
    .end local v18    # "haveShadow":Z
    .local v1, "haveShadow":Z
    iget-object v3, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v4, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipCenter:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move/from16 v23, v1

    iget-object v1, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    .end local v1    # "haveShadow":Z
    .local v23, "haveShadow":Z
    invoke-virtual {v3, v4, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    .line 283
    iget-object v1, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipCenter:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    const/4 v4, 0x0

    invoke-virtual {v6, v1, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->correctFlipLine(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;[I)Z

    .line 284
    iget v1, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    sub-float/2addr v0, v1

    .line 285
    iget-object v1, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipCenter:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v3, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipBorder:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v4, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePointEx:Landroid/graphics/PointF;

    invoke-virtual {v1, v3, v0, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    .line 288
    move/from16 v18, v23

    .end local v23    # "haveShadow":Z
    .restart local v18    # "haveShadow":Z
    :cond_1
    sget v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    sget v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->START_ANGLE:F

    sub-float/2addr v1, v3

    iget v3, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    mul-float/2addr v1, v3

    .line 290
    .end local v0    # "offset":F
    .local v1, "offset":F
    cmpl-float v0, v15, v1

    if-lez v0, :cond_3

    .line 291
    const/4 v0, 0x1

    .line 292
    .end local v19    # "haveFgBack":Z
    .local v0, "haveFgBack":Z
    iget-object v3, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    iget-object v4, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move/from16 v24, v0

    iget-object v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    .end local v0    # "haveFgBack":Z
    .local v24, "haveFgBack":Z
    invoke-virtual {v3, v4, v1, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z

    .line 293
    iget v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mRadius:F

    sget v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v0, v3

    sub-float v0, v1, v0

    iput v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBetweenEnd:F

    .line 294
    iget-object v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    invoke-virtual {v6, v0, v3, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->correctFlipLine(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;[I)Z

    .line 295
    iget-object v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v3, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mLineFlipEnd:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    move/from16 v25, v1

    iget-object v1, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mBasePoint:Landroid/graphics/PointF;

    .end local v1    # "offset":F
    .local v25, "offset":F
    invoke-virtual {v0, v3, v4, v1, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->set(Landroid/graphics/Rect;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;[I)V

    .line 299
    .end local v2    # "y":F
    .end local v21    # "slope":F
    .end local v22    # "x":F
    .end local v25    # "offset":F
    move/from16 v3, v18

    move/from16 v4, v24

    goto :goto_1

    .end local v18    # "haveShadow":Z
    .end local v20    # "pointEnd":Landroid/graphics/PointF;
    .end local v24    # "haveFgBack":Z
    .local v0, "haveShadow":Z
    .local v2, "haveFgBack":Z
    .restart local v3    # "pointEnd":Landroid/graphics/PointF;
    :cond_2
    move/from16 v18, v0

    move/from16 v19, v2

    move-object/from16 v20, v3

    const/16 v17, 0x1

    .end local v0    # "haveShadow":Z
    .end local v2    # "haveFgBack":Z
    .end local v3    # "pointEnd":Landroid/graphics/PointF;
    .restart local v18    # "haveShadow":Z
    .restart local v19    # "haveFgBack":Z
    .restart local v20    # "pointEnd":Landroid/graphics/PointF;
    :cond_3
    move/from16 v3, v18

    move/from16 v4, v19

    .end local v18    # "haveShadow":Z
    .end local v19    # "haveFgBack":Z
    .local v3, "haveShadow":Z
    .local v4, "haveFgBack":Z
    :goto_1
    cmpg-float v0, v15, v12

    if-gez v0, :cond_4

    .line 300
    iget v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    .line 301
    invoke-direct {v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateFg(I)V

    .line 328
    .end local v3    # "haveShadow":Z
    .end local v4    # "haveFgBack":Z
    .end local v5    # "pointStart":Landroid/graphics/PointF;
    .end local v20    # "pointEnd":Landroid/graphics/PointF;
    .local v0, "haveFgBack":Z
    .local v8, "haveShadow":Z
    .local v16, "pointEnd":Landroid/graphics/PointF;
    .local v17, "pointStart":Landroid/graphics/PointF;
    .local v28, "side":[I
    :goto_2
    move v0, v4

    move-object/from16 v17, v5

    move-object/from16 v28, v8

    move-object/from16 v16, v20

    move v8, v3

    goto/16 :goto_3

    .line 302
    .end local v0    # "haveFgBack":Z
    .end local v16    # "pointEnd":Landroid/graphics/PointF;
    .end local v17    # "pointStart":Landroid/graphics/PointF;
    .end local v28    # "side":[I
    .restart local v3    # "haveShadow":Z
    .restart local v4    # "haveFgBack":Z
    .restart local v5    # "pointStart":Landroid/graphics/PointF;
    .local v8, "side":[I
    .restart local v20    # "pointEnd":Landroid/graphics/PointF;
    :cond_4
    cmpl-float v0, v15, v13

    if-lez v0, :cond_5

    .line 303
    iget v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    .line 304
    invoke-direct {v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateBg(I)V

    goto :goto_2

    .line 305
    :cond_5
    cmpl-float v0, v15, v14

    if-lez v0, :cond_7

    .line 306
    iget v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mDrawFlag:I

    .line 307
    invoke-direct {v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateBg(I)V

    .line 308
    iget-object v0, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPointFlipStart:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;

    iget-object v1, v6, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PointFlip;->setAllFlip(Landroid/graphics/Rect;)V

    .line 309
    const/4 v1, 0x0

    move-object v0, v6

    move/from16 v2, v17

    move v2, v4

    move/from16 v26, v3

    move-object/from16 v16, v20

    move-object v3, v5

    .end local v3    # "haveShadow":Z
    .end local v20    # "pointEnd":Landroid/graphics/PointF;
    .restart local v16    # "pointEnd":Landroid/graphics/PointF;
    .local v26, "haveShadow":Z
    move/from16 v27, v4

    move-object/from16 v4, v16

    .end local v4    # "haveFgBack":Z
    .local v27, "haveFgBack":Z
    move-object/from16 v17, v5

    move v5, v7

    .end local v5    # "pointStart":Landroid/graphics/PointF;
    .restart local v17    # "pointStart":Landroid/graphics/PointF;
    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateRoll(ZZLandroid/graphics/PointF;Landroid/graphics/PointF;I)V

    .line 311
    move/from16 v5, v26

    const/4 v4, 0x1

    if-ne v4, v5, :cond_6

    .line 312
    .end local v26    # "haveShadow":Z
    .local v5, "haveShadow":Z
    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateShadowRoll()V

    .line 328
    .end local v5    # "haveShadow":Z
    .end local v27    # "haveFgBack":Z
    .restart local v0    # "haveFgBack":Z
    .local v8, "haveShadow":Z
    .restart local v28    # "side":[I
    :cond_6
    move-object/from16 v28, v8

    move/from16 v0, v27

    move v8, v5

    goto :goto_3

    .line 315
    .end local v0    # "haveFgBack":Z
    .end local v16    # "pointEnd":Landroid/graphics/PointF;
    .end local v17    # "pointStart":Landroid/graphics/PointF;
    .end local v28    # "side":[I
    .restart local v3    # "haveShadow":Z
    .restart local v4    # "haveFgBack":Z
    .local v5, "pointStart":Landroid/graphics/PointF;
    .local v8, "side":[I
    .restart local v20    # "pointEnd":Landroid/graphics/PointF;
    :cond_7
    move/from16 v27, v4

    move/from16 v4, v17

    move-object/from16 v16, v20

    move-object/from16 v17, v5

    move v5, v3

    .end local v3    # "haveShadow":Z
    .end local v4    # "haveFgBack":Z
    .end local v20    # "pointEnd":Landroid/graphics/PointF;
    .local v5, "haveShadow":Z
    .restart local v16    # "pointEnd":Landroid/graphics/PointF;
    .restart local v17    # "pointStart":Landroid/graphics/PointF;
    .restart local v27    # "haveFgBack":Z
    invoke-direct {v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateFg(I)V

    .line 316
    invoke-direct {v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateBg(I)V

    .line 317
    const/4 v1, 0x1

    move-object v0, v6

    move/from16 v2, v27

    move-object/from16 v3, v17

    move-object/from16 v4, v16

    move-object/from16 v28, v8

    move v8, v5

    move v5, v7

    .end local v5    # "haveShadow":Z
    .local v8, "haveShadow":Z
    .restart local v28    # "side":[I
    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateRoll(ZZLandroid/graphics/PointF;Landroid/graphics/PointF;I)V

    .line 319
    move/from16 v0, v27

    const/4 v1, 0x1

    if-ne v1, v0, :cond_8

    .line 320
    .end local v27    # "haveFgBack":Z
    .restart local v0    # "haveFgBack":Z
    invoke-direct {v6, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateFgBack(I)V

    .line 323
    :cond_8
    if-ne v1, v8, :cond_9

    .line 324
    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateShadowRoll()V

    .line 325
    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->calculateShadowPage()V

    .line 328
    :cond_9
    :goto_3
    return-void
.end method

.method public setNeedDraw(Z)V
    .locals 0
    .param p1, "needDraw"    # Z

    .line 217
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mIsNeedDraw:Z

    .line 218
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 161
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mWidth:I

    .line 162
    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mHeight:I

    .line 163
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mPageRect:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mWidth:I

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 164
    return-void
.end method
