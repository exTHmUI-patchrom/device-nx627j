.class public Landroid/transition/SidePropagation;
.super Landroid/transition/VisibilityPropagation;
.source "SidePropagation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlidePropagation"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    .line 35
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    .line 36
    const/16 v0, 0x50

    iput v0, p0, Landroid/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "viewX"    # I
    .param p3, "viewY"    # I
    .param p4, "epicenterX"    # I
    .param p5, "epicenterY"    # I
    .param p6, "left"    # I
    .param p7, "top"    # I
    .param p8, "right"    # I
    .param p9, "bottom"    # I

    .line 124
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x1

    const v5, 0x800003

    if-ne v0, v5, :cond_2

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    move v0, v4

    .line 126
    .local v0, "isRtl":Z
    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .end local v0    # "isRtl":Z
    :goto_1
    move v0, v1

    .line 127
    .local v0, "side":I
    goto :goto_4

    .end local v0    # "side":I
    :cond_2
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    const v5, 0x800005

    if-ne v0, v5, :cond_5

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    move v0, v4

    .line 129
    .local v0, "isRtl":Z
    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v3

    .end local v0    # "isRtl":Z
    :goto_3
    move v0, v1

    .line 130
    .local v0, "side":I
    goto :goto_4

    .line 131
    .end local v0    # "side":I
    :cond_5
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    .line 133
    .restart local v0    # "side":I
    :goto_4
    const/4 v1, 0x0

    .line 134
    .local v1, "distance":I
    if-eq v0, v2, :cond_9

    if-eq v0, v3, :cond_8

    const/16 v2, 0x30

    if-eq v0, v2, :cond_7

    const/16 v2, 0x50

    if-eq v0, v2, :cond_6

    goto :goto_5

    .line 145
    :cond_6
    sub-int v2, p3, p7

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    goto :goto_5

    .line 139
    :cond_7
    sub-int v2, p9, p3

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    .line 140
    goto :goto_5

    .line 142
    :cond_8
    sub-int v2, p2, p6

    sub-int v3, p5, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    .line 143
    goto :goto_5

    .line 136
    :cond_9
    sub-int v2, p8, p2

    sub-int v3, p5, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    .line 137
    nop

    .line 148
    :goto_5
    return v1
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .locals 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 152
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const v1, 0x800003

    if-eq v0, v1, :cond_0

    const v1, 0x800005

    if-eq v0, v1, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .locals 25
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroid/transition/Transition;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    .line 75
    const-wide/16 v12, 0x0

    if-nez v11, :cond_0

    if-nez p4, :cond_0

    .line 76
    return-wide v12

    .line 78
    :cond_0
    const/4 v0, 0x1

    .line 79
    .local v0, "directionMultiplier":I
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v14

    .line 81
    .local v14, "epicenter":Landroid/graphics/Rect;
    if-eqz p4, :cond_2

    invoke-virtual {v10, v11}, Landroid/transition/SidePropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    move-object/from16 v1, p4

    goto :goto_1

    .line 82
    :cond_2
    :goto_0
    move-object v1, v11

    .line 83
    .local v1, "positionValues":Landroid/transition/TransitionValues;
    const/4 v0, -0x1

    .line 85
    .end local v0    # "directionMultiplier":I
    .local v9, "directionMultiplier":I
    :goto_1
    move v9, v0

    move-object v8, v1

    .line 88
    .end local v1    # "positionValues":Landroid/transition/TransitionValues;
    .local v8, "positionValues":Landroid/transition/TransitionValues;
    invoke-virtual {v10, v8}, Landroid/transition/SidePropagation;->getViewX(Landroid/transition/TransitionValues;)I

    move-result v15

    .line 89
    .local v15, "viewCenterX":I
    invoke-virtual {v10, v8}, Landroid/transition/SidePropagation;->getViewY(Landroid/transition/TransitionValues;)I

    move-result v16

    .line 91
    .local v16, "viewCenterY":I
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 92
    .local v7, "loc":[I
    move-object/from16 v6, p1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 93
    const/4 v1, 0x0

    aget v1, v7, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v17, v1, v2

    .line 94
    .local v17, "left":I
    const/4 v1, 0x1

    aget v1, v7, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v18, v1, v2

    .line 95
    .local v18, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    add-int v19, v17, v1

    .line 96
    .local v19, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int v20, v18, v1

    .line 100
    .local v20, "bottom":I
    if-eqz v14, :cond_3

    .line 101
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 102
    .local v0, "epicenterX":I
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 105
    .local v1, "epicenterY":I
    move/from16 v21, v0

    move v5, v1

    goto :goto_2

    .line 104
    .end local v0    # "epicenterX":I
    .end local v1    # "epicenterY":I
    :cond_3
    add-int v1, v17, v19

    div-int/2addr v1, v0

    .line 105
    .local v1, "epicenterX":I
    add-int v2, v18, v20

    div-int/2addr v2, v0

    move/from16 v21, v1

    move v5, v2

    .line 108
    .end local v1    # "epicenterX":I
    .local v5, "epicenterY":I
    .local v21, "epicenterX":I
    :goto_2
    move-object v0, v10

    move-object v1, v6

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v21

    move/from16 v6, v17

    move-object/from16 v22, v7

    move/from16 v7, v18

    .end local v7    # "loc":[I
    .local v22, "loc":[I
    move-object/from16 v23, v8

    move/from16 v8, v19

    .end local v8    # "positionValues":Landroid/transition/TransitionValues;
    .local v23, "positionValues":Landroid/transition/TransitionValues;
    move/from16 v24, v9

    move/from16 v9, v20

    .end local v9    # "directionMultiplier":I
    .local v24, "directionMultiplier":I
    invoke-direct/range {v0 .. v9}, Landroid/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v0

    int-to-float v0, v0

    .line 110
    .local v0, "distance":F
    invoke-direct/range {p0 .. p1}, Landroid/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v1

    int-to-float v1, v1

    .line 111
    .local v1, "maxDistance":F
    div-float v2, v0, v1

    .line 113
    .local v2, "distanceFraction":F
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v3

    .line 114
    .local v3, "duration":J
    cmp-long v6, v3, v12

    if-gez v6, :cond_4

    .line 115
    const-wide/16 v3, 0x12c

    .line 118
    :cond_4
    move/from16 v6, v24

    int-to-long v7, v6

    .end local v24    # "directionMultiplier":I
    .local v6, "directionMultiplier":I
    mul-long/2addr v7, v3

    long-to-float v7, v7

    iget v8, v10, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v7, v7

    return-wide v7
.end method

.method public setPropagationSpeed(F)V
    .locals 2
    .param p1, "propagationSpeed"    # F

    .line 66
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 69
    iput p1, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSide(I)V
    .locals 0
    .param p1, "side"    # I

    .line 50
    iput p1, p0, Landroid/transition/SidePropagation;->mSide:I

    .line 51
    return-void
.end method
