.class public Landroid/transition/ChangeImageTransform;
.super Landroid/transition/Transition;
.source "ChangeImageTransform.java"


# static fields
.field private static ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeImageTransform:bounds"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeImageTransform:matrix"

.field private static final TAG:Ljava/lang/String; = "ChangeImageTransform"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    const-string v0, "android:changeImageTransform:matrix"

    const-string v1, "android:changeImageTransform:bounds"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/transition/ChangeImageTransform$1;

    invoke-direct {v0}, Landroid/transition/ChangeImageTransform$1;-><init>()V

    sput-object v0, Landroid/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 60
    new-instance v0, Landroid/transition/ChangeImageTransform$2;

    const-class v1, Landroid/graphics/Matrix;

    const-string v2, "animatedTransform"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeImageTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 17
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 80
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 81
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 84
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    .line 85
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 86
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_1

    .line 87
    return-void

    .line 89
    :cond_1
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 91
    .local v4, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 92
    .local v5, "left":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 93
    .local v6, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 94
    .local v7, "right":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 96
    .local v8, "bottom":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 97
    .local v9, "bounds":Landroid/graphics/Rect;
    const-string v10, "android:changeImageTransform:bounds"

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v10

    .line 100
    .local v10, "scaleType":Landroid/widget/ImageView$ScaleType;
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_4

    .line 101
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    .line 102
    .local v11, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v11}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v12

    if-nez v12, :cond_2

    .line 103
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12, v11}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v11, v12

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 106
    .local v12, "drawableWidth":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 107
    .local v13, "drawableHeight":I
    if-lez v12, :cond_3

    if-lez v13, :cond_3

    .line 108
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v12

    div-float/2addr v14, v15

    .line 109
    .local v14, "scaleX":F
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    int-to-float v0, v13

    div-float/2addr v15, v0

    .line 110
    .local v15, "scaleY":F
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 111
    .end local v11    # "matrix":Landroid/graphics/Matrix;
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 112
    .end local v14    # "scaleX":F
    .end local v15    # "scaleY":F
    goto :goto_0

    .line 113
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .restart local v11    # "matrix":Landroid/graphics/Matrix;
    :cond_3
    const/4 v0, 0x0

    .line 115
    .end local v12    # "drawableWidth":I
    .end local v13    # "drawableHeight":I
    :goto_0
    move-object v11, v0

    goto :goto_1

    .line 117
    .end local v11    # "matrix":Landroid/graphics/Matrix;
    :cond_4
    new-instance v11, Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .restart local v11    # "matrix":Landroid/graphics/Matrix;
    :goto_1
    move-object v0, v11

    .line 119
    .end local v11    # "matrix":Landroid/graphics/Matrix;
    .restart local v0    # "matrix":Landroid/graphics/Matrix;
    const-string v11, "android:changeImageTransform:matrix"

    invoke-interface {v4, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void

    .line 82
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v9    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "scaleType":Landroid/widget/ImageView$ScaleType;
    :cond_5
    :goto_2
    return-void
.end method

.method private createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "startMatrix"    # Landroid/graphics/Matrix;
    .param p3, "endMatrix"    # Landroid/graphics/Matrix;

    .line 197
    sget-object v0, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    new-instance v1, Landroid/transition/TransitionUtils$MatrixEvaluator;

    invoke-direct {v1}, Landroid/transition/TransitionUtils$MatrixEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 191
    sget-object v0, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    sget-object v1, Landroid/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 129
    invoke-direct {p0, p1}, Landroid/transition/ChangeImageTransform;->captureValues(Landroid/transition/TransitionValues;)V

    .line 130
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 124
    invoke-direct {p0, p1}, Landroid/transition/ChangeImageTransform;->captureValues(Landroid/transition/TransitionValues;)V

    .line 125
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 150
    const/4 v0, 0x0

    if-eqz p2, :cond_b

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 153
    :cond_0
    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeImageTransform:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 154
    .local v1, "startBounds":Landroid/graphics/Rect;
    iget-object v2, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeImageTransform:bounds"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 155
    .local v2, "endBounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_a

    if-nez v2, :cond_1

    goto :goto_3

    .line 159
    :cond_1
    iget-object v3, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeImageTransform:matrix"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    .line 160
    .local v3, "startMatrix":Landroid/graphics/Matrix;
    iget-object v4, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeImageTransform:matrix"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Matrix;

    .line 162
    .local v4, "endMatrix":Landroid/graphics/Matrix;
    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    .line 163
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    .line 165
    .local v5, "matricesEqual":Z
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    .line 166
    return-object v0

    .line 169
    :cond_5
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 170
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 171
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 172
    .local v7, "drawableWidth":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 175
    .local v8, "drawableHeight":I
    if-eqz v7, :cond_9

    if-nez v8, :cond_6

    goto :goto_1

    .line 178
    :cond_6
    if-nez v3, :cond_7

    .line 179
    sget-object v3, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 181
    :cond_7
    if-nez v4, :cond_8

    .line 182
    sget-object v4, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 184
    :cond_8
    sget-object v9, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    invoke-virtual {v9, v0, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    invoke-direct {p0, v0, v3, v4}, Landroid/transition/ChangeImageTransform;->createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    goto :goto_2

    .line 176
    :cond_9
    :goto_1
    invoke-direct {p0, v0}, Landroid/transition/ChangeImageTransform;->createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 185
    .local v9, "animator":Landroid/animation/ObjectAnimator;
    :goto_2
    nop

    .line 187
    return-object v9

    .line 156
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "startMatrix":Landroid/graphics/Matrix;
    .end local v4    # "endMatrix":Landroid/graphics/Matrix;
    .end local v5    # "matricesEqual":Z
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "drawableWidth":I
    .end local v8    # "drawableHeight":I
    .end local v9    # "animator":Landroid/animation/ObjectAnimator;
    :cond_a
    :goto_3
    return-object v0

    .line 151
    .end local v1    # "startBounds":Landroid/graphics/Rect;
    .end local v2    # "endBounds":Landroid/graphics/Rect;
    :cond_b
    :goto_4
    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 134
    sget-object v0, Landroid/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
