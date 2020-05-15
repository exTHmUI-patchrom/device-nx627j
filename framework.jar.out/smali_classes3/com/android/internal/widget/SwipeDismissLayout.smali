.class public Lcom/android/internal/widget/SwipeDismissLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeDismissLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;,
        Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;,
        Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;
    }
.end annotation


# static fields
.field private static final MAX_DIST_THRESHOLD:F = 0.33f

.field private static final MIN_DIST_THRESHOLD:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "SwipeDismissLayout"


# instance fields
.field private mActiveTouchId:I

.field private mActivityTranslucencyConverted:Z

.field private mBlockGesture:Z

.field private mDiscardIntercept:Z

.field private final mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

.field private mDismissable:Z

.field private mDismissed:Z

.field private mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

.field private mDownX:F

.field private mDownY:F

.field private mIsWindowNativelyTranslucent:Z

.field private mLastX:F

.field private mMinFlingVelocity:I

.field private mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

.field private mScreenOffFilter:Landroid/content/IntentFilter;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSlop:I

.field private mSwiping:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 86
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 98
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 86
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 86
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 108
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SwipeDismissLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .line 44
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .line 44
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->dismiss()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .line 44
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SwipeDismissLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/SwipeDismissLayout;
    .param p1, "x1"    # F

    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->setProgress(F)V

    return-void
.end method

