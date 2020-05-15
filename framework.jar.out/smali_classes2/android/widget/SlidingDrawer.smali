.class public Landroid/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingDrawer$DrawerToggler;,
        Landroid/widget/SlidingDrawer$OnDrawerScrollListener;,
        Landroid/widget/SlidingDrawer$OnDrawerCloseListener;,
        Landroid/widget/SlidingDrawer$OnDrawerOpenListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

.field private final mSlidingRunnable:Ljava/lang/Runnable;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 212
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 973
    new-instance v0, Landroid/widget/SlidingDrawer$1;

    invoke-direct {v0, p0}, Landroid/widget/SlidingDrawer$1;-><init>(Landroid/widget/SlidingDrawer;)V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    .line 214
    sget-object v0, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 217
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 218
    .local v3, "orientation":I
    if-ne v3, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 219
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 220
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 221
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    .line 222
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    .line 224
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 225
    .local v2, "handleId":I
    if-eqz v2, :cond_3

    .line 230
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 231
    .local v4, "contentId":I
    if-eqz v4, :cond_2

    .line 236
    if-eq v2, v4, :cond_1

    .line 241
    iput v2, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    .line 242
    iput v4, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    .line 244
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 245
    .local v5, "density":F
    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v6, v5

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    .line 246
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    .line 247
    const/high16 v6, 0x43160000    # 150.0f

    mul-float/2addr v6, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    .line 248
    const/high16 v6, 0x43480000    # 200.0f

    mul-float/2addr v6, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    .line 249
    const/high16 v6, 0x44fa0000    # 2000.0f

    mul-float/2addr v6, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    .line 250
    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    .line 252
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 255
    return-void

    .line 237
    .end local v5    # "density":F
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "The content and handle attributes must refer to different children."

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "The content attribute is required and must refer to a valid child."

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    .end local v4    # "contentId":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(Landroid/widget/SlidingDrawer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SlidingDrawer;

    .line 84
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/SlidingDrawer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SlidingDrawer;

    .line 84
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/SlidingDrawer;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/SlidingDrawer;

    .line 84
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "notifyScrollListener"    # Z

    .line 499
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 500
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    .line 501
    return-void
.end method

