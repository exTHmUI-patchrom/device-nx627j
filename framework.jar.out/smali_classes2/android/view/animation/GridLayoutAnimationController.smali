.class public Landroid/view/animation/GridLayoutAnimationController;
.super Landroid/view/animation/LayoutAnimationController;
.source "GridLayoutAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    }
.end annotation


# static fields
.field public static final DIRECTION_BOTTOM_TO_TOP:I = 0x2

.field public static final DIRECTION_HORIZONTAL_MASK:I = 0x1

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final DIRECTION_TOP_TO_BOTTOM:I = 0x0

.field public static final DIRECTION_VERTICAL_MASK:I = 0x2

.field public static final PRIORITY_COLUMN:I = 0x1

.field public static final PRIORITY_NONE:I = 0x0

.field public static final PRIORITY_ROW:I = 0x2


# instance fields
.field private mColumnDelay:F

.field private mDirection:I

.field private mDirectionPriority:I

.field private mRowDelay:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    sget-object v0, Lcom/android/internal/R$styleable;->GridLayoutAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    .local v0, "a":Landroid/content/res/TypedArray;
    nop

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 118
    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v2

    .line 120
    .local v2, "d":Landroid/view/animation/Animation$Description;
    iget v3, v2, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    .line 121
    nop

    .line 122
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 121
    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v2

    .line 123
    iget v3, v2, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    .line 125
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    .line 127
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 140
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0, v0}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/view/animation/Animation;FF)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;FF)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "columnDelay"    # F
    .param p3, "rowDelay"    # F

    .line 152
    invoke-direct {p0, p1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 153
    iput p2, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    .line 154
    iput p3, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    .line 155
    return-void
.end method

.method private getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .locals 4
    .param p1, "params"    # Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 346
    invoke-virtual {p0}, Landroid/view/animation/GridLayoutAnimationController;->getOrder()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 358
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    goto :goto_0

    .line 351
    :pswitch_0
    iget-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 354
    :cond_0
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 355
    .local v0, "index":I
    goto :goto_0

    .line 348
    .end local v0    # "index":I
    :pswitch_1
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    sub-int/2addr v0, v1

    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    sub-int/2addr v0, v2

    .line 349
    .restart local v0    # "index":I
    nop

    .line 358
    :goto_0
    nop

    .line 362
    iget v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    and-int/2addr v2, v1

    .line 363
    .local v2, "direction":I
    if-ne v2, v1, :cond_1

    .line 364
    iget v3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    sub-int/2addr v3, v1

    sub-int v0, v3, v0

    .line 367
    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .locals 3
    .param p1, "params"    # Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 372
    invoke-virtual {p0}, Landroid/view/animation/GridLayoutAnimationController;->getOrder()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 384
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0

    .line 377
    :pswitch_0
    iget-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 380
    :cond_0
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 381
    .local v0, "index":I
    goto :goto_0

    .line 374
    .end local v0    # "index":I
    :pswitch_1
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    sub-int/2addr v0, v1

    .line 375
    .restart local v0    # "index":I
    nop

    .line 384
    :goto_0
    nop

    .line 388
    iget v1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    .line 389
    .local v1, "direction":I
    if-ne v1, v2, :cond_1

    .line 390
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, v0

    .line 393
    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getColumnDelay()F
    .locals 1

    .line 169
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    return v0
.end method

.method protected getDelayForView(Landroid/view/View;)J
    .locals 17
    .param p1, "view"    # Landroid/view/View;

    move-object/from16 v0, p0

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 299
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, v1, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v2, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 301
    .local v2, "params":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v2, :cond_0

    .line 302
    const-wide/16 v3, 0x0

    return-wide v3

    .line 305
    :cond_0
    invoke-direct {v0, v2}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    move-result v3

    .line 306
    .local v3, "column":I
    invoke-direct {v0, v2}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    move-result v4

    .line 308
    .local v4, "row":I
    iget v5, v2, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 309
    .local v5, "rowsCount":I
    iget v6, v2, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 311
    .local v6, "columnsCount":I
    iget-object v7, v0, Landroid/view/animation/GridLayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v7

    .line 312
    .local v7, "duration":J
    iget v9, v0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    long-to-float v10, v7

    mul-float/2addr v9, v10

    .line 313
    .local v9, "columnDelay":F
    iget v10, v0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    long-to-float v11, v7

    mul-float/2addr v10, v11

    .line 318
    .local v10, "rowDelay":F
    iget-object v11, v0, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v11, :cond_1

    .line 319
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v11, v0, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 322
    :cond_1
    iget v11, v0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    packed-switch v11, :pswitch_data_0

    .line 333
    int-to-float v11, v3

    mul-float/2addr v11, v9

    int-to-float v12, v4

    mul-float/2addr v12, v10

    add-float/2addr v11, v12

    float-to-long v11, v11

    .line 334
    .local v11, "viewDelay":J
    int-to-float v13, v6

    mul-float/2addr v13, v9

    int-to-float v14, v5

    mul-float/2addr v14, v10

    add-float/2addr v13, v14

    goto :goto_0

    .line 328
    .end local v11    # "viewDelay":J
    :pswitch_0
    int-to-float v11, v3

    mul-float/2addr v11, v9

    mul-int v12, v4, v6

    int-to-float v12, v12

    mul-float/2addr v12, v9

    add-float/2addr v11, v12

    float-to-long v11, v11

    .line 329
    .restart local v11    # "viewDelay":J
    int-to-float v13, v6

    mul-float/2addr v13, v9

    mul-int v14, v5, v6

    int-to-float v14, v14

    mul-float/2addr v14, v9

    add-float/2addr v13, v14

    .line 330
    .local v13, "totalDelay":F
    goto :goto_0

    .line 324
    .end local v11    # "viewDelay":J
    .end local v13    # "totalDelay":F
    :pswitch_1
    int-to-float v11, v4

    mul-float/2addr v11, v10

    mul-int v12, v3, v5

    int-to-float v12, v12

    mul-float/2addr v12, v10

    add-float/2addr v11, v12

    float-to-long v11, v11

    .line 325
    .restart local v11    # "viewDelay":J
    int-to-float v13, v5

    mul-float/2addr v13, v10

    mul-int v14, v6, v5

    int-to-float v14, v14

    mul-float/2addr v14, v10

    add-float/2addr v13, v14

    .line 326
    .restart local v13    # "totalDelay":F
    nop

    .line 334
    :goto_0
    nop

    .line 338
    long-to-float v14, v11

    div-float/2addr v14, v13

    .line 339
    .local v14, "normalizedDelay":F
    iget-object v15, v0, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v15, v14}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v14

    .line 341
    mul-float v15, v14, v13

    move-object/from16 v16, v1

    float-to-long v0, v15

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v16, "lp":Landroid/view/ViewGroup$LayoutParams;
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDirection()I
    .locals 1

    .line 231
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    return v0
.end method

.method public getDirectionPriority()I
    .locals 1

    .line 266
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    return v0
.end method

.method public getRowDelay()F
    .locals 1

    .line 198
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return v0
.end method

.method public setColumnDelay(F)V
    .locals 0
    .param p1, "columnDelay"    # F

    .line 183
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    .line 184
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .line 250
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    .line 251
    return-void
.end method

.method public setDirectionPriority(I)V
    .locals 0
    .param p1, "directionPriority"    # I

    .line 282
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    .line 283
    return-void
.end method

.method public setRowDelay(F)V
    .locals 0
    .param p1, "rowDelay"    # F

    .line 212
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    .line 213
    return-void
.end method

.method public willOverlap()Z
    .locals 2

    .line 290
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
