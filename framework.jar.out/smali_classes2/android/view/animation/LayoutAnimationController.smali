.class public Landroid/view/animation/LayoutAnimationController;
.super Ljava/lang/Object;
.source "LayoutAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    }
.end annotation


# static fields
.field public static final ORDER_NORMAL:I = 0x0

.field public static final ORDER_RANDOM:I = 0x2

.field public static final ORDER_REVERSE:I = 0x1


# instance fields
.field protected mAnimation:Landroid/view/animation/Animation;

.field private mDelay:F

.field private mDuration:J

.field protected mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxDelay:J

.field private mOrder:I

.field protected mRandomizer:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Lcom/android/internal/R$styleable;->LayoutAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "a":Landroid/content/res/TypedArray;
    nop

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 108
    invoke-static {v1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 110
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    .line 112
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    .line 114
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 115
    .local v3, "resource":I
    if-lez v3, :cond_0

    .line 116
    invoke-virtual {p0, p1, v3}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/content/Context;I)V

    .line 119
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 120
    .end local v3    # "resource":I
    .local v2, "resource":I
    if-lez v2, :cond_1

    .line 121
    invoke-virtual {p0, p1, v2}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/content/Context;I)V

    .line 124
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 134
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;F)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "delay"    # F

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p2, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    .line 146
    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/view/animation/Animation;)V

    .line 147
    return-void
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 323
    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->getDelayForView(Landroid/view/View;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 324
    .local v0, "delay":J
    iget-wide v2, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    .line 327
    :try_start_0
    iget-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v2

    .line 328
    .local v2, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    return-object v2

    .line 330
    .end local v2    # "animation":Landroid/view/animation/Animation;
    :catch_0
    move-exception v2

    .line 331
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v3, 0x0

    return-object v3
.end method

.method public getDelay()F
    .locals 1

    .line 268
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    return v0
.end method

.method protected getDelayForView(Landroid/view/View;)J
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 372
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, v0, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 374
    .local v1, "params":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v1, :cond_0

    .line 375
    const-wide/16 v2, 0x0

    return-wide v2

    .line 378
    :cond_0
    iget v2, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    iget-object v3, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v2, v3

    .line 379
    .local v2, "delay":F
    invoke-virtual {p0, v1}, Landroid/view/animation/LayoutAnimationController;->getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-long v3, v3

    .line 380
    .local v3, "viewDelay":J
    iget v5, v1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    .line 382
    .local v5, "totalDelay":F
    iget-object v6, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_1

    .line 383
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v6, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 386
    :cond_1
    long-to-float v6, v3

    div-float/2addr v6, v5

    .line 387
    .local v6, "normalizedDelay":F
    iget-object v7, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 389
    mul-float v7, v6, v5

    float-to-long v7, v7

    return-wide v7
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 256
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 158
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    return v0
.end method

.method protected getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I
    .locals 2
    .param p1, "params"    # Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 404
    invoke-virtual {p0}, Landroid/view/animation/LayoutAnimationController;->getOrder()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 414
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    return v0

    .line 408
    :pswitch_0
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 411
    :cond_0
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 406
    :pswitch_1
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    sub-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isDone()Z
    .locals 6

    .line 342
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    .line 343
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 342
    :goto_0
    return v0
.end method

.method public setAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .line 186
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/view/animation/Animation;)V

    .line 187
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 201
    iput-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    .line 202
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 203
    return-void
.end method

.method public setDelay(F)V
    .locals 0
    .param p1, "delay"    # F

    .line 284
    iput p1, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    .line 285
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .line 231
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 232
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 246
    iput-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 247
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .line 170
    iput p1, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    .line 171
    return-void
.end method

.method public start()V
    .locals 3

    .line 301
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/animation/LayoutAnimationController;->mDuration:J

    .line 302
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    .line 303
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 304
    return-void
.end method

.method public willOverlap()Z
    .locals 2

    .line 294
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
