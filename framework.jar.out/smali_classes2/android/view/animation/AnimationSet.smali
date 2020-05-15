.class public Landroid/view/animation/AnimationSet;
.super Landroid/view/animation/Animation;
.source "AnimationSet.java"


# static fields
.field private static final PROPERTY_CHANGE_BOUNDS_MASK:I = 0x80

.field private static final PROPERTY_DURATION_MASK:I = 0x20

.field private static final PROPERTY_FILL_AFTER_MASK:I = 0x1

.field private static final PROPERTY_FILL_BEFORE_MASK:I = 0x2

.field private static final PROPERTY_MORPH_MATRIX_MASK:I = 0x40

.field private static final PROPERTY_REPEAT_MODE_MASK:I = 0x4

.field private static final PROPERTY_SHARE_INTERPOLATOR_MASK:I = 0x10

.field private static final PROPERTY_START_OFFSET_MASK:I = 0x8


# instance fields
.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mDirty:Z

.field private mFlags:I

.field private mHasAlpha:Z

.field private mLastEnd:J

.field private mStoredOffsets:[J

.field private mTempTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 68
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 83
    sget-object v1, Lcom/android/internal/R$styleable;->AnimationSet:[I

    .line 84
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 86
    .local v1, "a":Landroid/content/res/TypedArray;
    nop

    .line 87
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 86
    const/16 v4, 0x10

    invoke-direct {p0, v4, v3}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    .line 88
    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_4

    .line 92
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 95
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, v3

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 98
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 101
    :cond_2
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    .line 102
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 104
    :cond_3
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 109
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "shareInterpolator"    # Z

    .line 120
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 121
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    .line 122
    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    .line 123
    return-void
.end method

.method private init()V
    .locals 2

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartTime:J

    .line 151
    return-void
.end method

.method private setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 142
    if-eqz p2, :cond_0

    .line 143
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    goto :goto_0

    .line 145
    :cond_0
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 147
    :goto_0
    return-void
.end method


# virtual methods
.method public addAnimation(Landroid/view/animation/Animation;)V
    .locals 9
    .param p1, "a"    # Landroid/view/animation/Animation;

    .line 219
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 222
    .local v0, "noMatrix":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 226
    :cond_1
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_2

    move v1, v2

    nop

    .line 229
    .local v1, "changeBounds":Z
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 233
    :cond_3
    iget v3, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 234
    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_1

    .line 236
    :cond_4
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 237
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    .line 238
    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_1

    .line 240
    :cond_5
    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    .line 241
    iget-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    iget-wide v5, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    .line 245
    :goto_1
    iput-boolean v2, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    .line 246
    return-void
.end method

.method protected bridge synthetic clone()Landroid/view/animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Landroid/view/animation/AnimationSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 127
    invoke-super {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 128
    .local v0, "animation":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 131
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 132
    .local v1, "count":I
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 134
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 135
    iget-object v4, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    .end local v3    # "i":I
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .locals 8

    .line 324
    const-wide/16 v0, 0x0

    .line 325
    .local v0, "duration":J
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 326
    .local v2, "count":I
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 327
    .local v3, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 328
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v5

    .line 329
    .local v5, "d":J
    cmp-long v7, v5, v0

    if-lez v7, :cond_0

    move-wide v0, v5

    .line 327
    .end local v5    # "d":J
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 331
    .end local v4    # "i":I
    :cond_1
    return-wide v0
.end method

.method public getAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDuration()J
    .locals 8

    .line 301
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 302
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 303
    .local v1, "count":I
    const-wide/16 v2, 0x0

    .line 305
    .local v2, "duration":J
    iget v4, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 306
    .local v4, "durationSet":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 307
    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    goto :goto_2

    .line 309
    :cond_1
    nop

    .local v6, "i":I
    :goto_1
    move v5, v6

    .end local v6    # "i":I
    .local v5, "i":I
    if-ge v5, v1, :cond_2

    .line 310
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 309
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    .line 314
    .end local v6    # "i":I
    :cond_2
    :goto_2
    return-wide v2
.end method

.method public getStartTime()J
    .locals 8

    .line 268
    const-wide v0, 0x7fffffffffffffffL

    .line 270
    .local v0, "startTime":J
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 271
    .local v2, "count":I
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 273
    .local v3, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 274
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    .line 275
    .local v5, "a":Landroid/view/animation/Animation;
    invoke-virtual {v5}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 273
    .end local v5    # "a":Landroid/view/animation/Animation;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 278
    .end local v4    # "i":I
    :cond_0
    return-wide v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 11
    .param p1, "currentTime"    # J
    .param p3, "t"    # Landroid/view/animation/Transformation;

    .line 370
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 371
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 372
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 374
    .local v2, "temp":Landroid/view/animation/Transformation;
    const/4 v3, 0x0

    .line 375
    .local v3, "more":Z
    const/4 v4, 0x0

    .line 376
    .local v4, "started":Z
    const/4 v5, 0x1

    .line 378
    .local v5, "ended":Z
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    .line 380
    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x1

    if-ltz v6, :cond_5

    .line 381
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/animation/Animation;

    .line 383
    .local v8, "a":Landroid/view/animation/Animation;
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 384
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getScaleFactor()F

    move-result v9

    invoke-virtual {v8, p1, p2, v2, v9}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v9, v10

    goto :goto_2

    :cond_1
    :goto_1
    move v9, v7

    :goto_2
    move v3, v9

    .line 385
    invoke-virtual {p3, v2}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 387
    if-nez v4, :cond_3

    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    move v9, v10

    goto :goto_4

    :cond_3
    :goto_3
    move v9, v7

    :goto_4
    move v4, v9

    .line 388
    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v5, :cond_4

    move v10, v7

    nop

    :cond_4
    move v5, v10

    .line 380
    .end local v8    # "a":Landroid/view/animation/Animation;
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 391
    .end local v6    # "i":I
    :cond_5
    if-eqz v4, :cond_7

    iget-boolean v6, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    if-nez v6, :cond_7

    .line 392
    iget-object v6, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v6, :cond_6

    .line 393
    iget-object v6, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v6, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 395
    :cond_6
    iput-boolean v7, p0, Landroid/view/animation/AnimationSet;->mStarted:Z

    .line 398
    :cond_7
    iget-boolean v6, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    if-eq v5, v6, :cond_9

    .line 399
    iget-object v6, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v6, :cond_8

    .line 400
    iget-object v6, p0, Landroid/view/animation/AnimationSet;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v6, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 402
    :cond_8
    iput-boolean v5, p0, Landroid/view/animation/AnimationSet;->mEnded:Z

    .line 405
    :cond_9
    return v3
.end method

.method public hasAlpha()Z
    .locals 4

    .line 182
    iget-boolean v0, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    if-eqz v0, :cond_1

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    .line 185
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 186
    .local v1, "count":I
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 188
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 189
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    .line 191
    goto :goto_1

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    .end local v1    # "count":I
    .end local v2    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    return v0
.end method

.method public initialize(IIII)V
    .locals 26
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    move-object/from16 v0, p0

    .line 425
    invoke-super/range {p0 .. p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 427
    iget v1, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 428
    .local v1, "durationSet":Z
    :goto_0
    iget v2, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 429
    .local v2, "fillAfterSet":Z
    :goto_1
    iget v5, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 430
    .local v5, "fillBeforeSet":Z
    :goto_2
    iget v6, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/4 v7, 0x4

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 431
    .local v6, "repeatModeSet":Z
    :goto_3
    iget v7, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v8, 0x10

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_4

    move v7, v4

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    .line 433
    .local v7, "shareInterpolator":Z
    :goto_4
    iget v8, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v9, 0x8

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_5

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    .line 436
    .local v4, "startOffsetSet":Z
    :goto_5
    if-eqz v7, :cond_6

    .line 437
    invoke-virtual/range {p0 .. p0}, Landroid/view/animation/AnimationSet;->ensureInterpolator()V

    .line 440
    :cond_6
    iget-object v8, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 441
    .local v8, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 443
    .local v9, "count":I
    iget-wide v10, v0, Landroid/view/animation/AnimationSet;->mDuration:J

    .line 444
    .local v10, "duration":J
    iget-boolean v12, v0, Landroid/view/animation/AnimationSet;->mFillAfter:Z

    .line 445
    .local v12, "fillAfter":Z
    iget-boolean v13, v0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    .line 446
    .local v13, "fillBefore":Z
    iget v14, v0, Landroid/view/animation/AnimationSet;->mRepeatMode:I

    .line 447
    .local v14, "repeatMode":I
    iget-object v15, v0, Landroid/view/animation/AnimationSet;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 448
    .local v15, "interpolator":Landroid/view/animation/Interpolator;
    move/from16 v17, v4

    iget-wide v3, v0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    .line 451
    .end local v4    # "startOffsetSet":Z
    .local v3, "startOffset":J
    .local v17, "startOffsetSet":Z
    move-wide/from16 v18, v3

    iget-object v3, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    .line 452
    .local v3, "storedOffsets":[J
    .local v18, "startOffset":J
    if-eqz v17, :cond_8

    .line 453
    if-eqz v3, :cond_7

    array-length v4, v3

    if-eq v4, v9, :cond_9

    .line 454
    :cond_7
    new-array v4, v9, [J

    iput-object v4, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    move-object v3, v4

    goto :goto_6

    .line 456
    :cond_8
    if-eqz v3, :cond_9

    .line 457
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    move-object v3, v4

    .line 460
    :cond_9
    :goto_6
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_7
    move/from16 v4, v16

    .end local v16    # "i":I
    .local v4, "i":I
    if-ge v4, v9, :cond_10

    .line 461
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/view/animation/Animation;

    .line 462
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz v1, :cond_a

    .line 463
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 465
    :cond_a
    if-eqz v2, :cond_b

    .line 466
    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 468
    :cond_b
    if-eqz v5, :cond_c

    .line 469
    invoke-virtual {v0, v13}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 471
    :cond_c
    if-eqz v6, :cond_d

    .line 472
    invoke-virtual {v0, v14}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 474
    :cond_d
    if-eqz v7, :cond_e

    .line 475
    invoke-virtual {v0, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 477
    :cond_e
    if-eqz v17, :cond_f

    .line 478
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v20

    .line 479
    .local v20, "offset":J
    move/from16 v22, v1

    move/from16 v23, v2

    add-long v1, v20, v18

    .end local v1    # "durationSet":Z
    .end local v2    # "fillAfterSet":Z
    .local v22, "durationSet":Z
    .local v23, "fillAfterSet":Z
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 480
    aput-wide v20, v3, v4

    .end local v20    # "offset":J
    goto :goto_8

    .line 482
    .end local v22    # "durationSet":Z
    .end local v23    # "fillAfterSet":Z
    .restart local v1    # "durationSet":Z
    .restart local v2    # "fillAfterSet":Z
    :cond_f
    move/from16 v22, v1

    move/from16 v23, v2

    .end local v1    # "durationSet":Z
    .end local v2    # "fillAfterSet":Z
    .restart local v22    # "durationSet":Z
    .restart local v23    # "fillAfterSet":Z
    :goto_8
    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v24, v3

    move/from16 v25, v5

    move/from16 v3, p3

    move/from16 v5, p4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 460
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v3    # "storedOffsets":[J
    .end local v5    # "fillBeforeSet":Z
    .local v24, "storedOffsets":[J
    .local v25, "fillBeforeSet":Z
    add-int/lit8 v16, v4, 0x1

    .end local v4    # "i":I
    .restart local v16    # "i":I
    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v5, v25

    move-object/from16 v0, p0

    goto :goto_7

    .line 484
    .end local v16    # "i":I
    .end local v22    # "durationSet":Z
    .end local v23    # "fillAfterSet":Z
    .end local v24    # "storedOffsets":[J
    .end local v25    # "fillBeforeSet":Z
    .restart local v1    # "durationSet":Z
    .restart local v2    # "fillAfterSet":Z
    .restart local v3    # "storedOffsets":[J
    .restart local v5    # "fillBeforeSet":Z
    :cond_10
    move/from16 v22, v1

    move/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v25, v5

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    .end local v1    # "durationSet":Z
    .end local v2    # "fillAfterSet":Z
    .end local v3    # "storedOffsets":[J
    .end local v5    # "fillBeforeSet":Z
    .restart local v22    # "durationSet":Z
    .restart local v23    # "fillAfterSet":Z
    .restart local v24    # "storedOffsets":[J
    .restart local v25    # "fillBeforeSet":Z
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 338
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mPreviousRegion:Landroid/graphics/RectF;

    .line 339
    .local v0, "region":Landroid/graphics/RectF;
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 340
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 342
    iget-boolean v1, p0, Landroid/view/animation/AnimationSet;->mFillBefore:Z

    if-eqz v1, :cond_3

    .line 343
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 344
    .local v1, "count":I
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 345
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    iget-object v3, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 347
    .local v3, "temp":Landroid/view/animation/Transformation;
    iget-object v4, p0, Landroid/view/animation/AnimationSet;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 349
    .local v4, "previousTransformation":Landroid/view/animation/Transformation;
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_3

    .line 350
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/animation/Animation;

    .line 351
    .local v6, "a":Landroid/view/animation/Animation;
    invoke-virtual {v6}, Landroid/view/animation/Animation;->isFillEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getFillBefore()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 352
    :cond_0
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 353
    iget-object v7, v6, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 354
    .local v7, "interpolator":Landroid/view/animation/Interpolator;
    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    goto :goto_1

    .line 355
    :cond_1
    nop

    .line 354
    :goto_1
    invoke-virtual {v6, v8, v3}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 356
    invoke-virtual {v4, v3}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 349
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v7    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 360
    .end local v1    # "count":I
    .end local v2    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v3    # "temp":Landroid/view/animation/Transformation;
    .end local v4    # "previousTransformation":Landroid/view/animation/Transformation;
    .end local v5    # "i":I
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 0

    .line 488
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    .line 489
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->restoreChildrenStartOffset()V

    .line 490
    return-void
.end method

.method restoreChildrenStartOffset()V
    .locals 7

    .line 496
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    .line 497
    .local v0, "offsets":[J
    if-nez v0, :cond_0

    return-void

    .line 499
    :cond_0
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 500
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 502
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 503
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    aget-wide v5, v0, v3

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 502
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 505
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public restrictDuration(J)V
    .locals 4
    .param p1, "durationMillis"    # J

    .line 283
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 285
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 286
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 288
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 289
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public scaleCurrentDuration(F)V
    .locals 4
    .param p1, "scale"    # F

    .line 413
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 414
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 415
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 416
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public setDuration(J)V
    .locals 4
    .param p1, "durationMillis"    # J

    .line 207
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 208
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 209
    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mStartOffset:J

    iget-wide v2, p0, Landroid/view/animation/AnimationSet;->mDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    .line 210
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 1
    .param p1, "fillAfter"    # Z

    .line 155
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 156
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 157
    return-void
.end method

.method public setFillBefore(Z)V
    .locals 1
    .param p1, "fillBefore"    # Z

    .line 161
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 162
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 163
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .line 167
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 168
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 169
    return-void
.end method

.method public setStartOffset(J)V
    .locals 1
    .param p1, "startOffset"    # J

    .line 173
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 174
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 175
    return-void
.end method

.method public setStartTime(J)V
    .locals 4
    .param p1, "startTimeMillis"    # J

    .line 255
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 257
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 258
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 260
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 261
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    .line 262
    .local v3, "a":Landroid/view/animation/Animation;
    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 260
    .end local v3    # "a":Landroid/view/animation/Animation;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public willChangeBounds()Z
    .locals 2

    .line 522
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 2

    .line 517
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
