.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnContextClickListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MIN_TIME:I

.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreNextUpEvent:Z

.field private mInContextClick:Z

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 225
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 226
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 227
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 228
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;

    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 364
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    nop

    .line 273
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 379
    if-eqz p3, :cond_1

    .line 380
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_1

    .line 382
    :cond_1
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 384
    :goto_1
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 385
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_2

    .line 386
    move-object v0, p2

    check-cast v0, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 388
    :cond_2
    instance-of v0, p2, Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v0, :cond_3

    .line 389
    move-object v0, p2

    check-cast v0, Landroid/view/GestureDetector$OnContextClickListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V

    .line 391
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    .line 392
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "unused"    # Z

    .line 409
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 410
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 349
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 331
    return-void
.end method

.method static synthetic access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .line 40
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .line 40
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/GestureDetector;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .line 40
    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .line 40
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/GestureDetector;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/GestureDetector;

    .line 40
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return v0
.end method

.method static synthetic access$502(Landroid/view/GestureDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/GestureDetector;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    return p1
.end method

.method private cancel()V
    .locals 2

    .line 728
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 729
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 731
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 734
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 735
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 736
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 737
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 738
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 739
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 740
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 741
    return-void
.end method

.method private cancelTaps()V
    .locals 2

    .line 744
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 745
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 746
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 748
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 749
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 750
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 751
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 752
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 753
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 754
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .line 776
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 777
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 778
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 779
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 780
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 413
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_1

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 420
    if-nez p1, :cond_0

    .line 422
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    .line 423
    .local v0, "touchSlop":I
    move v1, v0

    .line 424
    .local v1, "doubleTapTouchSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v2

    .line 426
    .local v2, "doubleTapSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 427
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0

    .line 429
    .end local v0    # "touchSlop":I
    .end local v1    # "doubleTapTouchSlop":I
    .end local v2    # "doubleTapSlop":I
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 430
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 431
    .local v1, "touchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v2

    .line 432
    .local v2, "doubleTapTouchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 433
    .local v3, "doubleTapSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 434
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 436
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    move v0, v1

    move v1, v2

    move v2, v3

    .end local v3    # "doubleTapSlop":I
    .local v0, "touchSlop":I
    .local v1, "doubleTapTouchSlop":I
    .local v2, "doubleTapSlop":I
    :goto_0
    mul-int v3, v0, v0

    iput v3, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 437
    mul-int v3, v1, v1

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 438
    mul-int v3, v2, v2

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 439
    return-void

    .line 414
    .end local v0    # "touchSlop":I
    .end local v1    # "doubleTapTouchSlop":I
    .end local v2    # "doubleTapSlop":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .line 758
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 759
    return v1

    .line 762
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 763
    .local v2, "deltaTime":J
    sget v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    sget v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_2

    .line 767
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v0, v4

    .line 768
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    .line 769
    .local v4, "deltaY":I
    nop

    .line 770
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v1

    .line 771
    .local v5, "isGeneratedGesture":Z
    :goto_0
    if-eqz v5, :cond_3

    move v7, v1

    goto :goto_1

    :cond_3
    iget v7, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 772
    .local v7, "slopSquare":I
    :goto_1
    mul-int v8, v0, v0

    mul-int v9, v4, v4

    add-int/2addr v8, v9

    if-ge v8, v7, :cond_4

    move v1, v6

    nop

    :cond_4
    return v1

    .line 764
    .end local v0    # "deltaX":I
    .end local v4    # "deltaY":I
    .end local v5    # "isGeneratedGesture":Z
    .end local v7    # "slopSquare":I
    :cond_5
    :goto_2
    return v1
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 697
    iget-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 701
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 702
    .local v0, "actionButton":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 717
    :pswitch_0
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v2, :cond_3

    if-eq v0, v3, :cond_1

    if-ne v0, v5, :cond_3

    .line 719
    :cond_1
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 720
    iput-boolean v4, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    goto :goto_0

    .line 704
    :pswitch_1
    iget-object v2, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v2, :cond_3

    if-eq v0, v3, :cond_2

    if-ne v0, v5, :cond_3

    .line 707
    :cond_2
    iget-object v2, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnContextClickListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 708
    iput-boolean v4, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 709
    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 710
    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    return v4

    .line 724
    :cond_3
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 491
    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 492
    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 495
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 497
    .local v2, "action":I
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 498
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 500
    :cond_1
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 502
    and-int/lit16 v4, v2, 0xff

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 504
    .local v4, "pointerUp":Z
    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    .line 505
    .local v5, "skipIndex":I
    :goto_1
    nop

    .line 506
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    move v7, v3

    .line 509
    .local v7, "isGeneratedGesture":Z
    :goto_2
    const/4 v8, 0x0

    .local v8, "sumX":F
    const/4 v9, 0x0

    .line 510
    .local v9, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 511
    .local v10, "count":I
    move v11, v9

    move v9, v8

    move v8, v3

    .local v8, "i":I
    .local v9, "sumX":F
    .local v11, "sumY":F
    :goto_3
    if-ge v8, v10, :cond_6

    .line 512
    if-ne v5, v8, :cond_5

    goto :goto_4

    .line 513
    :cond_5
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v9, v12

    .line 514
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    add-float/2addr v11, v12

    .line 511
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 516
    .end local v8    # "i":I
    :cond_6
    if-eqz v4, :cond_7

    add-int/lit8 v8, v10, -0x1

    goto :goto_5

    :cond_7
    move v8, v10

    .line 517
    .local v8, "div":I
    :goto_5
    int-to-float v12, v8

    div-float v12, v9, v12

    .line 518
    .local v12, "focusX":F
    int-to-float v13, v8

    div-float v13, v11, v13

    .line 520
    .local v13, "focusY":F
    const/4 v14, 0x0

    .line 522
    .local v14, "handled":Z
    and-int/lit16 v15, v2, 0xff

    const/16 v6, 0x3e8

    packed-switch v15, :pswitch_data_0

    .line 682
    :pswitch_0
    move/from16 v18, v2

    move/from16 v20, v4

    move/from16 v22, v5

    move/from16 v28, v7

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v7    # "isGeneratedGesture":Z
    .local v18, "action":I
    .local v20, "pointerUp":Z
    .local v22, "skipIndex":I
    .local v28, "isGeneratedGesture":Z
    goto/16 :goto_10

    .line 531
    .end local v18    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v22    # "skipIndex":I
    .end local v28    # "isGeneratedGesture":Z
    .restart local v2    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    .restart local v7    # "isGeneratedGesture":Z
    :pswitch_1
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 532
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 536
    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v15, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v15, v15

    invoke-virtual {v3, v6, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 538
    .local v3, "upIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 539
    .local v6, "id1":I
    iget-object v15, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v15

    .line 540
    .local v15, "x1":F
    move/from16 v18, v2

    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .end local v2    # "action":I
    .restart local v18    # "action":I
    invoke-virtual {v2, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    .line 541
    .local v2, "y1":F
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_6
    move/from16 v19, v16

    .end local v16    # "i":I
    .local v19, "i":I
    move/from16 v20, v4

    move/from16 v4, v19

    if-ge v4, v10, :cond_a

    .line 542
    .end local v19    # "i":I
    .local v4, "i":I
    .restart local v20    # "pointerUp":Z
    if-ne v4, v3, :cond_8

    .line 541
    move/from16 v24, v2

    move/from16 v21, v3

    move/from16 v22, v5

    move/from16 v23, v6

    goto :goto_7

    .line 544
    :cond_8
    move/from16 v21, v3

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 545
    .local v3, "id2":I
    .local v21, "upIndex":I
    move/from16 v22, v5

    iget-object v5, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .end local v5    # "skipIndex":I
    .restart local v22    # "skipIndex":I
    invoke-virtual {v5, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    mul-float/2addr v5, v15

    .line 546
    .local v5, "x":F
    move/from16 v23, v6

    iget-object v6, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .end local v6    # "id1":I
    .local v23, "id1":I
    invoke-virtual {v6, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    mul-float/2addr v6, v2

    .line 548
    .local v6, "y":F
    add-float v16, v5, v6

    .line 549
    .local v16, "dot":F
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_9

    .line 550
    move/from16 v24, v2

    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .end local v2    # "y1":F
    .local v24, "y1":F
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 551
    goto :goto_8

    .line 541
    .end local v3    # "id2":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v16    # "dot":F
    .end local v24    # "y1":F
    .restart local v2    # "y1":F
    :cond_9
    move/from16 v24, v2

    .end local v2    # "y1":F
    .restart local v24    # "y1":F
    :goto_7
    add-int/lit8 v16, v4, 0x1

    .end local v4    # "i":I
    .local v16, "i":I
    move/from16 v4, v20

    move/from16 v3, v21

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v2, v24

    goto :goto_6

    .line 554
    .end local v16    # "i":I
    .end local v21    # "upIndex":I
    .end local v22    # "skipIndex":I
    .end local v23    # "id1":I
    .end local v24    # "y1":F
    .restart local v2    # "y1":F
    .local v3, "upIndex":I
    .local v5, "skipIndex":I
    .local v6, "id1":I
    :cond_a
    move/from16 v24, v2

    move/from16 v21, v3

    move/from16 v22, v5

    move/from16 v23, v6

    .end local v2    # "y1":F
    .end local v3    # "upIndex":I
    .end local v5    # "skipIndex":I
    .end local v6    # "id1":I
    .restart local v21    # "upIndex":I
    .restart local v22    # "skipIndex":I
    .restart local v23    # "id1":I
    .restart local v24    # "y1":F
    :goto_8
    goto :goto_9

    .line 524
    .end local v15    # "x1":F
    .end local v18    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v21    # "upIndex":I
    .end local v22    # "skipIndex":I
    .end local v23    # "id1":I
    .end local v24    # "y1":F
    .local v2, "action":I
    .local v4, "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_2
    move/from16 v18, v2

    move/from16 v20, v4

    move/from16 v22, v5

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v18    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v22    # "skipIndex":I
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 525
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 527
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancelTaps()V

    .line 528
    goto :goto_9

    .line 678
    .end local v18    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v22    # "skipIndex":I
    .restart local v2    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_3
    move/from16 v18, v2

    move/from16 v20, v4

    move/from16 v22, v5

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v18    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v22    # "skipIndex":I
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto :goto_9

    .line 598
    .end local v18    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v22    # "skipIndex":I
    .restart local v2    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_4
    move/from16 v18, v2

    move/from16 v20, v4

    move/from16 v22, v5

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v18    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v22    # "skipIndex":I
    iget-boolean v2, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v2, :cond_c

    iget-boolean v2, v0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v2, :cond_b

    .line 599
    goto :goto_9

    .line 601
    :cond_b
    iget v2, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    sub-float/2addr v2, v12

    .line 602
    .local v2, "scrollX":F
    iget v4, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    sub-float/2addr v4, v13

    .line 603
    .local v4, "scrollY":F
    iget-boolean v5, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v5, :cond_d

    .line 605
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v14, v3

    .line 682
    .end local v2    # "scrollX":F
    .end local v4    # "scrollY":F
    .end local v7    # "isGeneratedGesture":Z
    .restart local v28    # "isGeneratedGesture":Z
    :cond_c
    :goto_9
    move/from16 v28, v7

    goto/16 :goto_10

    .line 606
    .end local v28    # "isGeneratedGesture":Z
    .restart local v2    # "scrollX":F
    .restart local v4    # "scrollY":F
    .restart local v7    # "isGeneratedGesture":Z
    :cond_d
    iget-boolean v5, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v5, :cond_12

    .line 607
    iget v5, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    sub-float v5, v12, v5

    float-to-int v5, v5

    .line 608
    .local v5, "deltaX":I
    iget v6, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    sub-float v6, v13, v6

    float-to-int v6, v6

    .line 609
    .local v6, "deltaY":I
    mul-int v15, v5, v5

    mul-int v19, v6, v6

    add-int v15, v15, v19

    .line 610
    .local v15, "distance":I
    if-eqz v7, :cond_e

    const/4 v3, 0x0

    goto :goto_a

    :cond_e
    iget v3, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 611
    .local v3, "slopSquare":I
    :goto_a
    if-le v15, v3, :cond_f

    .line 612
    move/from16 v25, v3

    iget-object v3, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .end local v3    # "slopSquare":I
    .local v25, "slopSquare":I
    move/from16 v26, v5

    iget-object v5, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .end local v5    # "deltaX":I
    .local v26, "deltaX":I
    invoke-interface {v3, v5, v1, v2, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    .line 613
    .end local v14    # "handled":Z
    .local v3, "handled":Z
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 614
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 615
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 616
    iget-object v5, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    invoke-virtual {v5, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 617
    iget-object v5, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 618
    iget-object v5, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 620
    move v14, v3

    goto :goto_b

    .end local v25    # "slopSquare":I
    .end local v26    # "deltaX":I
    .local v3, "slopSquare":I
    .restart local v5    # "deltaX":I
    .restart local v14    # "handled":Z
    :cond_f
    move/from16 v25, v3

    move/from16 v26, v5

    .end local v3    # "slopSquare":I
    .end local v5    # "deltaX":I
    .restart local v25    # "slopSquare":I
    .restart local v26    # "deltaX":I
    :goto_b
    if-eqz v7, :cond_10

    const/4 v3, 0x0

    goto :goto_c

    :cond_10
    iget v3, v0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 621
    .local v3, "doubleTapSlopSquare":I
    :goto_c
    if-le v15, v3, :cond_11

    .line 622
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 624
    .end local v3    # "doubleTapSlopSquare":I
    .end local v6    # "deltaY":I
    .end local v15    # "distance":I
    .end local v25    # "slopSquare":I
    .end local v26    # "deltaX":I
    :cond_11
    goto :goto_9

    :cond_12
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-gez v3, :cond_13

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_c

    .line 625
    :cond_13
    iget-object v3, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v5, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v5, v1, v2, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    .line 626
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 627
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    goto :goto_9

    .line 632
    .end local v18    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v22    # "skipIndex":I
    .local v2, "action":I
    .local v4, "pointerUp":Z
    .local v5, "skipIndex":I
    :pswitch_5
    move/from16 v18, v2

    move/from16 v20, v4

    move/from16 v22, v5

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v18    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v22    # "skipIndex":I
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 633
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 634
    .local v2, "currentUpEvent":Landroid/view/MotionEvent;
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v3, :cond_14

    .line 636
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v14, v3

    goto :goto_d

    .line 637
    :cond_14
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v3, :cond_15

    .line 638
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 639
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_d

    .line 640
    :cond_15
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v3, :cond_16

    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v3, :cond_16

    .line 641
    iget-object v3, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 642
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    if-eqz v3, :cond_18

    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v3, :cond_18

    .line 643
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_d

    .line 645
    :cond_16
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v3, :cond_18

    .line 648
    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 649
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 650
    .local v5, "pointerId":I
    iget v4, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 651
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    .line 652
    .local v4, "velocityY":F
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    .line 654
    .local v6, "velocityX":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-object/from16 v27, v3

    iget v3, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .local v27, "velocityTracker":Landroid/view/VelocityTracker;
    int-to-float v3, v3

    cmpl-float v3, v15, v3

    if-gtz v3, :cond_17

    .line 655
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v15, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v15, v15

    cmpl-float v3, v3, v15

    if-lez v3, :cond_18

    .line 656
    :cond_17
    iget-object v3, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v15, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v15, v1, v6, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    .line 659
    .end local v4    # "velocityY":F
    .end local v5    # "pointerId":I
    .end local v6    # "velocityX":F
    .end local v27    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_18
    :goto_d
    iget-object v3, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_19

    .line 660
    iget-object v3, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 663
    :cond_19
    iput-object v2, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 664
    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1a

    .line 667
    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 668
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 670
    :cond_1a
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 671
    iput-boolean v3, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 672
    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 673
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 674
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 675
    goto/16 :goto_9

    .line 557
    .end local v18    # "action":I
    .end local v20    # "pointerUp":Z
    .end local v22    # "skipIndex":I
    .local v2, "action":I
    .local v4, "pointerUp":Z
    .local v5, "skipIndex":I
    :pswitch_6
    move/from16 v18, v2

    move/from16 v20, v4

    move/from16 v22, v5

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v18    # "action":I
    .restart local v20    # "pointerUp":Z
    .restart local v22    # "skipIndex":I
    iget-object v2, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v2, :cond_1d

    .line 558
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 559
    .local v2, "hadTapMessage":Z
    if-eqz v2, :cond_1b

    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 560
    :cond_1b
    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_1c

    iget-object v3, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_1c

    if-eqz v2, :cond_1c

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v4, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 562
    invoke-direct {v0, v3, v4, v1}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 564
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 566
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v4}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v3, v14

    .line 568
    .end local v14    # "handled":Z
    .local v3, "handled":Z
    iget-object v4, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v4, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int v14, v3, v4

    .end local v3    # "handled":Z
    .restart local v14    # "handled":Z
    goto :goto_e

    .line 571
    :cond_1c
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    sget v4, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v4

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 575
    .end local v2    # "hadTapMessage":Z
    :cond_1d
    :goto_e
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 576
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 577
    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1e

    .line 578
    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 580
    :cond_1e
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 581
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 582
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 583
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 584
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 585
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 587
    iget-boolean v2, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    if-eqz v2, :cond_1f

    .line 588
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 589
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 590
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sget v6, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v28, v7

    int-to-long v6, v6

    .end local v7    # "isGeneratedGesture":Z
    .restart local v28    # "isGeneratedGesture":Z
    add-long/2addr v4, v6

    .line 589
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_f

    .line 592
    .end local v28    # "isGeneratedGesture":Z
    .restart local v7    # "isGeneratedGesture":Z
    :cond_1f
    move/from16 v28, v7

    .end local v7    # "isGeneratedGesture":Z
    .restart local v28    # "isGeneratedGesture":Z
    :goto_f
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 593
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 592
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 594
    iget-object v2, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v2, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v14, v2

    .line 595
    nop

    .line 682
    :goto_10
    if-nez v14, :cond_20

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_20

    .line 683
    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 685
    :cond_20
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V
    .locals 0
    .param p1, "onContextClickListener"    # Landroid/view/GestureDetector$OnContextClickListener;

    .line 459
    iput-object p1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    .line 460
    return-void
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0
    .param p1, "isLongpressEnabled"    # Z

    .line 472
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 473
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .param p1, "onDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 449
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 450
    return-void
.end method
