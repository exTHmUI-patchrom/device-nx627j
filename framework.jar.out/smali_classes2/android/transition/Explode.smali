.class public Landroid/transition/Explode;
.super Landroid/transition/Visibility;
.source "Explode.java"


# static fields
.field private static final PROPNAME_SCREEN_BOUNDS:Ljava/lang/String; = "android:explode:screenBounds"

.field private static final TAG:Ljava/lang/String; = "Explode"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mTempLoc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 42
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    .line 49
    new-instance v0, Landroid/transition/CircularPropagation;

    invoke-direct {v0}, Landroid/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/transition/Explode;->setPropagation(Landroid/transition/TransitionPropagation;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    .line 54
    new-instance v0, Landroid/transition/CircularPropagation;

    invoke-direct {v0}, Landroid/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/transition/Explode;->setPropagation(Landroid/transition/TransitionPropagation;)V

    .line 55
    return-void
.end method

.method private static calculateMaxDistance(Landroid/view/View;II)D
    .locals 6
    .param p0, "sceneRoot"    # Landroid/view/View;
    .param p1, "focalX"    # I
    .param p2, "focalY"    # I

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 166
    .local v0, "maxX":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 167
    .local v1, "maxY":I
    int-to-double v2, v0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method private calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V
    .locals 22
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "outVector"    # [I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 126
    iget-object v2, v0, Landroid/transition/Explode;->mTempLoc:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 127
    iget-object v2, v0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 128
    .local v2, "sceneRootX":I
    iget-object v4, v0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 132
    .local v4, "sceneRootY":I
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Explode;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v6

    .line 133
    .local v6, "epicenter":Landroid/graphics/Rect;
    if-nez v6, :cond_0

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    .line 136
    .local v7, "focalX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v4

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    .local v8, "focalY":I
    goto :goto_0

    .line 139
    .end local v7    # "focalX":I
    .end local v8    # "focalY":I
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    .line 140
    .restart local v7    # "focalX":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 143
    .restart local v8    # "focalY":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    .line 144
    .local v9, "centerX":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    .line 145
    .local v10, "centerY":I
    sub-int v11, v9, v7

    int-to-double v11, v11

    .line 146
    .local v11, "xVector":D
    sub-int v13, v10, v8

    int-to-double v13, v13

    .line 148
    .local v13, "yVector":D
    const-wide/16 v15, 0x0

    cmpl-double v17, v11, v15

    if-nez v17, :cond_1

    cmpl-double v15, v13, v15

    if-nez v15, :cond_1

    .line 150
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v15, v15, v17

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    sub-double v11, v15, v19

    .line 151
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    mul-double v15, v15, v17

    sub-double v13, v15, v19

    .line 153
    :cond_1
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v15

    .line 154
    .local v15, "vectorSize":D
    div-double/2addr v11, v15

    .line 155
    div-double/2addr v13, v15

    .line 157
    sub-int v5, v7, v2

    sub-int v3, v8, v4

    .line 158
    invoke-static {v1, v5, v3}, Landroid/transition/Explode;->calculateMaxDistance(Landroid/view/View;II)D

    move-result-wide v17

    .line 160
    .local v17, "maxDistance":D
    mul-double v0, v17, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    aput v0, p3, v1

    .line 161
    mul-double v0, v17, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x1

    aput v0, p3, v1

    .line 162
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 8
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 58
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 59
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Landroid/transition/Explode;->mTempLoc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 60
    iget-object v1, p0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 61
    .local v1, "left":I
    iget-object v2, p0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 62
    .local v2, "top":I
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 63
    .local v3, "right":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 64
    .local v4, "bottom":I
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:explode:screenBounds"

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 75
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 76
    invoke-direct {p0, p1}, Landroid/transition/Explode;->captureValues(Landroid/transition/TransitionValues;)V

    .line 77
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 69
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 70
    invoke-direct {p0, p1}, Landroid/transition/Explode;->captureValues(Landroid/transition/TransitionValues;)V

    .line 71
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 18
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    move-object/from16 v10, p0

    .line 82
    move-object/from16 v11, p4

    if-nez v11, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    iget-object v0, v11, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:explode:screenBounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/graphics/Rect;

    .line 86
    .local v12, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v13

    .line 87
    .local v13, "endX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v14

    .line 88
    .local v14, "endY":F
    iget-object v0, v10, Landroid/transition/Explode;->mTempLoc:[I

    move-object/from16 v15, p1

    invoke-direct {v10, v15, v12, v0}, Landroid/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 89
    iget-object v0, v10, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float v16, v13, v0

    .line 90
    .local v16, "startX":F
    iget-object v0, v10, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float v17, v14, v0

    .line 92
    .local v17, "startY":F
    iget v2, v12, Landroid/graphics/Rect;->left:I

    iget v3, v12, Landroid/graphics/Rect;->top:I

    sget-object v8, Landroid/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, p2

    move-object v1, v11

    move/from16 v4, v16

    move/from16 v5, v17

    move v6, v13

    move v7, v14

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 20
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    .line 99
    if-nez v11, :cond_0

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    iget-object v0, v11, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:explode:screenBounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/graphics/Rect;

    .line 103
    .local v12, "bounds":Landroid/graphics/Rect;
    iget v13, v12, Landroid/graphics/Rect;->left:I

    .line 104
    .local v13, "viewPosX":I
    iget v14, v12, Landroid/graphics/Rect;->top:I

    .line 105
    .local v14, "viewPosY":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v15

    .line 106
    .local v15, "startX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v16

    .line 107
    .local v16, "startY":F
    move v0, v15

    .line 108
    .local v0, "endX":F
    move/from16 v1, v16

    .line 109
    .local v1, "endY":F
    iget-object v2, v11, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v3, 0x102047d

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, [I

    .line 110
    .local v17, "interruptedPosition":[I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v17, :cond_1

    .line 113
    aget v4, v17, v3

    iget v5, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 114
    aget v4, v17, v2

    iget v5, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 115
    aget v4, v17, v3

    aget v5, v17, v2

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 117
    :cond_1
    iget-object v4, v10, Landroid/transition/Explode;->mTempLoc:[I

    move-object/from16 v9, p1

    invoke-direct {v10, v9, v12, v4}, Landroid/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 118
    iget-object v4, v10, Landroid/transition/Explode;->mTempLoc:[I

    aget v3, v4, v3

    int-to-float v3, v3

    add-float v18, v0, v3

    .line 119
    .end local v0    # "endX":F
    .local v18, "endX":F
    iget-object v0, v10, Landroid/transition/Explode;->mTempLoc:[I

    aget v0, v0, v2

    int-to-float v0, v0

    add-float v19, v1, v0

    .line 121
    .end local v1    # "endY":F
    .local v19, "endY":F
    sget-object v8, Landroid/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, p2

    move-object v1, v11

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v18

    move/from16 v7, v19

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
