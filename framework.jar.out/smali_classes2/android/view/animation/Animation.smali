.class public abstract Landroid/view/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/Animation$AnimationListener;,
        Landroid/view/animation/Animation$Description;,
        Landroid/view/animation/Animation$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final INFINITE:I = -0x1

.field public static final RELATIVE_TO_PARENT:I = 0x2

.field public static final RELATIVE_TO_SELF:I = 0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field public static final START_ON_FIRST_FRAME:I = -0x1

.field public static final ZORDER_BOTTOM:I = -0x1

.field public static final ZORDER_NORMAL:I = 0x0

.field public static final ZORDER_TOP:I = 0x1


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private mBackgroundColor:I

.field mCycleFlip:Z

.field private mDetachWallpaper:Z

.field mDuration:J

.field mEnded:Z

.field mFillAfter:Z

.field mFillBefore:Z

.field mFillEnabled:Z

.field mInitialized:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mListenerHandler:Landroid/os/Handler;

.field private mMore:Z

.field private mOnEnd:Ljava/lang/Runnable;

.field private mOnRepeat:Ljava/lang/Runnable;

.field private mOnStart:Ljava/lang/Runnable;

.field private mOneMoreTime:Z

.field mPreviousRegion:Landroid/graphics/RectF;

.field mPreviousTransformation:Landroid/view/animation/Transformation;

.field mRegion:Landroid/graphics/RectF;

.field mRepeatCount:I

.field mRepeatMode:I

.field mRepeated:I

.field private mScaleFactor:F

.field private mShowWallpaper:Z

.field mStartOffset:J

.field mStartTime:J

.field mStarted:Z

.field mTransformation:Landroid/view/animation/Transformation;

