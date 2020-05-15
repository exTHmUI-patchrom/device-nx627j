.class public Landroid/transition/ChangeBounds;
.super Landroid/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field mReparent:Z

.field mResizeClip:Z

.field tempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    const-string v0, "android:changeBounds:bounds"

    const-string v1, "android:changeBounds:clip"

    const-string v2, "android:changeBounds:parent"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 85
    new-instance v0, Landroid/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 98
    new-instance v0, Landroid/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 111
    new-instance v0, Landroid/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 128
    new-instance v0, Landroid/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 145
    new-instance v0, Landroid/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "position"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 167
    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 169
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 164
    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 172
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 164
    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 174
    sget-object v1, Lcom/android/internal/R$styleable;->ChangeBounds:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 175
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 176
    .local v0, "resizeClip":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    invoke-virtual {p0, v0}, Landroid/transition/ChangeBounds;->setResizeClip(Z)V

    .line 178
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 8
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 233
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 235
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    :cond_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 236
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:parent"

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 241
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowX"

    iget-object v3, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowY"

    iget-object v3, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_1
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:clip"

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_2
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .param p1, "startParent"    # Landroid/view/View;
    .param p2, "endParent"    # Landroid/view/View;

    .line 261
    const/4 v0, 0x1

    .line 262
    .local v0, "parentMatches":Z
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_3

    .line 263
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 264
    .local v2, "endValues":Landroid/transition/TransitionValues;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 265
    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v0, v1

    goto :goto_2

    .line 267
    :cond_1
    iget-object v4, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    move v0, v1

    .line 270
    .end local v2    # "endValues":Landroid/transition/TransitionValues;
    :cond_3
    :goto_2
    return v0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 257
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 258
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 252
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 253
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 54
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 276
    move-object/from16 v10, p3

    if-eqz v9, :cond_1b

    if-nez v10, :cond_0

    goto/16 :goto_d

    .line 279
    :cond_0
    iget-object v11, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 280
    .local v11, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v12, v10, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 281
    .local v12, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "android:changeBounds:parent"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/view/ViewGroup;

    .line 282
    .local v13, "startParent":Landroid/view/ViewGroup;
    const-string v1, "android:changeBounds:parent"

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/view/ViewGroup;

    .line 283
    .local v14, "endParent":Landroid/view/ViewGroup;
    if-eqz v13, :cond_1a

    if-nez v14, :cond_1

    .line 284
    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object v12, v8

    move-object v11, v10

    goto/16 :goto_c

    .line 286
    :cond_1
    iget-object v15, v10, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 287
    .local v15, "view":Landroid/view/View;
    invoke-direct {v8, v13, v14}, Landroid/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 288
    iget-object v1, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/graphics/Rect;

    .line 289
    .local v7, "startBounds":Landroid/graphics/Rect;
    iget-object v1, v10, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/graphics/Rect;

    .line 290
    .local v6, "endBounds":Landroid/graphics/Rect;
    iget v5, v7, Landroid/graphics/Rect;->left:I

    .line 291
    .local v5, "startLeft":I
    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 292
    .local v1, "endLeft":I
    iget v3, v7, Landroid/graphics/Rect;->top:I

    .line 293
    .local v3, "startTop":I
    iget v2, v6, Landroid/graphics/Rect;->top:I

    .line 294
    .local v2, "endTop":I
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 295
    .local v0, "startRight":I
    iget v4, v6, Landroid/graphics/Rect;->right:I

    .line 296
    .local v4, "endRight":I
    move-object/from16 v19, v11

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    .line 297
    .local v11, "startBottom":I
    .local v19, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v20, v12

    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    .line 298
    .local v12, "endBottom":I
    .local v20, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v21, v13

    sub-int v13, v0, v5

    .line 299
    .local v13, "startWidth":I
    .local v21, "startParent":Landroid/view/ViewGroup;
    move-object/from16 v22, v14

    sub-int v14, v11, v3

    .line 300
    .local v14, "startHeight":I
    .local v22, "endParent":Landroid/view/ViewGroup;
    move-object/from16 v23, v7

    sub-int v7, v4, v1

    .line 301
    .local v7, "endWidth":I
    .local v23, "startBounds":Landroid/graphics/Rect;
    move-object/from16 v24, v6

    sub-int v6, v12, v2

    .line 302
    .local v6, "endHeight":I
    .local v24, "endBounds":Landroid/graphics/Rect;
    iget-object v8, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:changeBounds:clip"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 303
    .local v8, "startClip":Landroid/graphics/Rect;
    iget-object v9, v10, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v10, "android:changeBounds:clip"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 304
    .local v9, "endClip":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 305
    .local v10, "numChanges":I
    if-eqz v13, :cond_2

    if-nez v14, :cond_3

    :cond_2
    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    .line 306
    :cond_3
    if-ne v5, v1, :cond_4

    if-eq v3, v2, :cond_5

    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 307
    :cond_5
    if-ne v0, v4, :cond_6

    if-eq v11, v12, :cond_7

    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 309
    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    :cond_8
    if-nez v8, :cond_a

    if-eqz v9, :cond_a

    .line 311
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 313
    :cond_a
    if-lez v10, :cond_16

    .line 314
    move-object/from16 v28, v8

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .end local v8    # "startClip":Landroid/graphics/Rect;
    .local v28, "startClip":Landroid/graphics/Rect;
    instance-of v8, v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_b

    .line 315
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 316
    .local v8, "parent":Landroid/view/ViewGroup;
    move-object/from16 v29, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 317
    .end local v9    # "endClip":Landroid/graphics/Rect;
    .local v29, "endClip":Landroid/graphics/Rect;
    new-instance v9, Landroid/transition/ChangeBounds$7;

    move/from16 v30, v12

    move-object/from16 v12, p0

    invoke-direct {v9, v12, v8}, Landroid/transition/ChangeBounds$7;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 344
    .end local v12    # "endBottom":I
    .local v9, "transitionListener":Landroid/transition/Transition$TransitionListener;
    .local v30, "endBottom":I
    invoke-virtual {v12, v9}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .end local v8    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "transitionListener":Landroid/transition/Transition$TransitionListener;
    goto :goto_0

    .line 347
    .end local v29    # "endClip":Landroid/graphics/Rect;
    .end local v30    # "endBottom":I
    .local v9, "endClip":Landroid/graphics/Rect;
    .restart local v12    # "endBottom":I
    :cond_b
    move-object/from16 v29, v9

    move/from16 v30, v12

    move-object/from16 v12, p0

    .end local v9    # "endClip":Landroid/graphics/Rect;
    .end local v12    # "endBottom":I
    .restart local v29    # "endClip":Landroid/graphics/Rect;
    .restart local v30    # "endBottom":I
    :goto_0
    iget-boolean v8, v12, Landroid/transition/ChangeBounds;->mResizeClip:Z

    const/4 v9, 0x2

    if-nez v8, :cond_10

    .line 348
    invoke-virtual {v15, v5, v3, v0, v11}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 349
    if-ne v10, v9, :cond_d

    .line 350
    if-ne v13, v7, :cond_c

    if-ne v14, v6, :cond_c

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v8

    int-to-float v9, v5

    move/from16 v31, v10

    int-to-float v10, v3

    .end local v10    # "numChanges":I
    .local v31, "numChanges":I
    move/from16 v32, v6

    int-to-float v6, v1

    .end local v6    # "endHeight":I
    .local v32, "endHeight":I
    move/from16 v33, v14

    int-to-float v14, v2

    .end local v14    # "startHeight":I
    .local v33, "startHeight":I
    invoke-virtual {v8, v9, v10, v6, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v6

    .line 353
    .local v6, "topLeftPath":Landroid/graphics/Path;
    sget-object v8, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    const/4 v9, 0x0

    invoke-static {v15, v8, v9, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 355
    .local v6, "anim":Landroid/animation/Animator;
    nop

    .line 430
    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v25, v2

    move/from16 v17, v3

    move/from16 v27, v4

    move/from16 v49, v11

    move/from16 v47, v13

    move-object v8, v15

    move/from16 v13, v30

    move/from16 v14, v33

    move/from16 v30, v5

    move/from16 v33, v7

    goto/16 :goto_9

    .line 356
    .end local v31    # "numChanges":I
    .end local v32    # "endHeight":I
    .end local v33    # "startHeight":I
    .local v6, "endHeight":I
    .restart local v10    # "numChanges":I
    .restart local v14    # "startHeight":I
    :cond_c
    move/from16 v32, v6

    move/from16 v31, v10

    move/from16 v33, v14

    .end local v6    # "endHeight":I
    .end local v10    # "numChanges":I
    .end local v14    # "startHeight":I
    .restart local v31    # "numChanges":I
    .restart local v32    # "endHeight":I
    .restart local v33    # "startHeight":I
    new-instance v6, Landroid/transition/ChangeBounds$ViewBounds;

    invoke-direct {v6, v15}, Landroid/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 357
    .local v6, "viewBounds":Landroid/transition/ChangeBounds$ViewBounds;
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v8

    int-to-float v10, v5

    int-to-float v14, v3

    int-to-float v9, v1

    move/from16 v34, v7

    int-to-float v7, v2

    .end local v7    # "endWidth":I
    .local v34, "endWidth":I
    invoke-virtual {v8, v10, v14, v9, v7}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v7

    .line 359
    .local v7, "topLeftPath":Landroid/graphics/Path;
    sget-object v8, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 360
    const/4 v9, 0x0

    invoke-static {v6, v8, v9, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 362
    .local v8, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v10

    int-to-float v14, v0

    int-to-float v9, v11

    move-object/from16 v35, v7

    int-to-float v7, v4

    .end local v7    # "topLeftPath":Landroid/graphics/Path;
    .local v35, "topLeftPath":Landroid/graphics/Path;
    move/from16 v36, v13

    move-object/from16 v37, v15

    move/from16 v13, v30

    int-to-float v15, v13

    .end local v15    # "view":Landroid/view/View;
    .end local v30    # "endBottom":I
    .local v13, "endBottom":I
    .local v36, "startWidth":I
    .local v37, "view":Landroid/view/View;
    invoke-virtual {v10, v14, v9, v7, v15}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v7

    .line 364
    .local v7, "bottomRightPath":Landroid/graphics/Path;
    sget-object v9, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    const/4 v10, 0x0

    invoke-static {v6, v9, v10, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 366
    .local v9, "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 367
    .local v10, "set":Landroid/animation/AnimatorSet;
    const/4 v14, 0x2

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    aput-object v9, v14, v15

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 368
    move-object v14, v10

    .line 369
    .local v14, "anim":Landroid/animation/Animator;
    new-instance v15, Landroid/transition/ChangeBounds$8;

    invoke-direct {v15, v12, v6}, Landroid/transition/ChangeBounds$8;-><init>(Landroid/transition/ChangeBounds;Landroid/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v10, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 374
    .end local v6    # "viewBounds":Landroid/transition/ChangeBounds$ViewBounds;
    .end local v7    # "bottomRightPath":Landroid/graphics/Path;
    .end local v8    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    .end local v9    # "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    .end local v10    # "set":Landroid/animation/AnimatorSet;
    .end local v35    # "topLeftPath":Landroid/graphics/Path;
    nop

    .line 430
    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v25, v2

    move/from16 v17, v3

    move/from16 v27, v4

    move/from16 v30, v5

    move/from16 v49, v11

    move-object v6, v14

    move/from16 v14, v33

    move/from16 v33, v34

    move/from16 v47, v36

    move-object/from16 v8, v37

    goto/16 :goto_9

    .line 375
    .end local v31    # "numChanges":I
    .end local v32    # "endHeight":I
    .end local v33    # "startHeight":I
    .end local v34    # "endWidth":I
    .end local v36    # "startWidth":I
    .end local v37    # "view":Landroid/view/View;
    .local v6, "endHeight":I
    .local v7, "endWidth":I
    .local v10, "numChanges":I
    .local v13, "startWidth":I
    .local v14, "startHeight":I
    .restart local v15    # "view":Landroid/view/View;
    .restart local v30    # "endBottom":I
    :cond_d
    move/from16 v32, v6

    move/from16 v34, v7

    move/from16 v31, v10

    move/from16 v36, v13

    move/from16 v33, v14

    move-object/from16 v37, v15

    move/from16 v13, v30

    .end local v6    # "endHeight":I
    .end local v7    # "endWidth":I
    .end local v10    # "numChanges":I
    .end local v14    # "startHeight":I
    .end local v15    # "view":Landroid/view/View;
    .end local v30    # "endBottom":I
    .local v13, "endBottom":I
    .restart local v31    # "numChanges":I
    .restart local v32    # "endHeight":I
    .restart local v33    # "startHeight":I
    .restart local v34    # "endWidth":I
    .restart local v36    # "startWidth":I
    .restart local v37    # "view":Landroid/view/View;
    if-ne v5, v1, :cond_f

    if-eq v3, v2, :cond_e

    .line 376
    move-object/from16 v8, v37

    goto :goto_1

    .line 381
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v6

    int-to-float v7, v0

    int-to-float v8, v11

    int-to-float v9, v4

    int-to-float v10, v13

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v6

    .line 383
    .local v6, "bottomRight":Landroid/graphics/Path;
    sget-object v7, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    move-object/from16 v8, v37

    const/4 v9, 0x0

    invoke-static {v8, v7, v9, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 385
    .end local v37    # "view":Landroid/view/View;
    .local v6, "anim":Landroid/animation/Animator;
    .local v8, "view":Landroid/view/View;
    goto :goto_2

    .line 376
    .end local v6    # "anim":Landroid/animation/Animator;
    .end local v8    # "view":Landroid/view/View;
    .restart local v37    # "view":Landroid/view/View;
    :cond_f
    move-object/from16 v8, v37

    .end local v37    # "view":Landroid/view/View;
    .restart local v8    # "view":Landroid/view/View;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v6

    int-to-float v7, v5

    int-to-float v9, v3

    int-to-float v10, v1

    int-to-float v14, v2

    invoke-virtual {v6, v7, v9, v10, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v6

    .line 378
    .local v6, "topLeftPath":Landroid/graphics/Path;
    sget-object v7, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    const/4 v9, 0x0

    invoke-static {v8, v7, v9, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 380
    .local v6, "anim":Landroid/animation/Animator;
    nop

    .line 430
    .end local v0    # "startRight":I
    .end local v1    # "endLeft":I
    .end local v2    # "endTop":I
    .end local v3    # "startTop":I
    .end local v4    # "endRight":I
    .end local v5    # "startLeft":I
    .end local v11    # "startBottom":I
    .end local v34    # "endWidth":I
    .end local v36    # "startWidth":I
    .restart local v14    # "startHeight":I
    .local v16, "startRight":I
    .local v17, "startTop":I
    .local v18, "endLeft":I
    .local v25, "endTop":I
    .local v27, "endRight":I
    .local v30, "startLeft":I
    .local v33, "endWidth":I
    .local v47, "startWidth":I
    .local v49, "startBottom":I
    :goto_2
    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v25, v2

    move/from16 v17, v3

    move/from16 v27, v4

    move/from16 v30, v5

    move/from16 v49, v11

    move/from16 v14, v33

    move/from16 v33, v34

    move/from16 v47, v36

    goto/16 :goto_9

    .line 387
    .end local v8    # "view":Landroid/view/View;
    .end local v16    # "startRight":I
    .end local v17    # "startTop":I
    .end local v18    # "endLeft":I
    .end local v25    # "endTop":I
    .end local v27    # "endRight":I
    .end local v31    # "numChanges":I
    .end local v32    # "endHeight":I
    .end local v33    # "endWidth":I
    .end local v47    # "startWidth":I
    .end local v49    # "startBottom":I
    .restart local v0    # "startRight":I
    .restart local v1    # "endLeft":I
    .restart local v2    # "endTop":I
    .restart local v3    # "startTop":I
    .restart local v4    # "endRight":I
    .restart local v5    # "startLeft":I
    .local v6, "endHeight":I
    .restart local v7    # "endWidth":I
    .restart local v10    # "numChanges":I
    .restart local v11    # "startBottom":I
    .local v13, "startWidth":I
    .restart local v15    # "view":Landroid/view/View;
    .local v30, "endBottom":I
    :cond_10
    move/from16 v32, v6

    move/from16 v34, v7

    move/from16 v31, v10

    move/from16 v36, v13

    move/from16 v33, v14

    move-object v8, v15

    move/from16 v13, v30

    .end local v6    # "endHeight":I
    .end local v7    # "endWidth":I
    .end local v10    # "numChanges":I
    .end local v14    # "startHeight":I
    .end local v15    # "view":Landroid/view/View;
    .end local v30    # "endBottom":I
    .restart local v8    # "view":Landroid/view/View;
    .local v13, "endBottom":I
    .restart local v31    # "numChanges":I
    .restart local v32    # "endHeight":I
    .local v33, "startHeight":I
    .restart local v34    # "endWidth":I
    .restart local v36    # "startWidth":I
    move/from16 v9, v36

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 388
    .end local v34    # "endWidth":I
    .end local v36    # "startWidth":I
    .restart local v7    # "endWidth":I
    .local v9, "startWidth":I
    .local v10, "maxWidth":I
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 390
    .end local v32    # "endHeight":I
    .end local v33    # "startHeight":I
    .restart local v6    # "endHeight":I
    .restart local v14    # "startHeight":I
    .local v15, "maxHeight":I
    move/from16 v38, v0

    add-int v0, v5, v10

    .end local v0    # "startRight":I
    .local v38, "startRight":I
    move/from16 v39, v4

    add-int v4, v3, v15

    .end local v4    # "endRight":I
    .local v39, "endRight":I
    invoke-virtual {v8, v5, v3, v0, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "positionAnimator":Landroid/animation/ObjectAnimator;
    if-ne v5, v1, :cond_12

    if-eq v3, v2, :cond_11

    goto :goto_4

    .line 400
    :cond_11
    move/from16 v43, v1

    move/from16 v42, v3

    move/from16 v41, v5

    .end local v0    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "endLeft":I
    .end local v3    # "startTop":I
    .local v5, "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v41, "startLeft":I
    .local v42, "startTop":I
    .local v43, "endLeft":I
    :goto_3
    move-object v5, v0

    goto :goto_5

    .line 395
    .end local v41    # "startLeft":I
    .end local v42    # "startTop":I
    .end local v43    # "endLeft":I
    .restart local v0    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .restart local v1    # "endLeft":I
    .restart local v3    # "startTop":I
    .local v5, "startLeft":I
    :cond_12
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move-object/from16 v40, v0

    int-to-float v0, v5

    .end local v0    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v40, "positionAnimator":Landroid/animation/ObjectAnimator;
    move/from16 v41, v5

    int-to-float v5, v3

    .end local v5    # "startLeft":I
    .restart local v41    # "startLeft":I
    move/from16 v42, v3

    int-to-float v3, v1

    .end local v3    # "startTop":I
    .restart local v42    # "startTop":I
    move/from16 v43, v1

    int-to-float v1, v2

    .end local v1    # "endLeft":I
    .restart local v43    # "endLeft":I
    invoke-virtual {v4, v0, v5, v3, v1}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 397
    .local v0, "topLeftPath":Landroid/graphics/Path;
    sget-object v1, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    const/4 v3, 0x0

    invoke-static {v8, v1, v3, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .end local v40    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v0, "positionAnimator":Landroid/animation/ObjectAnimator;
    goto :goto_3

    .line 400
    .end local v0    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v5, "positionAnimator":Landroid/animation/ObjectAnimator;
    :goto_5
    move/from16 v17, v42

    move-object/from16 v3, v29

    .line 401
    .end local v42    # "startTop":I
    .local v3, "finalClip":Landroid/graphics/Rect;
    .restart local v17    # "startTop":I
    if-nez v28, :cond_13

    .line 402
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v9, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 404
    .end local v28    # "startClip":Landroid/graphics/Rect;
    .local v0, "startClip":Landroid/graphics/Rect;
    move-object v4, v0

    goto :goto_6

    .end local v0    # "startClip":Landroid/graphics/Rect;
    .restart local v28    # "startClip":Landroid/graphics/Rect;
    :cond_13
    const/4 v1, 0x0

    move-object/from16 v4, v28

    .end local v28    # "startClip":Landroid/graphics/Rect;
    .local v4, "startClip":Landroid/graphics/Rect;
    :goto_6
    if-nez v29, :cond_14

    .line 405
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 407
    .end local v29    # "endClip":Landroid/graphics/Rect;
    .local v0, "endClip":Landroid/graphics/Rect;
    move-object v1, v0

    goto :goto_7

    .end local v0    # "endClip":Landroid/graphics/Rect;
    .restart local v29    # "endClip":Landroid/graphics/Rect;
    :cond_14
    move-object/from16 v1, v29

    .end local v29    # "endClip":Landroid/graphics/Rect;
    .local v1, "endClip":Landroid/graphics/Rect;
    :goto_7
    const/4 v0, 0x0

    .line 408
    .local v0, "clipAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_15

    .line 409
    invoke-virtual {v8, v4}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 410
    move-object/from16 v44, v0

    const-string v0, "clipBounds"

    .end local v0    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v44, "clipAnimator":Landroid/animation/ObjectAnimator;
    move/from16 v45, v2

    sget-object v2, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    .end local v2    # "endTop":I
    .local v45, "endTop":I
    move-object/from16 v46, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .end local v5    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v46, "positionAnimator":Landroid/animation/ObjectAnimator;
    const/16 v16, 0x0

    aput-object v4, v5, v16

    const/16 v16, 0x1

    aput-object v1, v5, v16

    invoke-static {v8, v0, v2, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 412
    .end local v44    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v5, "clipAnimator":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/transition/ChangeBounds$9;

    move/from16 v16, v38

    move-object v0, v2

    .end local v38    # "startRight":I
    .restart local v16    # "startRight":I
    move-object/from16 v29, v1

    move/from16 v18, v43

    move-object v1, v12

    .end local v1    # "endClip":Landroid/graphics/Rect;
    .end local v43    # "endLeft":I
    .restart local v18    # "endLeft":I
    .restart local v29    # "endClip":Landroid/graphics/Rect;
    move/from16 v47, v9

    move/from16 v25, v45

    move-object v9, v2

    move-object v2, v8

    .end local v9    # "startWidth":I
    .end local v45    # "endTop":I
    .restart local v25    # "endTop":I
    .restart local v47    # "startWidth":I
    move-object/from16 v28, v4

    move/from16 v27, v39

    move/from16 v4, v18

    .end local v4    # "startClip":Landroid/graphics/Rect;
    .end local v39    # "endRight":I
    .restart local v27    # "endRight":I
    .restart local v28    # "startClip":Landroid/graphics/Rect;
    move/from16 v48, v10

    move/from16 v49, v11

    move/from16 v30, v41

    move-object/from16 v11, v46

    move-object v10, v5

    move/from16 v5, v25

    .end local v5    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v41    # "startLeft":I
    .end local v46    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v10, "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v11, "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v30, "startLeft":I
    .local v48, "maxWidth":I
    .restart local v49    # "startBottom":I
    move/from16 v32, v6

    move/from16 v6, v27

    .end local v6    # "endHeight":I
    .restart local v32    # "endHeight":I
    move/from16 v33, v7

    move v7, v13

    .end local v7    # "endWidth":I
    .local v33, "endWidth":I
    invoke-direct/range {v0 .. v7}, Landroid/transition/ChangeBounds$9;-><init>(Landroid/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v10, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_8

    .line 430
    .end local v16    # "startRight":I
    .end local v18    # "endLeft":I
    .end local v25    # "endTop":I
    .end local v27    # "endRight":I
    .end local v28    # "startClip":Landroid/graphics/Rect;
    .end local v29    # "endClip":Landroid/graphics/Rect;
    .end local v30    # "startLeft":I
    .end local v32    # "endHeight":I
    .end local v33    # "endWidth":I
    .end local v47    # "startWidth":I
    .end local v48    # "maxWidth":I
    .end local v49    # "startBottom":I
    .restart local v0    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .restart local v1    # "endClip":Landroid/graphics/Rect;
    .restart local v2    # "endTop":I
    .restart local v4    # "startClip":Landroid/graphics/Rect;
    .local v5, "positionAnimator":Landroid/animation/ObjectAnimator;
    .restart local v6    # "endHeight":I
    .restart local v7    # "endWidth":I
    .restart local v9    # "startWidth":I
    .local v10, "maxWidth":I
    .local v11, "startBottom":I
    .restart local v38    # "startRight":I
    .restart local v39    # "endRight":I
    .restart local v41    # "startLeft":I
    .restart local v43    # "endLeft":I
    :cond_15
    move-object/from16 v44, v0

    move-object/from16 v29, v1

    move/from16 v25, v2

    move-object/from16 v28, v4

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v47, v9

    move/from16 v48, v10

    move/from16 v49, v11

    move/from16 v16, v38

    move/from16 v27, v39

    move/from16 v30, v41

    move/from16 v18, v43

    move-object v11, v5

    move-object/from16 v10, v44

    .end local v0    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "endClip":Landroid/graphics/Rect;
    .end local v2    # "endTop":I
    .end local v4    # "startClip":Landroid/graphics/Rect;
    .end local v5    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v6    # "endHeight":I
    .end local v7    # "endWidth":I
    .end local v9    # "startWidth":I
    .end local v38    # "startRight":I
    .end local v39    # "endRight":I
    .end local v41    # "startLeft":I
    .end local v43    # "endLeft":I
    .local v10, "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v11, "positionAnimator":Landroid/animation/ObjectAnimator;
    .restart local v16    # "startRight":I
    .restart local v18    # "endLeft":I
    .restart local v25    # "endTop":I
    .restart local v27    # "endRight":I
    .restart local v28    # "startClip":Landroid/graphics/Rect;
    .restart local v29    # "endClip":Landroid/graphics/Rect;
    .restart local v30    # "startLeft":I
    .restart local v32    # "endHeight":I
    .restart local v33    # "endWidth":I
    .restart local v47    # "startWidth":I
    .restart local v48    # "maxWidth":I
    .restart local v49    # "startBottom":I
    :goto_8
    invoke-static {v11, v10}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v6

    .end local v3    # "finalClip":Landroid/graphics/Rect;
    .end local v10    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v11    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v15    # "maxHeight":I
    .end local v48    # "maxWidth":I
    .local v6, "anim":Landroid/animation/Animator;
    :goto_9
    move-object v0, v6

    .line 433
    .end local v6    # "anim":Landroid/animation/Animator;
    .local v0, "anim":Landroid/animation/Animator;
    return-object v0

    .line 435
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v8    # "view":Landroid/view/View;
    .end local v13    # "endBottom":I
    .end local v14    # "startHeight":I
    .end local v16    # "startRight":I
    .end local v17    # "startTop":I
    .end local v18    # "endLeft":I
    .end local v23    # "startBounds":Landroid/graphics/Rect;
    .end local v24    # "endBounds":Landroid/graphics/Rect;
    .end local v25    # "endTop":I
    .end local v27    # "endRight":I
    .end local v28    # "startClip":Landroid/graphics/Rect;
    .end local v29    # "endClip":Landroid/graphics/Rect;
    .end local v30    # "startLeft":I
    .end local v31    # "numChanges":I
    .end local v32    # "endHeight":I
    .end local v33    # "endWidth":I
    .end local v47    # "startWidth":I
    .end local v49    # "startBottom":I
    .local v15, "view":Landroid/view/View;
    :cond_16
    move-object v8, v15

    move-object/from16 v12, p0

    .line 467
    .end local v15    # "view":Landroid/view/View;
    .restart local v8    # "view":Landroid/view/View;
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v11, p3

    goto/16 :goto_a

    .line 436
    .end local v8    # "view":Landroid/view/View;
    .end local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "startParent":Landroid/view/ViewGroup;
    .end local v22    # "endParent":Landroid/view/ViewGroup;
    .local v11, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v12, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v13, "startParent":Landroid/view/ViewGroup;
    .local v14, "endParent":Landroid/view/ViewGroup;
    .restart local v15    # "view":Landroid/view/View;
    :cond_17
    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object v12, v8

    move-object v8, v15

    .end local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "startParent":Landroid/view/ViewGroup;
    .end local v14    # "endParent":Landroid/view/ViewGroup;
    .end local v15    # "view":Landroid/view/View;
    .restart local v8    # "view":Landroid/view/View;
    .restart local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "startParent":Landroid/view/ViewGroup;
    .restart local v22    # "endParent":Landroid/view/ViewGroup;
    iget-object v0, v12, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 437
    move-object/from16 v7, p2

    iget-object v0, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowX"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v12, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int v9, v0, v1

    .line 438
    .local v9, "startX":I
    iget-object v0, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v12, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int v10, v0, v1

    .line 439
    .local v10, "startY":I
    move-object/from16 v11, p3

    iget-object v0, v11, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowX"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v12, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int v13, v0, v1

    .line 440
    .local v13, "endX":I
    iget-object v0, v11, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v12, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int v14, v0, v1

    .line 442
    .local v14, "endY":I
    if-ne v9, v13, :cond_19

    if-eq v10, v14, :cond_18

    goto :goto_b

    .line 467
    .end local v9    # "startX":I
    .end local v10    # "startY":I
    .end local v13    # "endX":I
    .end local v14    # "endY":I
    :cond_18
    :goto_a
    const/4 v0, 0x0

    return-object v0

    .line 443
    .restart local v9    # "startX":I
    .restart local v10    # "startY":I
    .restart local v13    # "endX":I
    .restart local v14    # "endY":I
    :cond_19
    :goto_b
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 444
    .local v15, "width":I
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 445
    .local v5, "height":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 446
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v0

    .line 447
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 448
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v0

    .line 449
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    add-int v0, v9, v15

    add-int v1, v10, v5

    invoke-virtual {v2, v9, v10, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 450
    invoke-virtual {v8}, Landroid/view/View;->getTransitionAlpha()F

    move-result v23

    .line 451
    .local v23, "transitionAlpha":F
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 452
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    int-to-float v1, v9

    move-object/from16 v50, v3

    int-to-float v3, v10

    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .local v50, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v51, v4

    int-to-float v4, v13

    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .local v51, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v52, v5

    int-to-float v5, v14

    .end local v5    # "height":I
    .local v52, "height":I
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v5

    .line 454
    .local v5, "topLeftPath":Landroid/graphics/Path;
    sget-object v0, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x0

    invoke-static {v0, v1, v5}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 456
    .local v17, "origin":Landroid/animation/PropertyValuesHolder;
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object v17, v0, v1

    invoke-static {v2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 457
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/transition/ChangeBounds$10;

    move-object v0, v3

    move-object v1, v12

    move-object/from16 v16, v2

    move-object v2, v6

    .end local v2    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v16, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v6, v3

    move-object/from16 v18, v50

    move-object/from16 v3, v16

    .end local v50    # "canvas":Landroid/graphics/Canvas;
    .local v18, "canvas":Landroid/graphics/Canvas;
    move-object v7, v4

    move-object/from16 v24, v51

    move-object v4, v8

    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v51    # "bitmap":Landroid/graphics/Bitmap;
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    .local v24, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v26, v5

    move/from16 v25, v52

    move/from16 v5, v23

    .end local v5    # "topLeftPath":Landroid/graphics/Path;
    .end local v52    # "height":I
    .local v25, "height":I
    .local v26, "topLeftPath":Landroid/graphics/Path;
    invoke-direct/range {v0 .. v5}, Landroid/transition/ChangeBounds$10;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v7, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    return-object v7

    .line 284
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "startX":I
    .end local v10    # "startY":I
    .end local v15    # "width":I
    .end local v16    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v17    # "origin":Landroid/animation/PropertyValuesHolder;
    .end local v18    # "canvas":Landroid/graphics/Canvas;
    .end local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "startParent":Landroid/view/ViewGroup;
    .end local v22    # "endParent":Landroid/view/ViewGroup;
    .end local v23    # "transitionAlpha":F
    .end local v24    # "bitmap":Landroid/graphics/Bitmap;
    .end local v25    # "height":I
    .end local v26    # "topLeftPath":Landroid/graphics/Path;
    .restart local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v13, "startParent":Landroid/view/ViewGroup;
    .local v14, "endParent":Landroid/view/ViewGroup;
    :cond_1a
    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object v12, v8

    move-object v11, v10

    .end local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "startParent":Landroid/view/ViewGroup;
    .end local v14    # "endParent":Landroid/view/ViewGroup;
    .restart local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "startParent":Landroid/view/ViewGroup;
    .restart local v22    # "endParent":Landroid/view/ViewGroup;
    :goto_c
    const/4 v0, 0x0

    return-object v0

    .line 277
    .end local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "startParent":Landroid/view/ViewGroup;
    .end local v22    # "endParent":Landroid/view/ViewGroup;
    :cond_1b
    :goto_d
    move-object v12, v8

    move-object v11, v10

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResizeClip()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 182
    sget-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0
    .param p1, "reparent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 230
    return-void
.end method

.method public setResizeClip(Z)V
    .locals 0
    .param p1, "resizeClip"    # Z

    .line 200
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 201
    return-void
.end method
