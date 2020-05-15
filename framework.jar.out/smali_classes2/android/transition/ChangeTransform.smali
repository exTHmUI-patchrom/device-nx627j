.class public Landroid/transition/ChangeTransform;
.super Landroid/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroid/transition/ChangeTransform$GhostListener;,
        Landroid/transition/ChangeTransform$Transforms;
    }
.end annotation


# static fields
.field private static final NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeTransform$PathAnimatorMatrix;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final PROPNAME_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final PROPNAME_TRANSFORMS:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final TAG:Ljava/lang/String; = "ChangeTransform"

.field private static final TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeTransform$PathAnimatorMatrix;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field private mUseOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    const-string v0, "android:changeTransform:matrix"

    const-string v1, "android:changeTransform:transforms"

    const-string v2, "android:changeTransform:parentMatrix"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/transition/ChangeTransform$1;

    const-class v1, [F

    const-string/jumbo v2, "nonTranslations"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 82
    new-instance v0, Landroid/transition/ChangeTransform$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "translations"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    .line 96
    iput-boolean v0, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    .line 97
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    .line 96
    iput-boolean v0, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    .line 97
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 103
    sget-object v1, Lcom/android/internal/R$styleable;->ChangeTransform:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 104
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    .line 106
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Landroid/transition/ChangeTransform;)Z
    .locals 1
    .param p0, "x0"    # Landroid/transition/ChangeTransform;

    .line 44
    iget-boolean v0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .line 44
    invoke-static {p0}, Landroid/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/View;FFFFFFFF)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # F
    .param p7, "x7"    # F
    .param p8, "x8"    # F

    .line 44
    invoke-static/range {p0 .. p8}, Landroid/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 8
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 187
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 188
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v1, Landroid/transition/ChangeTransform$Transforms;

    invoke-direct {v1, v0}, Landroid/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    .line 193
    .local v1, "transforms":Landroid/transition/ChangeTransform$Transforms;
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:transforms"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 195
    .local v2, "matrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v2, v3

    goto :goto_1

    .line 196
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 200
    :goto_1
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:matrix"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-boolean v3, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    if-eqz v3, :cond_3

    .line 202
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 203
    .local v3, "parentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 204
    .local v4, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 205
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 206
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeTransform:parentMatrix"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeTransform:intermediateMatrix"

    const v7, 0x102047e

    .line 208
    invoke-virtual {v0, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 207
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeTransform:intermediateParentMatrix"

    const v7, 0x102036a

    .line 210
    invoke-virtual {v0, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 209
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .end local v3    # "parentMatrix":Landroid/graphics/Matrix;
    .end local v4    # "parent":Landroid/view/ViewGroup;
    :cond_3
    return-void
.end method

.method private createGhostView(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 369
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 371
    .local v0, "view":Landroid/view/View;
    iget-object v1, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 372
    .local v1, "endMatrix":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 373
    .local v2, "localEndMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 375
    invoke-static {v0, p1, v2}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    move-result-object v3

    .line 377
    .local v3, "ghostView":Landroid/view/GhostView;
    move-object v4, p0

    .line 378
    .local v4, "outerTransition":Landroid/transition/Transition;
    :goto_0
    iget-object v5, v4, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    if-eqz v5, :cond_0

    .line 379
    iget-object v4, v4, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    goto :goto_0

    .line 381
    :cond_0
    new-instance v5, Landroid/transition/ChangeTransform$GhostListener;

    iget-object v6, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {v5, v0, v6, v3}, Landroid/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/GhostView;)V

    .line 382
    .local v5, "listener":Landroid/transition/ChangeTransform$GhostListener;
    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 384
    iget-object v6, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v7, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-eq v6, v7, :cond_1

    .line 385
    iget-object v6, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 387
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v6}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 388
    return-void
.end method

.method private createTransformAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .locals 21
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/transition/TransitionValues;
    .param p3, "handleParentChange"    # Z

    move-object/from16 v0, p2

    .line 267
    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    .line 268
    .local v2, "startMatrix":Landroid/graphics/Matrix;
    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:matrix"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    .line 270
    .local v3, "endMatrix":Landroid/graphics/Matrix;
    if-nez v2, :cond_0

    .line 271
    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 274
    :cond_0
    if-nez v3, :cond_1

    .line 275
    sget-object v3, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 278
    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 279
    return-object v5

    .line 282
    :cond_2
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeTransform:transforms"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/transition/ChangeTransform$Transforms;

    .line 285
    .local v11, "transforms":Landroid/transition/ChangeTransform$Transforms;
    iget-object v12, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 286
    .local v12, "view":Landroid/view/View;
    invoke-static {v12}, Landroid/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    .line 288
    const/16 v4, 0x9

    new-array v13, v4, [F

    .line 289
    .local v13, "startMatrixValues":[F
    invoke-virtual {v2, v13}, Landroid/graphics/Matrix;->getValues([F)V

    .line 290
    new-array v14, v4, [F

    .line 291
    .local v14, "endMatrixValues":[F
    invoke-virtual {v3, v14}, Landroid/graphics/Matrix;->getValues([F)V

    .line 292
    new-instance v6, Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {v6, v12, v13}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    move-object v15, v6

    .line 295
    .local v15, "pathAnimatorMatrix":Landroid/transition/ChangeTransform$PathAnimatorMatrix;
    sget-object v6, Landroid/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    new-instance v7, Landroid/animation/FloatArrayEvaluator;

    new-array v4, v4, [F

    invoke-direct {v7, v4}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    const/4 v4, 0x2

    new-array v8, v4, [[F

    const/4 v9, 0x0

    aput-object v13, v8, v9

    const/4 v10, 0x1

    aput-object v14, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 298
    .local v16, "valuesProperty":Landroid/animation/PropertyValuesHolder;
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeTransform;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v6

    aget v7, v13, v4

    const/4 v8, 0x5

    aget v10, v13, v8

    aget v9, v14, v4

    aget v8, v14, v8

    invoke-virtual {v6, v7, v10, v9, v8}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v10

    .line 301
    .local v10, "path":Landroid/graphics/Path;
    sget-object v6, Landroid/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    invoke-static {v6, v5, v10}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    .line 303
    .local v19, "translationProperty":Landroid/animation/PropertyValuesHolder;
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    invoke-static {v15, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 306
    .local v9, "animator":Landroid/animation/ObjectAnimator;
    move-object v7, v3

    .line 308
    .local v7, "finalEndMatrix":Landroid/graphics/Matrix;
    new-instance v17, Landroid/transition/ChangeTransform$3;

    move-object/from16 v4, v17

    move-object/from16 v5, p0

    move/from16 v6, p3

    move-object v8, v12

    move-object v0, v9

    move-object v9, v11

    .end local v9    # "animator":Landroid/animation/ObjectAnimator;
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v18, v10

    move-object v10, v15

    .end local v10    # "path":Landroid/graphics/Path;
    .local v18, "path":Landroid/graphics/Path;
    invoke-direct/range {v4 .. v10}, Landroid/transition/ChangeTransform$3;-><init>(Landroid/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/transition/ChangeTransform$Transforms;Landroid/transition/ChangeTransform$PathAnimatorMatrix;)V

    .line 349
    .local v4, "listener":Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 351
    return-object v0
.end method

.method private parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .locals 5
    .param p1, "startParent"    # Landroid/view/ViewGroup;
    .param p2, "endParent"    # Landroid/view/ViewGroup;

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "parentsMatch":Z
    invoke-virtual {p0, p1}, Landroid/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Landroid/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p0, p1, v3}, Landroid/transition/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v1

    .line 360
    .local v1, "endValues":Landroid/transition/TransitionValues;
    if-eqz v1, :cond_4

    .line 361
    iget-object v4, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_1

    move v2, v3

    nop

    :cond_1
    move v0, v2

    .end local v1    # "endValues":Landroid/transition/TransitionValues;
    goto :goto_1

    .line 357
    :cond_2
    :goto_0
    if-ne p1, p2, :cond_3

    move v2, v3

    nop

    :cond_3
    move v0, v2

    .line 364
    :cond_4
    :goto_1
    return v0
.end method

.method private static setIdentityTransforms(Landroid/view/View;)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .line 410
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Landroid/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    .line 411
    return-void
.end method

.method private setMatricesForParent(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V
    .locals 5
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/transition/TransitionValues;

    .line 391
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parentMatrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 392
    .local v0, "endParentMatrix":Landroid/graphics/Matrix;
    iget-object v1, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v2, 0x102036a

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 394
    iget-object v1, p0, Landroid/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 395
    .local v1, "toLocal":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 396
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 398
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    .line 399
    .local v2, "startLocal":Landroid/graphics/Matrix;
    if-nez v2, :cond_0

    .line 400
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    move-object v2, v3

    .line 401
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:matrix"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_0
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:parentMatrix"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    .line 405
    .local v3, "startParentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 406
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 407
    return-void
.end method

.method private static setTransforms(Landroid/view/View;FFFFFFFF)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "translationZ"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "rotationX"    # F
    .param p7, "rotationY"    # F
    .param p8, "rotationZ"    # F

    .line 416
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 417
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 418
    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationZ(F)V

    .line 419
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    .line 420
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    .line 421
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    .line 422
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    .line 423
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    .line 424
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 222
    invoke-direct {p0, p1}, Landroid/transition/ChangeTransform;->captureValues(Landroid/transition/TransitionValues;)V

    .line 223
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 217
    invoke-direct {p0, p1}, Landroid/transition/ChangeTransform;->captureValues(Landroid/transition/TransitionValues;)V

    .line 218
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 228
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    .line 229
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    .line 230
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 235
    .local v0, "startParent":Landroid/view/ViewGroup;
    iget-object v1, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 236
    .local v1, "endParent":Landroid/view/ViewGroup;
    iget-boolean v2, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Landroid/transition/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 238
    .local v2, "handleParentChange":Z
    :goto_0
    iget-object v3, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:intermediateMatrix"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    .line 239
    .local v3, "startMatrix":Landroid/graphics/Matrix;
    if-eqz v3, :cond_2

    .line 240
    iget-object v4, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:matrix"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_2
    iget-object v4, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeTransform:intermediateParentMatrix"

    .line 244
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Matrix;

    .line 245
    .local v4, "startParentMatrix":Landroid/graphics/Matrix;
    if-eqz v4, :cond_3

    .line 246
    iget-object v5, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeTransform:parentMatrix"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_3
    if-eqz v2, :cond_4

    .line 251
    invoke-direct {p0, p2, p3}, Landroid/transition/ChangeTransform;->setMatricesForParent(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 255
    :cond_4
    invoke-direct {p0, p2, p3, v2}, Landroid/transition/ChangeTransform;->createTransformAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 258
    .local v5, "transformAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    iget-boolean v6, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v6, :cond_5

    .line 259
    invoke-direct {p0, p1, p2, p3}, Landroid/transition/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 262
    :cond_5
    return-object v5

    .line 231
    .end local v0    # "startParent":Landroid/view/ViewGroup;
    .end local v1    # "endParent":Landroid/view/ViewGroup;
    .end local v2    # "handleParentChange":Z
    .end local v3    # "startMatrix":Landroid/graphics/Matrix;
    .end local v4    # "startParentMatrix":Landroid/graphics/Matrix;
    .end local v5    # "transformAnimator":Landroid/animation/ObjectAnimator;
    :cond_6
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReparent()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    return v0
.end method

.method public getReparentWithOverlay()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 183
    sget-object v0, Landroid/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0
    .param p1, "reparent"    # Z

    .line 178
    iput-boolean p1, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    .line 179
    return-void
.end method

.method public setReparentWithOverlay(Z)V
    .locals 0
    .param p1, "reparentWithOverlay"    # Z

    .line 151
    iput-boolean p1, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    .line 152
    return-void
.end method
