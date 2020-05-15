.class public Landroid/transition/Slide;
.super Landroid/transition/Visibility;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Slide$CalculateSlideVertical;,
        Landroid/transition/Slide$CalculateSlideHorizontal;,
        Landroid/transition/Slide$CalculateSlide;,
        Landroid/transition/Slide$GravityFlag;
    }
.end annotation


# static fields
.field private static final PROPNAME_SCREEN_POSITION:Ljava/lang/String; = "android:slide:screenPosition"

.field private static final TAG:Ljava/lang/String; = "Slide"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateRight:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateStart:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateTop:Landroid/transition/Slide$CalculateSlide;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

.field private mSlideEdge:I

.field private mSlideFraction:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 47
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 83
    new-instance v0, Landroid/transition/Slide$1;

    invoke-direct {v0}, Landroid/transition/Slide$1;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

    .line 90
    new-instance v0, Landroid/transition/Slide$2;

    invoke-direct {v0}, Landroid/transition/Slide$2;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateStart:Landroid/transition/Slide$CalculateSlide;

    .line 104
    new-instance v0, Landroid/transition/Slide$3;

    invoke-direct {v0}, Landroid/transition/Slide$3;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateTop:Landroid/transition/Slide$CalculateSlide;

    .line 111
    new-instance v0, Landroid/transition/Slide$4;

    invoke-direct {v0}, Landroid/transition/Slide$4;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateRight:Landroid/transition/Slide$CalculateSlide;

    .line 118
    new-instance v0, Landroid/transition/Slide$5;

    invoke-direct {v0}, Landroid/transition/Slide$5;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

    .line 132
    new-instance v0, Landroid/transition/Slide$6;

    invoke-direct {v0}, Landroid/transition/Slide$6;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 143
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 49
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 50
    const/16 v0, 0x50

    iput v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    .line 51
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 144
    invoke-virtual {p0, v0}, Landroid/transition/Slide;->setSlideEdge(I)V

    .line 145
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "slideEdge"    # I

    .line 150
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 49
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 50
    const/16 v0, 0x50

    iput v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 151
    invoke-virtual {p0, p1}, Landroid/transition/Slide;->setSlideEdge(I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 50
    const/16 v0, 0x50

    iput v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    .line 51
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 156
    sget-object v1, Lcom/android/internal/R$styleable;->Slide:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 157
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 158
    .local v0, "edge":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    invoke-virtual {p0, v0}, Landroid/transition/Slide;->setSlideEdge(I)V

    .line 160
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 163
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 164
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 165
    .local v1, "position":[I
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 166
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:slide:screenPosition"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 177
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 178
    invoke-direct {p0, p1}, Landroid/transition/Slide;->captureValues(Landroid/transition/TransitionValues;)V

    .line 179
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 171
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 172
    invoke-direct {p0, p1}, Landroid/transition/Slide;->captureValues(Landroid/transition/TransitionValues;)V

    .line 173
    return-void
.end method

.method public getSlideEdge()I
    .locals 1

    .line 230
    iget v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 19
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 236
    move-object/from16 v13, p4

    if-nez v13, :cond_0

    .line 237
    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_0
    iget-object v0, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:slide:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [I

    .line 240
    .local v14, "position":[I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v15

    .line 241
    .local v15, "endX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v16

    .line 242
    .local v16, "endY":F
    iget-object v0, v10, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    iget v1, v10, Landroid/transition/Slide;->mSlideFraction:F

    invoke-interface {v0, v11, v12, v1}, Landroid/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;F)F

    move-result v17

    .line 243
    .local v17, "startX":F
    iget-object v0, v10, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    iget v1, v10, Landroid/transition/Slide;->mSlideFraction:F

    invoke-interface {v0, v11, v12, v1}, Landroid/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;F)F

    move-result v18

    .line 244
    .local v18, "startY":F
    const/4 v0, 0x0

    aget v2, v14, v0

    const/4 v0, 0x1

    aget v3, v14, v0

    sget-object v8, Landroid/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 245
    move-object v0, v12

    move-object v1, v13

    move/from16 v4, v17

    move/from16 v5, v18

    move v6, v15

    move/from16 v7, v16

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v0

    .line 244
    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 19
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 252
    if-nez v13, :cond_0

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_0
    iget-object v0, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:slide:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [I

    .line 256
    .local v14, "position":[I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v15

    .line 257
    .local v15, "startX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v16

    .line 258
    .local v16, "startY":F
    iget-object v0, v10, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    iget v1, v10, Landroid/transition/Slide;->mSlideFraction:F

    invoke-interface {v0, v11, v12, v1}, Landroid/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;F)F

    move-result v17

    .line 259
    .local v17, "endX":F
    iget-object v0, v10, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    iget v1, v10, Landroid/transition/Slide;->mSlideFraction:F

    invoke-interface {v0, v11, v12, v1}, Landroid/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;F)F

    move-result v18

    .line 260
    .local v18, "endY":F
    const/4 v0, 0x0

    aget v2, v14, v0

    const/4 v0, 0x1

    aget v3, v14, v0

    sget-object v8, Landroid/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 261
    move-object v0, v12

    move-object v1, v13

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v0

    .line 260
    return-object v0
.end method

.method public setSlideEdge(I)V
    .locals 2
    .param p1, "slideEdge"    # I

    .line 191
    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0x30

    if-eq p1, v0, :cond_3

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    const v0, 0x800003

    if-eq p1, v0, :cond_1

    const v0, 0x800005

    if-ne p1, v0, :cond_0

    .line 208
    sget-object v0, Landroid/transition/Slide;->sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 209
    goto :goto_0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid slide direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    sget-object v0, Landroid/transition/Slide;->sCalculateStart:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 206
    goto :goto_0

    .line 202
    :cond_2
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 203
    goto :goto_0

    .line 196
    :cond_3
    sget-object v0, Landroid/transition/Slide;->sCalculateTop:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 197
    goto :goto_0

    .line 199
    :cond_4
    sget-object v0, Landroid/transition/Slide;->sCalculateRight:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 200
    goto :goto_0

    .line 193
    :cond_5
    sget-object v0, Landroid/transition/Slide;->sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 194
    nop

    .line 213
    :goto_0
    iput p1, p0, Landroid/transition/Slide;->mSlideEdge:I

    .line 214
    new-instance v0, Landroid/transition/SidePropagation;

    invoke-direct {v0}, Landroid/transition/SidePropagation;-><init>()V

    .line 215
    .local v0, "propagation":Landroid/transition/SidePropagation;
    invoke-virtual {v0, p1}, Landroid/transition/SidePropagation;->setSide(I)V

    .line 216
    invoke-virtual {p0, v0}, Landroid/transition/Slide;->setPropagation(Landroid/transition/TransitionPropagation;)V

    .line 217
    return-void
.end method

.method public setSlideFraction(F)V
    .locals 0
    .param p1, "slideFraction"    # F

    .line 267
    iput p1, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 268
    return-void
.end method
