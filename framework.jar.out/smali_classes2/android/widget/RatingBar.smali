.class public Landroid/widget/RatingBar;
.super Landroid/widget/AbsSeekBar;
.source "RatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RatingBar$OnRatingBarChangeListener;
    }
.end annotation


# instance fields
.field private mNumStars:I

.field private mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field private mProgressOnStartTracking:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 119
    const v0, 0x101007c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    .line 91
    sget-object v0, Lcom/android/internal/R$styleable;->RatingBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/widget/RatingBar;->mNumStars:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 94
    .local v1, "numStars":I
    iget-boolean v2, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 95
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 96
    .local v3, "rating":F
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 97
    .local v2, "stepSize":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    if-lez v1, :cond_0

    iget v4, p0, Landroid/widget/RatingBar;->mNumStars:I

    if-eq v1, v4, :cond_0

    .line 100
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 103
    :cond_0
    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-ltz v5, :cond_1

    .line 104
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setStepSize(F)V

    goto :goto_0

    .line 106
    :cond_1
    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {p0, v5}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 109
    :goto_0
    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    .line 110
    invoke-virtual {p0, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 115
    :cond_2
    const v4, 0x3f19999a    # 0.6f

    iput v4, p0, Landroid/widget/RatingBar;->mTouchProgressOffset:F

    .line 116
    return-void
.end method

.method private getProgressPerStar()F
    .locals 2

    .line 243
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    .line 246
    :cond_0
    return v1
.end method

.method private updateSecondaryProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .line 277
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v0

    .line 278
    .local v0, "ratio":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 279
    int-to-float v1, p1

    div-float/2addr v1, v0

    .line 280
    .local v1, "progressInStars":F
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 281
    .local v2, "secondaryProgress":I
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setSecondaryProgress(I)V

    .line 283
    .end local v1    # "progressInStars":F
    .end local v2    # "secondaryProgress":I
    :cond_0
    return-void
.end method


# virtual methods
.method canUserSetProgress()Z
    .locals 1

    .line 352
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RatingBar;->isIndicator()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method dispatchRatingChange(Z)V
    .locals 2
    .param p1, "fromUser"    # Z

    .line 319
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    .line 323
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 337
    const-class v0, Landroid/widget/RatingBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .line 253
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    return-object v0
.end method

.method public getNumStars()I
    .locals 1

    .line 192
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    return v0
.end method

.method public getOnRatingBarChangeListener()Landroid/widget/RatingBar$OnRatingBarChangeListener;
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    return-object v0
.end method

.method public getRating()F
    .locals 2

    .line 210
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getStepSize()F
    .locals 2

    .line 236
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isIndicator()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 343
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 345
    invoke-virtual {p0}, Landroid/widget/RatingBar;->canUserSetProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 348
    :cond_0
    return-void
.end method

.method onKeyChange()V
    .locals 1

    .line 314
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 316
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 287
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onMeasure(II)V

    .line 289
    iget v0, p0, Landroid/widget/RatingBar;->mSampleWidth:I

    if-lez v0, :cond_0

    .line 290
    iget v0, p0, Landroid/widget/RatingBar;->mSampleWidth:I

    iget v1, p0, Landroid/widget/RatingBar;->mNumStars:I

    mul-int/2addr v0, v1

    .line 291
    .local v0, "width":I
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/RatingBar;->resolveSizeAndState(III)I

    move-result v1

    .line 292
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v2

    .line 291
    invoke-virtual {p0, v1, v2}, Landroid/widget/RatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .end local v0    # "width":I
    :cond_0
    monitor-exit p0

    return-void

    .line 286
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/RatingBar;
    throw p1
.end method

.method onProgressRefresh(FZI)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .line 258
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;->onProgressRefresh(FZI)V

    .line 261
    invoke-direct {p0, p3}, Landroid/widget/RatingBar;->updateSecondaryProgress(I)V

    .line 263
    if-nez p2, :cond_0

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 267
    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .line 298
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    .line 300
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 301
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 2

    .line 305
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 307
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    if-eq v0, v1, :cond_0

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 310
    :cond_0
    return-void
.end method

.method public setIsIndicator(Z)V
    .locals 1
    .param p1, "isIndicator"    # Z

    .line 152
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    .line 153
    if-eqz p1, :cond_0

    .line 154
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setFocusable(I)V

    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setFocusable(I)V

    .line 158
    :goto_0
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 0
    .param p1, "max"    # I

    monitor-enter p0

    .line 328
    if-gtz p1, :cond_0

    .line 329
    monitor-exit p0

    return-void

    .line 332
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 327
    .end local p1    # "max":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/RatingBar;
    throw p1
.end method

.method public setNumStars(I)V
    .locals 0
    .param p1, "numStars"    # I

    .line 177
    if-gtz p1, :cond_0

    .line 178
    return-void

    .line 181
    :cond_0
    iput p1, p0, Landroid/widget/RatingBar;->mNumStars:I

    .line 184
    invoke-virtual {p0}, Landroid/widget/RatingBar;->requestLayout()V

    .line 185
    return-void
.end method

.method public setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RatingBar$OnRatingBarChangeListener;

    .line 132
    iput-object p1, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    .line 133
    return-void
.end method

.method public setRating(F)V
    .locals 1
    .param p1, "rating"    # F

    .line 201
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setProgress(I)V

    .line 202
    return-void
.end method

.method public setStepSize(F)V
    .locals 3
    .param p1, "stepSize"    # F

    .line 220
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 221
    return-void

    .line 224
    :cond_0
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 225
    .local v0, "newMax":F
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 226
    .local v1, "newProgress":I
    float-to-int v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setMax(I)V

    .line 227
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setProgress(I)V

    .line 228
    return-void
.end method