.method private checkGesture(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->isAnimating()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    .line 423
    :cond_0
    return-void
.end method

.method private dismiss()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;->onDismissed(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 292
    :cond_0
    return-void
.end method

.method private findActivity()Landroid/app/Activity;
    .locals 2

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 431
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 432
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 433
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 435
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 437
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 113
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    .line 114
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 117
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mIsWindowNativelyTranslucent:Z

    .line 119
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    return-void
.end method

.method private progressToAlpha(F)F
    .locals 2
    .param p1, "progress"    # F

    .line 426
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    return v1
.end method

.method private resetMembers()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 314
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    .line 316
    const/high16 v1, -0x31000000

    iput v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    .line 317
    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 319
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 320
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    .line 321
    return-void
.end method

.method private setProgress(F)V
    .locals 2
    .param p1, "deltaX"    # F

    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->progressToAlpha(F)F

    move-result v1

    .line 283
    invoke-interface {v0, p0, v1, p1}, Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;->onSwipeProgressChanged(Lcom/android/internal/widget/SwipeDismissLayout;FF)V

    .line 286
    :cond_0
    return-void
.end method

.method private updateDismiss(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float/2addr v0, v1

    .line 349
    .local v0, "deltaX":F
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 350
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 351
    .local v1, "xVelocity":F
    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    const/high16 v3, -0x31000000

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-float v2, v2

    div-float v1, v0, v2

    .line 356
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    if-nez v2, :cond_3

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, -0x41947ae0    # -0.23000002f

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const v4, 0x3ea8f5c3    # 0.33f

    add-float/2addr v3, v4

    .line 360
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    .line 359
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    .line 365
    .local v2, "distanceThreshold":F
    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    cmpl-float v3, v3, v4

    if-gez v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_3

    .line 367
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 371
    .end local v2    # "distanceThreshold":F
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-eqz v2, :cond_4

    .line 373
    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    .line 374
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 377
    :cond_4
    return-void
.end method

.method private updateSwiping(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 324
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 325
    .local v0, "oldSwiping":Z
    iget-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-nez v1, :cond_2

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float/2addr v1, v2

    .line 327
    .local v1, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    sub-float/2addr v2, v3

    .line 328
    .local v2, "deltaY":F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    iget v5, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 329
    iget v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    goto :goto_0

    .line 331
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 335
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 337
    iget-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mIsWindowNativelyTranslucent:Z

    if-nez v1, :cond_3

    .line 338
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->findActivity()Landroid/app/Activity;

    move-result-object v1

    .line 339
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_3

    .line 340
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 344
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_3
    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZFFF)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F

    move-object v0, p1

    .line 391
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 392
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 393
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 394
    .local v3, "scrollX":I
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 395
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 396
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 397
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 398
    .local v13, "child":Landroid/view/View;
    int-to-float v7, v3

    add-float v7, p4, v7

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    int-to-float v7, v3

    add-float v7, p4, v7

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    int-to-float v7, v4

    add-float v7, p5, v7

    .line 399
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    int-to-float v7, v4

    add-float v7, p5, v7

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    const/4 v9, 0x1

    int-to-float v7, v3

    add-float v7, p4, v7

    .line 400
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float v11, v7, v8

    int-to-float v7, v4

    add-float v7, p5, v7

    .line 401
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float v12, v7, v8

    .line 400
    move-object v7, p0

    move-object v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/widget/SwipeDismissLayout;->canScroll(Landroid/view/View;ZFFF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 402
    return v2

    .line 396
    .end local v13    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 407
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    move/from16 v3, p3

    neg-float v4, v3

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_2
    move/from16 v3, p3

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected cancel()V
    .locals 2

    .line 295
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mIsWindowNativelyTranslucent:Z

    if-nez v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->findActivity()Landroid/app/Activity;

    move-result-object v0

    .line 297
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v0}, Landroid/app/Activity;->convertFromTranslucent()V

    .line 299
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 302
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;->onSwipeCancelled(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 305
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 132
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 134
    :try_start_0
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ReceiverCallNotAllowedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/content/ReceiverCallNotAllowedException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    .end local v0    # "e":Landroid/content/ReceiverCallNotAllowedException;
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 164
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->checkGesture(Landroid/view/MotionEvent;)V

    .line 169
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 170
    return v1

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    if-nez v0, :cond_1

    .line 173
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 196
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 197
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 198
    .local v2, "pointerId":I
    iget v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    if-ne v2, v4, :cond_6

    .line 200
    if-nez v0, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 201
    .local v4, "newActionIndex":I
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    .line 202
    .end local v4    # "newActionIndex":I
    goto/16 :goto_1

    .line 192
    .end local v0    # "actionIndex":I
    .end local v2    # "pointerId":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 193
    .restart local v0    # "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    .line 194
    goto/16 :goto_1

    .line 211
    .end local v0    # "actionIndex":I
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    if-eqz v0, :cond_3

    .line 212
    goto :goto_1

    .line 215
    :cond_3
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 216
    .local v0, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    .line 217
    const-string v2, "SwipeDismissLayout"

    const-string v4, "Invalid pointer index: ignoring."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    .line 219
    goto :goto_1

    .line 221
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float/2addr v4, v5

    .line 222
    .local v4, "dx":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 223
    .local v5, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 224
    .local v12, "y":F
    cmpl-float v2, v4, v2

    if-eqz v2, :cond_5

    const/4 v8, 0x0

    move-object v6, p0

    move-object v7, p0

    move v9, v4

    move v10, v5

    move v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/SwipeDismissLayout;->canScroll(Landroid/view/View;ZFFF)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    iput-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    .line 226
    goto :goto_1

    .line 228
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateSwiping(Landroid/view/MotionEvent;)V

    .end local v0    # "pointerIndex":I
    .end local v4    # "dx":F
    .end local v5    # "x":F
    .end local v12    # "y":F
    goto :goto_1

    .line 207
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    .line 208
    goto :goto_1

    .line 183
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    .line 186
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    .line 187
    const-string v0, "int1"

    invoke-static {v0}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 189
    nop

    .line 232
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v3

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 237
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->checkGesture(Landroid/view/MotionEvent;)V

    .line 238
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 239
    return v1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    if-nez v0, :cond_1

    goto :goto_2

    .line 248
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 265
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    .line 266
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    .line 267
    goto :goto_1

    .line 270
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    .line 272
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateSwiping(Landroid/view/MotionEvent;)V

    .line 273
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-eqz v0, :cond_4

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SwipeDismissLayout;->setProgress(F)V

    goto :goto_1

    .line 252
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateDismiss(Landroid/view/MotionEvent;)V

    .line 253
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->animateDismissal(F)V

    goto :goto_0

    .line 255
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    const/high16 v2, -0x31000000

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->animateRecovery(F)V

    .line 261
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    .line 262
    nop

    .line 278
    :cond_4
    :goto_1
    return v1

    .line 242
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDismissable(Z)V
    .locals 1
    .param p1, "dismissable"    # Z

    .line 411
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    .line 413
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    .line 416
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 417
    return-void
.end method

.method public setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    .line 123
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    .line 124
    return-void
.end method

.method public setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    .line 127
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    .line 128
    return-void
.end method