.field private mZAdjustment:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 112
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 118
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 124
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 137
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 142
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 147
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 164
    iput v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 169
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 176
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 202
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 207
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 211
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 212
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 214
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 215
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 216
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 217
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 219
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 231
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 112
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 118
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 124
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 137
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 142
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 147
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 164
    iput v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 169
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 176
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 202
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 207
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 211
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 212
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 214
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 215
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 216
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 217
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 219
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 242
    sget-object v2, Lcom/android/internal/R$styleable;->Animation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 244
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 245
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 247
    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    const/16 v4, 0x9

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 248
    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 249
    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 251
    iget v3, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 252
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 254
    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 256
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    .line 258
    nop

    .line 259
    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 258
    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 260
    nop

    .line 261
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 260
    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setShowWallpaper(Z)V

    .line 263
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 265
    .local v0, "resID":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 267
    if-lez v0, :cond_0

    .line 268
    invoke-virtual {p0, p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 271
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 272
    return-void
.end method

.method private fireAnimationEnd()V
    .locals 2

    .line 959
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 961
    :cond_0
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 963
    :cond_1
    :goto_0
    return-void
.end method

.method private fireAnimationRepeat()V
    .locals 2

    .line 952
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 954
    :cond_0
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 956
    :cond_1
    :goto_0
    return-void
.end method

.method private fireAnimationStart()V
    .locals 2

    .line 945
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 947
    :cond_0
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 949
    :cond_1
    :goto_0
    return-void
.end method

.method private isCanceled()Z
    .locals 4

    .line 941
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 1013
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 312
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_0

    .line 313
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 315
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 318
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 320
    return-void
.end method

.method protected clone()Landroid/view/animation/Animation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 276
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 277
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 278
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 279
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 280
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 281
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .locals 4

    .line 856
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public detach()V
    .locals 1

    .line 326
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 328
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 329
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 331
    :cond_0
    return-void
.end method

.method protected ensureInterpolator()V
    .locals 1

    .line 844
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 845
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 847
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1093
    :try_start_0
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1098
    nop

    .line 1099
    return-void

    .line 1097
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 783
    iget v0, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    return v0
.end method

.method public getDetachWallpaper()Z
    .locals 1

    .line 791
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 708
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    return-wide v0
.end method

.method public getFillAfter()Z
    .locals 1

    .line 763
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    return v0
.end method

.method public getFillBefore()Z
    .locals 1

    .line 752
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 687
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "invalidate"    # Landroid/graphics/RectF;
    .param p6, "transformation"    # Landroid/view/animation/Transformation;

    .line 1052
    iget-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 1053
    .local v0, "tempRegion":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 1055
    .local v1, "previousRegion":Landroid/graphics/RectF;
    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-virtual {p5, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1056
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1058
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p5, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 1059
    invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1060
    invoke-virtual {p5, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1062
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1064
    iget-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 1065
    .local v2, "tempTransformation":Landroid/view/animation/Transformation;
    iget-object v3, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1067
    .local v3, "previousTransformation":Landroid/view/animation/Transformation;
    invoke-virtual {v2, p6}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1068
    invoke-virtual {p6, v3}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1069
    invoke-virtual {v3, v2}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1070
    return-void
.end method

.method public getRepeatCount()I
    .locals 1

    .line 739
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 728
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    return v0
.end method

.method protected getScaleFactor()F
    .locals 1

    .line 652
    iget v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    return v0
.end method

.method public getShowWallpaper()Z
    .locals 1

    .line 801
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mShowWallpaper:Z

    return v0
.end method

.method public getStartOffset()J
    .locals 2

    .line 718
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 698
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    return-wide v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 17
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 870
    iget-wide v3, v0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 871
    iput-wide v1, v0, Landroid/view/animation/Animation;->mStartTime:J

    .line 874
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v3

    .line 875
    .local v3, "startOffset":J
    iget-wide v7, v0, Landroid/view/animation/Animation;->mDuration:J

    .line 877
    .local v7, "duration":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v9, :cond_1

    .line 878
    iget-wide v12, v0, Landroid/view/animation/Animation;->mStartTime:J

    add-long/2addr v12, v3

    sub-long v12, v1, v12

    long-to-float v9, v12

    long-to-float v12, v7

    div-float/2addr v9, v12

    .local v9, "normalizedTime":F
    goto :goto_0

    .line 882
    .end local v9    # "normalizedTime":F
    :cond_1
    iget-wide v12, v0, Landroid/view/animation/Animation;->mStartTime:J

    cmp-long v9, v1, v12

    if-gez v9, :cond_2

    move v9, v10

    goto :goto_0

    :cond_2
    move v9, v11

    .line 885
    .restart local v9    # "normalizedTime":F
    :goto_0
    cmpl-float v12, v9, v11

    const/4 v14, 0x1

    if-gez v12, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/view/animation/Animation;->isCanceled()Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v12, v14

    .line 886
    .local v12, "expired":Z
    :goto_2
    if-nez v12, :cond_5

    move v15, v14

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    iput-boolean v15, v0, Landroid/view/animation/Animation;->mMore:Z

    .line 888
    iget-boolean v15, v0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-nez v15, :cond_6

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v15, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 890
    :cond_6
    cmpl-float v15, v9, v10

    if-gez v15, :cond_7

    iget-boolean v15, v0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v15, :cond_8

    :cond_7
    cmpg-float v15, v9, v11

    if-lez v15, :cond_9

    iget-boolean v15, v0, Landroid/view/animation/Animation;->mFillAfter:Z

    if-eqz v15, :cond_8

    goto :goto_4

    .line 909
    :cond_8
    move-object/from16 v11, p3

    goto :goto_5

    .line 891
    :cond_9
    :goto_4
    iget-boolean v15, v0, Landroid/view/animation/Animation;->mStarted:Z

    if-nez v15, :cond_a

    .line 892
    invoke-direct/range {p0 .. p0}, Landroid/view/animation/Animation;->fireAnimationStart()V

    .line 893
    iput-boolean v14, v0, Landroid/view/animation/Animation;->mStarted:Z

    .line 894
    sget-boolean v15, Landroid/view/animation/Animation$NoImagePreloadHolder;->USE_CLOSEGUARD:Z

    if-eqz v15, :cond_a

    .line 895
    iget-object v15, v0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    const-string v13, "cancel or detach or getTransformation"

    invoke-virtual {v15, v13}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 899
    :cond_a
    iget-boolean v13, v0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-eqz v13, :cond_b

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v13, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 901
    :cond_b
    iget-boolean v10, v0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-eqz v10, :cond_c

    .line 902
    sub-float/2addr v11, v9

    .line 905
    .end local v9    # "normalizedTime":F
    .local v11, "normalizedTime":F
    move v9, v11

    .end local v11    # "normalizedTime":F
    .restart local v9    # "normalizedTime":F
    :cond_c
    iget-object v10, v0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    .line 906
    .local v10, "interpolatedTime":F
    move-object/from16 v11, p3

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 909
    .end local v10    # "interpolatedTime":F
    :goto_5
    if-eqz v12, :cond_11

    .line 910
    iget v10, v0, Landroid/view/animation/Animation;->mRepeatCount:I

    iget v13, v0, Landroid/view/animation/Animation;->mRepeated:I

    if-eq v10, v13, :cond_10

    invoke-direct/range {p0 .. p0}, Landroid/view/animation/Animation;->isCanceled()Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_6

    .line 917
    :cond_d
    iget v10, v0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-lez v10, :cond_e

    .line 918
    iget v10, v0, Landroid/view/animation/Animation;->mRepeated:I

    add-int/2addr v10, v14

    iput v10, v0, Landroid/view/animation/Animation;->mRepeated:I

    .line 921
    :cond_e
    iget v10, v0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/4 v13, 0x2

    if-ne v10, v13, :cond_f

    .line 922
    iget-boolean v10, v0, Landroid/view/animation/Animation;->mCycleFlip:Z

    xor-int/2addr v10, v14

    iput-boolean v10, v0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 925
    :cond_f
    iput-wide v5, v0, Landroid/view/animation/Animation;->mStartTime:J

    .line 926
    iput-boolean v14, v0, Landroid/view/animation/Animation;->mMore:Z

    .line 928
    invoke-direct/range {p0 .. p0}, Landroid/view/animation/Animation;->fireAnimationRepeat()V

    goto :goto_7

    .line 911
    :cond_10
    :goto_6
    iget-boolean v5, v0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v5, :cond_11

    .line 912
    iput-boolean v14, v0, Landroid/view/animation/Animation;->mEnded:Z

    .line 913
    iget-object v5, v0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v5}, Ldalvik/system/CloseGuard;->close()V

    .line 914
    invoke-direct/range {p0 .. p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 932
    :cond_11
    :goto_7
    iget-boolean v5, v0, Landroid/view/animation/Animation;->mMore:Z

    if-nez v5, :cond_12

    iget-boolean v5, v0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    if-eqz v5, :cond_12

    .line 933
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 934
    return v14

    .line 937
    :cond_12
    iget-boolean v5, v0, Landroid/view/animation/Animation;->mMore:Z

    return v5
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 1
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;
    .param p4, "scale"    # F

    .line 979
    iput p4, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 980
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    return v0
.end method

.method public getZAdjustment()I
    .locals 1

    .line 775
    iget v0, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    .line 1107
    const/4 v0, 0x0

    return v0
.end method

.method public hasEnded()Z
    .locals 1

    .line 998
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    return v0
.end method

.method public hasStarted()Z
    .locals 1

    .line 989
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    return v0
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .line 359
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 361
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1081
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 1082
    .local v0, "region":Landroid/graphics/RectF;
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1084
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 1085
    iget-boolean v1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v1, :cond_0

    .line 1086
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1087
    .local v1, "previousTransformation":Landroid/view/animation/Transformation;
    iget-object v2, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 1089
    .end local v1    # "previousTransformation":Landroid/view/animation/Transformation;
    :cond_0
    return-void
.end method

.method public isFillEnabled()Z
    .locals 1

    .line 569
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .line 290
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 291
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 293
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 294
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 296
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 298
    return-void
.end method

.method protected resolveSize(IFII)F
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # F
    .param p3, "size"    # I
    .param p4, "parentSize"    # I

    .line 1027
    packed-switch p1, :pswitch_data_0

    .line 1035
    return p2

    .line 1033
    :pswitch_0
    int-to-float v0, p4

    mul-float/2addr v0, p2

    return v0

    .line 1031
    :pswitch_1
    int-to-float v0, p3

    mul-float/2addr v0, p2

    return v0

    .line 1029
    :pswitch_2
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public restrictDuration(J)V
    .locals 8
    .param p1, "durationMillis"    # J

    .line 458
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    cmp-long v0, v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-lez v0, :cond_0

    .line 459
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 460
    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 461
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 462
    return-void

    .line 465
    :cond_0
    iget-wide v4, p0, Landroid/view/animation/Animation;->mDuration:J

    iget-wide v6, p0, Landroid/view/animation/Animation;->mStartOffset:J

    add-long/2addr v4, v6

    .line 466
    .local v4, "dur":J
    cmp-long v0, v4, p1

    if-lez v0, :cond_1

    .line 467
    iget-wide v6, p0, Landroid/view/animation/Animation;->mStartOffset:J

    sub-long v6, p1, v6

    iput-wide v6, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 468
    move-wide v4, p1

    .line 471
    :cond_1
    iget-wide v6, p0, Landroid/view/animation/Animation;->mDuration:J

    cmp-long v0, v6, v2

    if-gtz v0, :cond_2

    .line 472
    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 473
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 474
    return-void

    .line 479
    :cond_2
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v0

    cmp-long v0, v2, p1

    if-gtz v0, :cond_3

    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v0

    mul-long/2addr v2, v4

    cmp-long v0, v2, p1

    if-lez v0, :cond_4

    .line 483
    :cond_3
    div-long v2, p1, v4

    long-to-int v0, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 484
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-gez v0, :cond_4

    .line 485
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 488
    :cond_4
    return-void
.end method

.method public scaleCurrentDuration(F)V
    .locals 2
    .param p1, "scale"    # F

    .line 496
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 497
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 498
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 836
    iput-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 837
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "bg"    # I

    .line 639
    iput p1, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    .line 640
    return-void
.end method

.method public setDetachWallpaper(Z)V
    .locals 0
    .param p1, "detachWallpaper"    # Z

    .line 665
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 666
    return-void
.end method

.method public setDuration(J)V
    .locals 2
    .param p1, "durationMillis"    # J

    .line 441
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 444
    iput-wide p1, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 445
    return-void

    .line 442
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFillAfter(Z)V
    .locals 0
    .param p1, "fillAfter"    # Z

    .line 618
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 619
    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0
    .param p1, "fillBefore"    # Z

    .line 602
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 603
    return-void
.end method

.method public setFillEnabled(Z)V
    .locals 0
    .param p1, "fillEnabled"    # Z

    .line 584
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 585
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .line 404
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 405
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "i"    # Landroid/view/animation/Interpolator;

    .line 415
    iput-object p1, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 416
    return-void
.end method

.method public setListenerHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 369
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Landroid/view/animation/Animation$1;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$1;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    .line 377
    new-instance v0, Landroid/view/animation/Animation$2;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$2;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    .line 384
    new-instance v0, Landroid/view/animation/Animation$3;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$3;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    .line 392
    :cond_0
    iput-object p1, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 393
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "repeatCount"    # I

    .line 556
    if-gez p1, :cond_0

    .line 557
    const/4 p1, -0x1

    .line 559
    :cond_0
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 560
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .line 543
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 544
    return-void
.end method

.method public setShowWallpaper(Z)V
    .locals 0
    .param p1, "showWallpaper"    # Z

    .line 677
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mShowWallpaper:Z

    .line 678
    return-void
.end method

.method public setStartOffset(J)V
    .locals 0
    .param p1, "startOffset"    # J

    .line 428
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 429
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTimeMillis"    # J

    .line 511
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 513
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 514
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 516
    return-void
.end method

.method public setZAdjustment(I)V
    .locals 0
    .param p1, "zAdjustment"    # I

    .line 629
    iput p1, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    .line 630
    return-void
.end method

.method public start()V
    .locals 2

    .line 523
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 524
    return-void
.end method

.method public startNow()V
    .locals 2

    .line 531
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 532
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .line 825
    const/4 v0, 0x1

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .line 813
    const/4 v0, 0x1

    return v0
.end method