.method private animateOpen(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "notifyScrollListener"    # Z

    .line 504
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 505
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    .line 506
    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .line 841
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 842
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 845
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 846
    return-void

    .line 849
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 850
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    .line 853
    :cond_1
    return-void
.end method

.method private doAnimation()V
    .locals 4

    .line 698
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_3

    .line 699
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->incrementAnimation()V

    .line 700
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 701
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 702
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    goto :goto_1

    .line 703
    :cond_1
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 704
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 705
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_1

    .line 707
    :cond_2
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 708
    iget-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 709
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 712
    :cond_3
    :goto_1
    return-void
.end method

.method private incrementAnimation()V
    .locals 8

    .line 715
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 716
    .local v0, "now":J
    iget-wide v2, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 717
    .local v2, "t":F
    iget v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 718
    .local v3, "position":F
    iget v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 719
    .local v4, "v":F
    iget v5, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 720
    .local v5, "a":F
    mul-float v6, v4, v2

    add-float/2addr v6, v3

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    mul-float/2addr v7, v2

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iput v6, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 721
    mul-float v6, v5, v2

    add-float/2addr v6, v4

    iput v6, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 722
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 723
    return-void
.end method

.method private moveHandle(I)V
    .locals 10
    .param p1, "position"    # I

    .line 584
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 586
    .local v0, "handle":Landroid/view/View;
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    const/16 v3, -0x2712

    const/16 v4, -0x2711

    if-eqz v1, :cond_4

    .line 587
    if-ne p1, v4, :cond_0

    .line 588
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 589
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_2

    .line 590
    :cond_0
    if-ne p1, v3, :cond_1

    .line 591
    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v2, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v1, v2

    .line 592
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 591
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 593
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_2

    .line 595
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 596
    .local v1, "top":I
    sub-int v3, p1, v1

    .line 597
    .local v3, "deltaY":I
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v4, :cond_2

    .line 598
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, v4, v1

    goto :goto_0

    .line 599
    :cond_2
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_3

    .line 600
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v4, v5

    sub-int v3, v4, v1

    .line 602
    :cond_3
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 604
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 605
    .local v4, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 607
    .local v5, "region":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 608
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 610
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 611
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v3

    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 612
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 611
    invoke-virtual {v5, v2, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 614
    invoke-virtual {p0, v5}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    .line 615
    .end local v1    # "top":I
    .end local v3    # "deltaY":I
    .end local v4    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    goto/16 :goto_2

    .line 617
    :cond_4
    if-ne p1, v4, :cond_5

    .line 618
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 619
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto :goto_2

    .line 620
    :cond_5
    if-ne p1, v3, :cond_6

    .line 621
    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v2, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v1, v2

    .line 622
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 621
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 623
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto :goto_2

    .line 625
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 626
    .local v1, "left":I
    sub-int v3, p1, v1

    .line 627
    .local v3, "deltaX":I
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v4, :cond_7

    .line 628
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, v4, v1

    goto :goto_1

    .line 629
    :cond_7
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_8

    .line 630
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v4, v5

    sub-int v3, v4, v1

    .line 632
    :cond_8
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 634
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 635
    .restart local v4    # "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 637
    .restart local v5    # "region":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 638
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 640
    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v3

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 641
    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iget-object v8, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 642
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v8

    .line 641
    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 644
    invoke-virtual {p0, v5}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    .line 647
    .end local v1    # "left":I
    .end local v3    # "deltaX":I
    .end local v4    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :goto_2
    return-void
.end method

.method private openDrawer()V
    .locals 2

    .line 856
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 857
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 859
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 860
    return-void

    .line 863
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 865
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    .line 868
    :cond_1
    return-void
.end method

.method private performFling(IFZZ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "always"    # Z
    .param p4, "notifyScrollListener"    # Z

    .line 510
    int-to-float v0, p1

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 511
    iput p2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 513
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 514
    if-nez p3, :cond_2

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_2

    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 515
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    :goto_0
    add-int/2addr v0, v2

    if-le p1, v0, :cond_1

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    goto :goto_1

    .line 525
    :cond_1
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 526
    cmpl-float v0, p2, v1

    if-lez v0, :cond_7

    .line 527
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    .line 519
    :cond_2
    :goto_1
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 520
    cmpg-float v0, p2, v1

    if-gez v0, :cond_7

    .line 521
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    .line 531
    :cond_3
    if-nez p3, :cond_6

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_5

    .line 532
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v0

    :goto_2
    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_6

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_6

    .line 535
    :cond_5
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 536
    cmpg-float v0, p2, v1

    if-gez v0, :cond_7

    .line 537
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    .line 542
    :cond_6
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 543
    cmpl-float v0, p2, v1

    if-lez v0, :cond_7

    .line 544
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 549
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 550
    .local v0, "now":J
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 551
    const-wide/16 v2, 0x10

    add-long v4, v0, v2

    iput-wide v4, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 552
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 553
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 554
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 555
    invoke-direct {p0, p4}, Landroid/widget/SlidingDrawer;->stopTracking(Z)V

    .line 556
    return-void
.end method

.method private prepareContent()V
    .locals 8

    .line 650
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 651
    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 657
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 658
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    .line 659
    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 660
    .local v1, "childHeight":I
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    .line 661
    .local v4, "height":I
    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    iget v6, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 662
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 661
    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    .line 663
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    .line 664
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 663
    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 665
    .end local v1    # "childHeight":I
    .end local v4    # "height":I
    goto :goto_0

    .line 666
    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 667
    .local v1, "childWidth":I
    iget v4, p0, Landroid/widget/SlidingDrawer;->mRight:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    .line 668
    .local v4, "width":I
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v6, v7

    .line 669
    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 668
    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    .line 670
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v3, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    .line 671
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 672
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 670
    invoke-virtual {v0, v3, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 677
    .end local v1    # "childWidth":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 678
    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 680
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 681
    return-void
.end method

.method private prepareTracking(I)V
    .locals 6
    .param p1, "position"    # I

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 560
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 561
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    xor-int/2addr v1, v0

    .line 562
    .local v1, "opening":Z
    if-eqz v1, :cond_1

    .line 563
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 564
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 565
    iget v2, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 566
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    :goto_0
    sub-int/2addr v3, v4

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_0

    :goto_1
    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 567
    iget v2, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v2, v2

    invoke-direct {p0, v2}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 568
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 569
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 570
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 571
    .local v2, "now":J
    iput-wide v2, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 572
    const-wide/16 v4, 0x10

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 573
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 574
    .end local v2    # "now":J
    goto :goto_2

    .line 575
    :cond_1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_2

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 577
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 579
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 581
    :goto_2
    return-void
.end method

.method private stopTracking(Z)V
    .locals 2
    .param p1, "notifyScrollListener"    # Z

    .line 684
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 685
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 687
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 691
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 693
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 695
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 3

    .line 799
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 800
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 801
    .local v0, "scrollListener":Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 802
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 804
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/SlidingDrawer;->animateClose(IZ)V

    .line 806
    if-eqz v0, :cond_2

    .line 807
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 809
    :cond_2
    return-void
.end method

.method public animateOpen()V
    .locals 3

    .line 821
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 822
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 823
    .local v0, "scrollListener":Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 824
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 826
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/SlidingDrawer;->animateOpen(IZ)V

    .line 828
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    .line 830
    if-eqz v0, :cond_2

    .line 831
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 833
    :cond_2
    return-void
.end method

.method public animateToggle()V
    .locals 1

    .line 754
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 755
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    goto :goto_0

    .line 757
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateClose()V

    .line 759
    :goto_0
    return-void
.end method

.method public close()V
    .locals 0

    .line 784
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 785
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 786
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    .line 787
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 304
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getDrawingTime()J

    move-result-wide v0

    .line 305
    .local v0, "drawingTime":J
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 306
    .local v2, "handle":Landroid/view/View;
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 308
    .local v3, "isVertical":Z
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 310
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v4, :cond_6

    .line 326
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v4, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_3

    .line 311
    :cond_1
    :goto_0
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 312
    .local v4, "cache":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 313
    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 314
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v4, v5, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 316
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v4, v7, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 319
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 320
    if-eqz v3, :cond_4

    .line 321
    move v6, v5

    goto :goto_1

    .line 320
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 321
    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    nop

    .line 320
    :cond_5
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 322
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 323
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 325
    .end local v4    # "cache":Landroid/graphics/Bitmap;
    :goto_2
    nop

    .line 328
    :cond_6
    :goto_3
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 837
    const-class v0, Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .line 917
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .line 907
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .line 953
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

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

.method public isOpened()Z
    .locals 1

    .line 944
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .line 935
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    .line 936
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 259
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 260
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Landroid/widget/SlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget v0, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 267
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    return-void

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 371
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 372
    return v1

    .line 375
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 377
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 378
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 380
    .local v3, "y":F
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 381
    .local v4, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 383
    .local v5, "handle":Landroid/view/View;
    invoke-virtual {v5, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 384
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v6, :cond_1

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 385
    return v1

    .line 388
    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 389
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 391
    invoke-virtual {v5, v1}, Landroid/view/View;->setPressed(Z)V

    .line 393
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 396
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v6, :cond_2

    .line 397
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v6}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 400
    :cond_2
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v6, :cond_3

    .line 401
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 402
    .local v6, "top":I
    float-to-int v7, v3

    sub-int/2addr v7, v6

    iput v7, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 403
    invoke-direct {p0, v6}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 404
    .end local v6    # "top":I
    goto :goto_0

    .line 405
    :cond_3
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 406
    .local v6, "left":I
    float-to-int v7, v2

    sub-int/2addr v7, v6

    iput v7, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 407
    invoke-direct {p0, v6}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 409
    .end local v6    # "left":I
    :goto_0
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 412
    :cond_4
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object v0, p0

    .line 332
    iget-boolean v1, v0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-eqz v1, :cond_0

    .line 333
    return-void

    .line 336
    :cond_0
    sub-int v2, p4, p2

    .line 337
    .local v2, "width":I
    sub-int v3, p5, p3

    .line 339
    .local v3, "height":I
    iget-object v4, v0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 341
    .local v4, "handle":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 342
    .local v5, "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 347
    .local v6, "childHeight":I
    iget-object v7, v0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 349
    .local v7, "content":Landroid/view/View;
    iget-boolean v8, v0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    .line 350
    sub-int v8, v2, v5

    div-int/lit8 v8, v8, 0x2

    .line 351
    .local v8, "childLeft":I
    iget-boolean v10, v0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v10, :cond_1

    iget v10, v0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_0

    :cond_1
    sub-int v10, v3, v6

    iget v11, v0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr v10, v11

    .line 353
    .local v10, "childTop":I
    :goto_0
    iget v11, v0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v6

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget v9, v0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v6

    .line 354
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v9, v13

    .line 353
    const/4 v1, 0x0

    invoke-virtual {v7, v1, v11, v12, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 356
    .end local v8    # "childLeft":I
    .end local v10    # "childTop":I
    :cond_2
    iget-boolean v1, v0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_1

    :cond_3
    sub-int v1, v2, v5

    iget v8, v0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr v1, v8

    :goto_1
    move v8, v1

    .line 357
    .restart local v8    # "childLeft":I
    sub-int v1, v3, v6

    div-int/lit8 v10, v1, 0x2

    .line 359
    .restart local v10    # "childTop":I
    iget v1, v0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v1, v5

    iget v9, v0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v5

    .line 360
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v9, v11

    .line 361
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 359
    const/4 v12, 0x0

    invoke-virtual {v7, v1, v12, v9, v11}, Landroid/view/View;->layout(IIII)V

    .line 364
    :goto_2
    add-int v1, v8, v5

    add-int v9, v10, v6

    invoke-virtual {v4, v8, v10, v1, v9}, Landroid/view/View;->layout(IIII)V

    .line 365
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 366
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    .line 367
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 276
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 277
    .local v0, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 279
    .local v1, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 280
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 282
    .local v3, "heightSpecSize":I
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 286
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 287
    .local v4, "handle":Landroid/view/View;
    invoke-virtual {p0, v4, p1, p2}, Landroid/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 289
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_0

    .line 290
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    .line 291
    .local v5, "height":I
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 292
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 291
    invoke-virtual {v7, v8, v6}, Landroid/view/View;->measure(II)V

    .line 293
    .end local v5    # "height":I
    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v1, v5

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    .line 295
    .local v5, "width":I
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 296
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 295
    invoke-virtual {v7, v8, v6}, Landroid/view/View;->measure(II)V

    .line 299
    .end local v5    # "width":I
    :goto_0
    invoke-virtual {p0, v1, v3}, Landroid/widget/SlidingDrawer;->setMeasuredDimension(II)V

    .line 300
    return-void

    .line 283
    .end local v4    # "handle":Landroid/view/View;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 417
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 418
    return v1

    .line 421
    :cond_0
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    .line 422
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 424
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .end local v0    # "action":I
    goto/16 :goto_a

    .line 426
    .restart local v0    # "action":I
    :pswitch_0
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    :goto_0
    float-to-int v3, v3

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 427
    goto/16 :goto_a

    .line 430
    :pswitch_1
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 431
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    iget v4, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 433
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    .line 434
    .local v4, "yVelocity":F
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .line 437
    .local v5, "xVelocity":F
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 438
    .local v6, "vertical":Z
    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 439
    cmpg-float v8, v4, v7

    if-gez v8, :cond_2

    move v8, v1

    goto :goto_1

    :cond_2
    move v8, v2

    .line 440
    .local v8, "negative":Z
    :goto_1
    cmpg-float v7, v5, v7

    if-gez v7, :cond_3

    .line 441
    neg-float v5, v5

    .line 443
    :cond_3
    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_7

    .line 444
    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v5, v7

    goto :goto_3

    .line 447
    .end local v8    # "negative":Z
    :cond_4
    cmpg-float v8, v5, v7

    if-gez v8, :cond_5

    move v8, v1

    goto :goto_2

    :cond_5
    move v8, v2

    .line 448
    .restart local v8    # "negative":Z
    :goto_2
    cmpg-float v7, v4, v7

    if-gez v7, :cond_6

    .line 449
    neg-float v4, v4

    .line 451
    :cond_6
    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_7

    .line 452
    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v4, v7

    .line 456
    :cond_7
    :goto_3
    float-to-double v9, v5

    float-to-double v11, v4

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v7, v9

    .line 457
    .local v7, "velocity":F
    if-eqz v8, :cond_8

    .line 458
    neg-float v7, v7

    .line 461
    :cond_8
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    .line 462
    .local v9, "top":I
    iget-object v10, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 464
    .local v10, "left":I
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v12, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_14

    .line 465
    if-eqz v6, :cond_a

    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v11, :cond_9

    iget v11, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v12

    if-lt v9, v11, :cond_c

    :cond_9
    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v11, :cond_12

    iget v11, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v12, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v11, v12

    if-le v9, v11, :cond_12

    goto :goto_4

    :cond_a
    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v11, :cond_b

    iget v11, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v12

    if-lt v10, v11, :cond_c

    :cond_b
    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v11, :cond_12

    iget v11, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v12, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v11, v12

    if-le v10, v11, :cond_12

    .line 472
    :cond_c
    :goto_4
    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    if-eqz v11, :cond_10

    .line 473
    invoke-virtual {p0, v2}, Landroid/widget/SlidingDrawer;->playSoundEffect(I)V

    .line 475
    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v11, :cond_e

    .line 476
    if-eqz v6, :cond_d

    move v11, v9

    goto :goto_5

    :cond_d
    move v11, v10

    :goto_5
    invoke-direct {p0, v11, v1}, Landroid/widget/SlidingDrawer;->animateClose(IZ)V

    goto :goto_a

    .line 478
    :cond_e
    if-eqz v6, :cond_f

    move v11, v9

    goto :goto_6

    :cond_f
    move v11, v10

    :goto_6
    invoke-direct {p0, v11, v1}, Landroid/widget/SlidingDrawer;->animateOpen(IZ)V

    goto :goto_a

    .line 481
    :cond_10
    if-eqz v6, :cond_11

    move v11, v9

    goto :goto_7

    :cond_11
    move v11, v10

    :goto_7
    invoke-direct {p0, v11, v7, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    goto :goto_a

    .line 485
    :cond_12
    if-eqz v6, :cond_13

    move v11, v9

    goto :goto_8

    :cond_13
    move v11, v10

    :goto_8
    invoke-direct {p0, v11, v7, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    goto :goto_a

    .line 488
    :cond_14
    if-eqz v6, :cond_15

    move v11, v9

    goto :goto_9

    :cond_15
    move v11, v10

    :goto_9
    invoke-direct {p0, v11, v7, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    .line 495
    .end local v0    # "action":I
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "yVelocity":F
    .end local v5    # "xVelocity":F
    .end local v6    # "vertical":Z
    .end local v7    # "velocity":F
    .end local v8    # "negative":Z
    .end local v9    # "top":I
    .end local v10    # "left":I
    :cond_16
    :goto_a
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-nez v0, :cond_18

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_b

    :cond_17
    move v1, v2

    nop

    :cond_18
    :goto_b
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .line 769
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    .line 770
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 771
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    .line 773
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    .line 774
    return-void
.end method

.method public setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .param p1, "onDrawerCloseListener"    # Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    .line 885
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    .line 886
    return-void
.end method

.method public setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .param p1, "onDrawerOpenListener"    # Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    .line 876
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    .line 877
    return-void
.end method

.method public setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .param p1, "onDrawerScrollListener"    # Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 897
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 898
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 735
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 736
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_0

    .line 738
    :cond_0
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 740
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 741
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    .line 742
    return-void
.end method

.method public unlock()V
    .locals 1

    .line 926
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    .line 927
    return-void
.end method
