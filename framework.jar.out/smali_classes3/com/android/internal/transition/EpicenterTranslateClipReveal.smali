.class public Lcom/android/internal/transition/EpicenterTranslateClipReveal;
.super Landroid/transition/Visibility;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;,
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;,
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    }
.end annotation


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:epicenterReveal:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:epicenterReveal:clip"

.field private static final PROPNAME_TRANSLATE_X:Ljava/lang/String; = "android:epicenterReveal:translateX"

.field private static final PROPNAME_TRANSLATE_Y:Ljava/lang/String; = "android:epicenterReveal:translateY"

.field private static final PROPNAME_TRANSLATE_Z:Ljava/lang/String; = "android:epicenterReveal:translateZ"

.field private static final PROPNAME_Z:Ljava/lang/String; = "android:epicenterReveal:z"


# instance fields
.field private final mInterpolatorX:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorY:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorZ:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 56
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 57
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    sget-object v0, Lcom/android/internal/R$styleable;->EpicenterTranslateClipReveal:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 68
    .local v2, "interpolatorX":I
    if-eqz v2, :cond_0

    .line 69
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 71
    :cond_0
    sget-object v3, Lcom/android/internal/transition/TransitionConstants;->LINEAR_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v3, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 74
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 76
    .local v3, "interpolatorY":I
    if-eqz v3, :cond_1

    .line 77
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    goto :goto_1

    .line 79
    :cond_1
    sget-object v4, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 82
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 84
    .local v1, "interpolatorZ":I
    if-eqz v1, :cond_2

    .line 85
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    goto :goto_2

    .line 87
    :cond_2
    sget-object v4, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    .line 90
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 5
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 106
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 107
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 108
    return-void

    .line 111
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 112
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:bounds"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateX"

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateY"

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateZ"

    invoke-virtual {v0}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:z"

    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 119
    .local v2, "clip":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:clip"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method private static createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 15
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startX"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .param p2, "startY"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .param p3, "startZ"    # F
    .param p4, "endX"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .param p5, "endY"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .param p6, "endZ"    # F
    .param p7, "endValues"    # Landroid/transition/TransitionValues;
    .param p8, "interpolatorX"    # Landroid/animation/TimeInterpolator;
    .param p9, "interpolatorY"    # Landroid/animation/TimeInterpolator;
    .param p10, "interpolatorZ"    # Landroid/animation/TimeInterpolator;

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    .line 214
    move-object/from16 v3, p10

    new-instance v4, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;-><init>(Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;)V

    .line 216
    .local v4, "evaluator":Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;
    sget-object v5, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput p3, v7, v8

    const/4 v9, 0x1

    aput p6, v7, v9

    invoke-static {v0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 217
    .local v5, "animZ":Landroid/animation/ObjectAnimator;
    if-eqz v3, :cond_0

    .line 218
    invoke-virtual {v5, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    :cond_0
    new-instance v7, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;

    const/16 v10, 0x78

    invoke-direct {v7, v10}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    .line 222
    .local v7, "propX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;
    new-array v10, v6, [Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    aput-object p1, v10, v8

    aput-object p4, v10, v9

    invoke-static {v0, v7, v4, v10}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 223
    .local v10, "animX":Landroid/animation/ObjectAnimator;
    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {v10, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 227
    :cond_1
    new-instance v11, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;

    const/16 v9, 0x79

    invoke-direct {v11, v9}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    move-object v9, v11

    .line 228
    .local v9, "propY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;
    new-array v11, v6, [Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    aput-object p2, v11, v8

    const/4 v12, 0x1

    aput-object p5, v11, v12

    invoke-static {v0, v9, v4, v11}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 229
    .local v11, "animY":Landroid/animation/ObjectAnimator;
    if-eqz v2, :cond_2

    .line 230
    invoke-virtual {v11, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    :cond_2
    move-object/from16 v6, p7

    iget-object v8, v6, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:epicenterReveal:clip"

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 234
    .local v1, "terminalClip":Landroid/graphics/Rect;
    new-instance v8, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;

    invoke-direct {v8, v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 241
    .local v8, "animatorListener":Landroid/animation/AnimatorListenerAdapter;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 242
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    move-object v14, v1

    const/4 v1, 0x3

    .end local v1    # "terminalClip":Landroid/graphics/Rect;
    .local v14, "terminalClip":Landroid/graphics/Rect;
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v10, v1, v13

    const/4 v12, 0x1

    aput-object v11, v1, v12

    const/4 v12, 0x2

    aput-object v5, v1, v12

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 243
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 244
    return-object v0
.end method

.method private getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 203
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:epicenterReveal:clip"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 204
    .local v0, "clipRect":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 205
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    return-object v1

    .line 207
    :cond_0
    return-object v0
.end method

.method private getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "bestRect"    # Landroid/graphics/Rect;

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v0

    .line 193
    .local v0, "epicenter":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 194
    return-object v0

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 198
    .local v1, "centerX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 199
    .local v2, "centerY":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 101
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    .line 103
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 95
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    .line 97
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 25
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    move-object/from16 v0, p0

    move-object/from16 v12, p2

    .line 125
    move-object/from16 v13, p4

    if-nez v13, :cond_0

    .line 126
    const/4 v1, 0x0

    return-object v1

    .line 129
    :cond_0
    iget-object v1, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/graphics/Rect;

    .line 130
    .local v14, "endBounds":Landroid/graphics/Rect;
    invoke-direct {v0, v14}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v15

    .line 131
    .local v15, "startBounds":Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v11, v1

    .line 132
    .local v11, "startX":F
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v10, v1

    .line 133
    .local v10, "startY":F
    const/4 v1, 0x0

    iget-object v2, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:z"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v9, v1, v2

    .line 136
    .local v9, "startZ":F
    invoke-virtual {v12, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 137
    invoke-virtual {v12, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 138
    invoke-virtual {v12, v9}, Landroid/view/View;->setTranslationZ(F)V

    .line 140
    iget-object v1, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:translateX"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 141
    .local v8, "endX":F
    iget-object v1, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:translateY"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 142
    .local v7, "endY":F
    iget-object v1, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:translateZ"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v16

    .line 144
    .local v16, "endZ":F
    invoke-direct {v0, v13}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v4

    .line 145
    .local v4, "endClip":Landroid/graphics/Rect;
    invoke-direct {v0, v4}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 148
    .local v1, "startClip":Landroid/graphics/Rect;
    invoke-virtual {v12, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 150
    new-instance v2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {v2, v3, v5, v11}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 151
    .local v2, "startStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v5, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    invoke-direct {v5, v3, v6, v8}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 152
    .local v5, "endStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    move/from16 v17, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    .end local v8    # "endX":F
    .local v17, "endX":F
    invoke-direct {v3, v6, v8, v10}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 153
    .local v3, "startStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v6, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v18, v1

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    .end local v1    # "startClip":Landroid/graphics/Rect;
    .local v18, "startClip":Landroid/graphics/Rect;
    invoke-direct {v6, v8, v1, v7}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 155
    .local v6, "endStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    iget-object v8, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    iget-object v1, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    move/from16 v19, v11

    iget-object v11, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    .end local v11    # "startX":F
    .local v19, "startX":F
    move-object/from16 v20, v1

    move-object v1, v12

    move-object/from16 v21, v4

    move v4, v9

    .end local v4    # "endClip":Landroid/graphics/Rect;
    .local v21, "endClip":Landroid/graphics/Rect;
    move/from16 v22, v7

    move/from16 v7, v16

    .end local v7    # "endY":F
    .local v22, "endY":F
    move-object/from16 v23, v8

    move-object v8, v13

    move/from16 v24, v9

    move-object/from16 v9, v23

    .end local v9    # "startZ":F
    .local v24, "startZ":F
    move/from16 v23, v10

    move-object/from16 v10, v20

    .end local v10    # "startY":F
    .local v23, "startY":F
    invoke-static/range {v1 .. v11}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 24
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 162
    move-object/from16 v13, p4

    if-nez v1, :cond_0

    .line 163
    const/4 v2, 0x0

    return-object v2

    .line 166
    :cond_0
    iget-object v2, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:bounds"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/graphics/Rect;

    .line 167
    .local v14, "startBounds":Landroid/graphics/Rect;
    invoke-direct {v0, v14}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v15

    .line 168
    .local v15, "endBounds":Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v12, v2

    .line 169
    .local v12, "endX":F
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v11, v2

    .line 170
    .local v11, "endY":F
    const/4 v2, 0x0

    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:z"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v16, v2, v3

    .line 172
    .local v16, "endZ":F
    iget-object v2, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateX"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 173
    .local v10, "startX":F
    iget-object v2, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateY"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 174
    .local v9, "startY":F
    iget-object v2, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateZ"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v17

    .line 176
    .local v17, "startZ":F
    invoke-direct {v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v8

    .line 177
    .local v8, "startClip":Landroid/graphics/Rect;
    invoke-direct {v0, v8}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 180
    .local v5, "endClip":Landroid/graphics/Rect;
    move-object/from16 v2, p2

    invoke-virtual {v2, v8}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 182
    new-instance v3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v4, v8, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->right:I

    invoke-direct {v3, v4, v6, v10}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 183
    .local v3, "startStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v6, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v4, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {v6, v4, v7, v12}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 184
    .local v6, "endStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v4, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v7, v8, Landroid/graphics/Rect;->top:I

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v7, v1, v9}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 185
    .local v4, "startStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v7, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v7, v1, v2, v11}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 187
    .local v7, "endStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    iget-object v1, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    iget-object v2, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    move/from16 v19, v12

    iget-object v12, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    .end local v12    # "endX":F
    .local v19, "endX":F
    move-object/from16 v18, v2

    move-object/from16 v2, p2

    move-object/from16 v20, v5

    move/from16 v5, v17

    .end local v5    # "endClip":Landroid/graphics/Rect;
    .local v20, "endClip":Landroid/graphics/Rect;
    move-object/from16 v21, v8

    move/from16 v8, v16

    .end local v8    # "startClip":Landroid/graphics/Rect;
    .local v21, "startClip":Landroid/graphics/Rect;
    move/from16 v22, v9

    move-object v9, v13

    .end local v9    # "startY":F
    .local v22, "startY":F
    move/from16 v23, v10

    move-object v10, v1

    .end local v10    # "startX":F
    .local v23, "startX":F
    move v1, v11

    move-object/from16 v11, v18

    .end local v11    # "endY":F
    .local v1, "endY":F
    move/from16 v18, v19

    .end local v19    # "endX":F
    .local v18, "endX":F
    invoke-static/range {v2 .. v12}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v2

    return-object v2
.end method
