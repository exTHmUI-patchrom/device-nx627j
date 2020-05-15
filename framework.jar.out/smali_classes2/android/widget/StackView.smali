.class public Landroid/widget/StackView;
.super Landroid/widget/AdapterViewAnimator;
.source "StackView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/StackView$HolographicHelper;,
        Landroid/widget/StackView$LayoutParams;,
        Landroid/widget/StackView$StackSlider;,
        Landroid/widget/StackView$StackFrame;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0x190

.field private static final FRAME_PADDING:I = 0x4

.field private static final GESTURE_NONE:I = 0x0

.field private static final GESTURE_SLIDE_DOWN:I = 0x2

.field private static final GESTURE_SLIDE_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final ITEMS_SLIDE_DOWN:I = 0x1

.field private static final ITEMS_SLIDE_UP:I = 0x0

.field private static final MINIMUM_ANIMATION_DURATION:I = 0x32

.field private static final MIN_TIME_BETWEEN_INTERACTION_AND_AUTOADVANCE:I = 0x1388

.field private static final MIN_TIME_BETWEEN_SCROLLS:J = 0x64L

.field private static final NUM_ACTIVE_VIEWS:I = 0x5

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.0f

.field private static final PERSPECTIVE_SHIFT_FACTOR_X:F = 0.1f

.field private static final PERSPECTIVE_SHIFT_FACTOR_Y:F = 0.1f

.field private static final SLIDE_UP_RATIO:F = 0.7f

.field private static final STACK_RELAYOUT_DURATION:I = 0x64

.field private static final SWIPE_THRESHOLD_RATIO:F = 0.2f

.field private static sHolographicHelper:Landroid/widget/StackView$HolographicHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mClickColor:I

.field private mClickFeedback:Landroid/widget/ImageView;

.field private mClickFeedbackIsValid:Z

.field private mFirstLayoutHappened:Z

.field private mFramePadding:I

.field private mHighlight:Landroid/widget/ImageView;

.field private mInitialX:F

.field private mInitialY:F

.field private mLastInteractionTime:J

.field private mLastScrollTime:J

.field private mMaximumVelocity:I

.field private mNewPerspectiveShiftX:F

.field private mNewPerspectiveShiftY:F

.field private mPerspectiveShiftX:F

.field private mPerspectiveShiftY:F

.field private mResOutColor:I

.field private mSlideAmount:I

.field private mStackMode:I

.field private mStackSlider:Landroid/widget/StackView$StackSlider;

.field private mSwipeGestureType:I

.field private mSwipeThreshold:I

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTransitionIsSetup:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYVelocity:I

.field private final stackInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 162
    const v0, 0x101043e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 176
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    const-string v0, "StackView"

    iput-object v0, p0, Landroid/widget/StackView;->TAG:Ljava/lang/String;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 129
    iput v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 135
    iput-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 142
    iput-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 144
    iput-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 145
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 149
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    .line 177
    sget-object v1, Lcom/android/internal/R$styleable;->StackView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 180
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mResOutColor:I

    .line 182
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/widget/StackView;->mClickColor:I

    .line 185
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    invoke-direct {p0}, Landroid/widget/StackView;->initStackView()V

    .line 187
    return-void
.end method

.method static synthetic access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/StackView;

    .line 52
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/StackView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/StackView;

    .line 52
    iget v0, p0, Landroid/widget/StackView;->mStackMode:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/StackView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/StackView;

    .line 52
    iget v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    return v0
.end method

.method private beginGestureIfNeeded(F)V
    .locals 9
    .param p1, "deltaY"    # F

    .line 657
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/widget/StackView;->mTouchSlop:I

    if-le v0, v1, :cond_12

    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v0, :cond_12

    .line 658
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 659
    .local v0, "swipeGestureType":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelLongPress()V

    .line 660
    invoke-virtual {p0, v2}, Landroid/widget/StackView;->requestDisallowInterceptTouchEvent(Z)V

    .line 662
    iget-object v3, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v3, :cond_1

    return-void

    .line 663
    :cond_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v3

    .line 666
    .local v3, "adapterCount":I
    iget v4, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 667
    if-ne v0, v1, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v2

    .local v4, "activeIndex":I
    :goto_1
    goto :goto_2

    .line 669
    .end local v4    # "activeIndex":I
    :cond_3
    if-ne v0, v1, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v5

    .line 672
    .restart local v4    # "activeIndex":I
    :goto_2
    iget-boolean v6, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v6, :cond_7

    if-ne v3, v2, :cond_7

    iget v6, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v6, :cond_5

    if-eq v0, v2, :cond_6

    :cond_5
    iget v6, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v6, v2, :cond_7

    if-ne v0, v1, :cond_7

    :cond_6
    move v6, v2

    goto :goto_3

    :cond_7
    move v6, v5

    .line 675
    .local v6, "endOfStack":Z
    :goto_3
    iget-boolean v7, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v7, :cond_a

    if-ne v3, v2, :cond_a

    iget v7, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v7, v2, :cond_8

    if-eq v0, v2, :cond_9

    :cond_8
    iget v7, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v7, :cond_a

    if-ne v0, v1, :cond_a

    :cond_9
    move v1, v2

    goto :goto_4

    :cond_a
    move v1, v5

    .line 680
    .local v1, "beginningOfStack":Z
    :goto_4
    iget-boolean v7, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v7, :cond_b

    if-nez v1, :cond_b

    if-nez v6, :cond_b

    .line 681
    const/4 v7, 0x0

    goto :goto_7

    .line 682
    :cond_b
    iget v7, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v7, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_f

    if-eqz v1, :cond_c

    goto :goto_6

    .line 685
    :cond_c
    iget v7, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v7, v4

    add-int/lit8 v8, v3, -0x1

    if-eq v7, v8, :cond_e

    if-eqz v6, :cond_d

    goto :goto_5

    .line 688
    :cond_d
    move v7, v5

    goto :goto_7

    .line 686
    :cond_e
    :goto_5
    const/4 v7, 0x2

    goto :goto_7

    .line 683
    :cond_f
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 684
    const/4 v7, 0x1

    .line 688
    .local v7, "stackMode":I
    :goto_7
    nop

    .line 691
    if-nez v7, :cond_10

    goto :goto_8

    :cond_10
    move v2, v5

    :goto_8
    iput-boolean v2, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 693
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v2

    .line 694
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_11

    return-void

    .line 696
    :cond_11
    invoke-direct {p0, v2, v7}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 699
    iput v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 700
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelHandleClick()V

    .line 702
    .end local v0    # "swipeGestureType":I
    .end local v1    # "beginningOfStack":Z
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "adapterCount":I
    .end local v4    # "activeIndex":I
    .end local v6    # "endOfStack":Z
    .end local v7    # "stackMode":I
    :cond_12
    return-void
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 810
    iget v0, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 811
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 812
    .local v1, "newY":F
    iget v2, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v2, v1, v2

    float-to-int v2, v2

    .line 813
    .local v2, "deltaY":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 815
    iget-object v3, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 816
    iget-object v3, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 817
    iget-object v3, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 820
    :cond_0
    iget-object v3, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 821
    iget-object v3, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 822
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 825
    :cond_1
    iget v3, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-le v2, v3, :cond_3

    iget v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v3, v3, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v3, :cond_3

    .line 829
    iput v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 832
    iget v3, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v3, :cond_2

    .line 833
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_0

    .line 835
    :cond_2
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 837
    :goto_0
    iget-object v3, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->bringToFront()V

    goto/16 :goto_7

    .line 838
    :cond_3
    iget v3, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    neg-int v3, v3

    const/4 v6, 0x1

    if-ge v2, v3, :cond_5

    iget v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v3, v3, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v3, :cond_5

    .line 842
    iput v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 845
    iget v3, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v3, :cond_4

    .line 846
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_1

    .line 848
    :cond_4
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 851
    :goto_1
    iget-object v3, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->bringToFront()V

    goto/16 :goto_7

    .line 852
    :cond_5
    iget v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-ne v3, v6, :cond_9

    .line 855
    iget v3, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v3, v6, :cond_6

    goto :goto_2

    :cond_6
    move v7, v8

    :goto_2
    move v3, v7

    .line 856
    .local v3, "finalYProgress":F
    iget v7, p0, Landroid/widget/StackView;->mStackMode:I

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v7, v7, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v7, :cond_7

    goto :goto_3

    .line 859
    :cond_7
    iget-object v7, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v7}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_4

    .line 857
    :cond_8
    :goto_3
    iget-object v7, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v7}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 859
    .local v7, "duration":I
    :goto_4
    nop

    .line 862
    new-instance v9, Landroid/widget/StackView$StackSlider;

    iget-object v10, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v9, p0, v10}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 863
    .local v9, "animationSlider":Landroid/widget/StackView$StackSlider;
    const-string v10, "YProgress"

    new-array v11, v6, [F

    aput v3, v11, v5

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 864
    .local v10, "snapBackY":Landroid/animation/PropertyValuesHolder;
    const-string v11, "XProgress"

    new-array v12, v6, [F

    aput v8, v12, v5

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 865
    .local v8, "snapBackX":Landroid/animation/PropertyValuesHolder;
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v8, v4, v5

    aput-object v10, v4, v6

    invoke-static {v9, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 867
    .local v4, "pa":Landroid/animation/ObjectAnimator;
    int-to-long v11, v7

    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 868
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 869
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 870
    .end local v3    # "finalYProgress":F
    .end local v4    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "duration":I
    .end local v8    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v10    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    goto :goto_7

    :cond_9
    iget v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v3, v4, :cond_d

    .line 872
    iget v3, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v3, v6, :cond_a

    move v7, v8

    nop

    :cond_a
    move v3, v7

    .line 874
    .restart local v3    # "finalYProgress":F
    iget v7, p0, Landroid/widget/StackView;->mStackMode:I

    if-eq v7, v6, :cond_c

    iget-object v7, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v7, v7, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v7, :cond_b

    goto :goto_5

    .line 877
    :cond_b
    iget-object v7, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v7}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_6

    .line 875
    :cond_c
    :goto_5
    iget-object v7, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v7}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 877
    .restart local v7    # "duration":I
    :goto_6
    nop

    .line 880
    new-instance v9, Landroid/widget/StackView$StackSlider;

    iget-object v10, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v9, p0, v10}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 881
    .restart local v9    # "animationSlider":Landroid/widget/StackView$StackSlider;
    const-string v10, "YProgress"

    new-array v11, v6, [F

    aput v3, v11, v5

    .line 882
    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 883
    .restart local v10    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    const-string v11, "XProgress"

    new-array v12, v6, [F

    aput v8, v12, v5

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 884
    .restart local v8    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v8, v4, v5

    aput-object v10, v4, v6

    invoke-static {v9, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 886
    .restart local v4    # "pa":Landroid/animation/ObjectAnimator;
    int-to-long v11, v7

    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 887
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 890
    .end local v3    # "finalYProgress":F
    .end local v4    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "duration":I
    .end local v8    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v10    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    :cond_d
    :goto_7
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 891
    iput v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 892
    return-void
.end method

.method private initStackView()V
    .locals 6

    .line 190
    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/widget/StackView;->configureViewAnimator(II)V

    .line 191
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->setStaticTransformationsEnabled(Z)V

    .line 192
    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 193
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mTouchSlop:I

    .line 194
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    .line 195
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 197
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    .line 198
    iget-object v3, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/StackView$LayoutParams;

    iget-object v5, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v5}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v3, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/StackView$LayoutParams;

    iget-object v5, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v5}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v3, v2, v4}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 201
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    .line 202
    iget-object v3, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/StackView$LayoutParams;

    iget-object v5, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v5}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v3, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/StackView$LayoutParams;

    iget-object v5, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v5}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v3, v2, v4}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 204
    iget-object v3, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    new-instance v3, Landroid/widget/StackView$StackSlider;

    invoke-direct {v3, p0}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;)V

    iput-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    .line 208
    sget-object v3, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    if-nez v3, :cond_0

    .line 209
    new-instance v3, Landroid/widget/StackView$HolographicHelper;

    iget-object v4, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/StackView$HolographicHelper;-><init>(Landroid/content/Context;)V

    sput-object v3, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    .line 211
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/StackView;->setClipChildren(Z)V

    .line 212
    invoke-virtual {p0, v3}, Landroid/widget/StackView;->setClipToPadding(Z)V

    .line 217
    iput v0, p0, Landroid/widget/StackView;->mStackMode:I

    .line 220
    iput v2, p0, Landroid/widget/StackView;->mWhichChild:I

    .line 224
    iget-object v0, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 225
    .local v0, "density":F
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/StackView;->mFramePadding:I

    .line 226
    return-void
.end method

.method private measureChildren()V
    .locals 11

    .line 1135
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    .line 1137
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v1

    .line 1138
    .local v1, "measuredWidth":I
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v2

    .line 1140
    .local v2, "measuredHeight":I
    int-to-float v3, v1

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, p0, Landroid/widget/StackView;->mPaddingLeft:I

    sub-int/2addr v3, v5

    iget v5, p0, Landroid/widget/StackView;->mPaddingRight:I

    sub-int/2addr v3, v5

    .line 1142
    .local v3, "childWidth":I
    int-to-float v5, v2

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Landroid/widget/StackView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/StackView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 1145
    .local v4, "childHeight":I
    const/4 v5, 0x0

    .line 1146
    .local v5, "maxWidth":I
    const/4 v6, 0x0

    .line 1148
    .local v6, "maxHeight":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_2

    .line 1149
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1150
    .local v8, "child":Landroid/view/View;
    const/high16 v9, -0x80000000

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1151
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1150
    invoke-virtual {v8, v10, v9}, Landroid/view/View;->measure(II)V

    .line 1153
    iget-object v9, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eq v8, v9, :cond_1

    iget-object v9, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    if-eq v8, v9, :cond_1

    .line 1154
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1155
    .local v9, "childMeasuredWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1156
    .local v10, "childMeasuredHeight":I
    if-le v9, v5, :cond_0

    .line 1157
    move v5, v9

    .line 1159
    :cond_0
    if-le v10, v6, :cond_1

    .line 1160
    move v6, v10

    .line 1148
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childMeasuredWidth":I
    .end local v10    # "childMeasuredHeight":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1165
    .end local v7    # "i":I
    :cond_2
    int-to-float v7, v1

    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 1166
    int-to-float v7, v2

    mul-float/2addr v8, v7

    iput v8, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    .line 1169
    if-lez v5, :cond_3

    if-lez v0, :cond_3

    if-ge v5, v3, :cond_3

    .line 1170
    sub-int v7, v1, v5

    int-to-float v7, v7

    iput v7, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 1173
    :cond_3
    if-lez v6, :cond_4

    if-lez v0, :cond_4

    if-ge v6, v4, :cond_4

    .line 1174
    sub-int v7, v2, v6

    int-to-float v7, v7

    iput v7, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    .line 1176
    :cond_4
    return-void
.end method

.method private onLayout()V
    .locals 3

    .line 562
    iget-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    if-nez v0, :cond_0

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 564
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    .line 567
    :cond_0
    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 568
    .local v0, "newSlideAmount":I
    iget v1, p0, Landroid/widget/StackView;->mSlideAmount:I

    if-eq v1, v0, :cond_1

    .line 569
    iput v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    .line 570
    const v1, 0x3e4ccccd    # 0.2f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    .line 573
    :cond_1
    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    iget v2, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    iget v2, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 574
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    .line 576
    :cond_2
    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    iput v1, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 577
    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    iput v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 578
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    .line 580
    :cond_3
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 766
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 767
    .local v0, "activePointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 768
    .local v1, "pointerId":I
    iget v2, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v1, v2, :cond_5

    .line 770
    iget v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 772
    .local v2, "activeViewIndex":I
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v3

    .line 773
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_1

    return-void

    .line 779
    :cond_1
    nop

    .local v4, "index":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 780
    if-eq v4, v0, :cond_3

    .line 782
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 783
    .local v5, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 785
    .local v6, "y":F
    iget-object v7, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 786
    iget-object v7, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 787
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 788
    .local v7, "oldX":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 791
    .local v8, "oldY":F
    iget v9, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v10, v6, v8

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/StackView;->mInitialY:F

    .line 792
    iget v9, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float v10, v5, v7

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/StackView;->mInitialX:F

    .line 794
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 795
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_2

    .line 796
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 799
    :cond_2
    return-void

    .line 779
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "oldX":F
    .end local v8    # "oldY":F
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 805
    .end local v4    # "index":I
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    .line 807
    .end local v2    # "activeViewIndex":I
    .end local v3    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private pacedScroll(Z)V
    .locals 4
    .param p1, "up"    # Z

    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/StackView;->mLastScrollTime:J

    sub-long/2addr v0, v2

    .line 604
    .local v0, "timeSinceLastScroll":J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 605
    if-eqz p1, :cond_0

    .line 606
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 610
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/StackView;->mLastScrollTime:J

    .line 612
    :cond_1
    return-void
.end method

.method private setupStackSlider(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mode"    # I

    .line 372
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p2}, Landroid/widget/StackView$StackSlider;->setMode(I)V

    .line 373
    if-eqz p1, :cond_0

    .line 374
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v2, p0, Landroid/widget/StackView;->mResOutColor:I

    invoke-virtual {v1, p1, v2}, Landroid/widget/StackView$HolographicHelper;->createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 376
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 377
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 378
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 380
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p1}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 382
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :cond_0
    return-void
.end method

.method private transformViewAtIndex(ILandroid/view/View;Z)V
    .locals 22
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "animate"    # Z

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    .line 319
    iget v3, v0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 320
    .local v3, "maxPerspectiveShiftY":F
    iget v4, v0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 322
    .local v4, "maxPerspectiveShiftX":F
    iget v5, v0, Landroid/widget/StackView;->mStackMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 323
    iget v5, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    sub-int v5, v5, p1

    sub-int/2addr v5, v6

    .line 324
    .end local p1    # "index":I
    .local v5, "index":I
    iget v1, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    sub-int/2addr v1, v6

    if-ne v5, v1, :cond_1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 326
    .end local v5    # "index":I
    .restart local p1    # "index":I
    :cond_0
    add-int/lit8 v5, p1, -0x1

    .line 327
    .end local p1    # "index":I
    .restart local v5    # "index":I
    if-gez v5, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 330
    :cond_1
    :goto_0
    int-to-float v1, v5

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v1, v7

    iget v8, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v1, v8

    .line 332
    .local v1, "r":F
    const/4 v8, 0x0

    sub-float v10, v7, v1

    mul-float/2addr v8, v10

    sub-float v8, v7, v8

    .line 334
    .local v8, "scale":F
    mul-float v10, v1, v3

    .line 335
    .local v10, "perspectiveTranslationY":F
    sub-float v11, v8, v7

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f666666    # 0.9f

    mul-float/2addr v12, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v12, v14

    mul-float/2addr v11, v12

    .line 337
    .local v11, "scaleShiftCorrectionY":F
    add-float v12, v10, v11

    .line 339
    .local v12, "transY":F
    sub-float v15, v7, v1

    mul-float/2addr v15, v4

    .line 340
    .local v15, "perspectiveTranslationX":F
    sub-float/2addr v7, v8

    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v13

    div-float/2addr v9, v14

    mul-float/2addr v7, v9

    .line 342
    .local v7, "scaleShiftCorrectionX":F
    add-float v9, v15, v7

    .line 346
    .local v9, "transX":F
    instance-of v13, v2, Landroid/widget/StackView$StackFrame;

    if-eqz v13, :cond_2

    .line 347
    move-object v13, v2

    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelTransformAnimator()Z

    .line 350
    :cond_2
    if-eqz p3, :cond_4

    .line 351
    const-string/jumbo v14, "translationX"

    new-array v0, v6, [F

    const/16 v16, 0x0

    aput v9, v0, v16

    invoke-static {v14, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 352
    .local v0, "translationX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v14, "translationY"

    move/from16 v17, v1

    new-array v1, v6, [F

    .line 352
    .end local v1    # "r":F
    .local v17, "r":F
    aput v12, v1, v16

    invoke-static {v14, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 353
    .local v1, "translationY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v14, "scaleX"

    move/from16 v18, v3

    new-array v3, v6, [F

    .line 353
    .end local v3    # "maxPerspectiveShiftY":F
    .local v18, "maxPerspectiveShiftY":F
    aput v8, v3, v16

    invoke-static {v14, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 354
    .local v3, "scalePropX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v14, "scaleY"

    move/from16 v19, v4

    new-array v4, v6, [F

    .line 354
    .end local v4    # "maxPerspectiveShiftX":F
    .local v19, "maxPerspectiveShiftX":F
    aput v8, v4, v16

    invoke-static {v14, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 356
    .local v4, "scalePropY":Landroid/animation/PropertyValuesHolder;
    const/4 v14, 0x4

    new-array v14, v14, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v14, v16

    aput-object v4, v14, v6

    const/4 v6, 0x2

    aput-object v1, v14, v6

    const/4 v6, 0x3

    aput-object v0, v14, v6

    invoke-static {v2, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 358
    .local v6, "oa":Landroid/animation/ObjectAnimator;
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    const-wide/16 v0, 0x64

    .line 358
    .end local v0    # "translationX":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "translationY":Landroid/animation/PropertyValuesHolder;
    .local v20, "translationX":Landroid/animation/PropertyValuesHolder;
    .local v21, "translationY":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 359
    instance-of v0, v2, Landroid/widget/StackView$StackFrame;

    if-eqz v0, :cond_3

    .line 360
    move-object v0, v2

    check-cast v0, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v0, v6}, Landroid/widget/StackView$StackFrame;->setTransformAnimator(Landroid/animation/ObjectAnimator;)V

    .line 362
    :cond_3
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 363
    .end local v3    # "scalePropX":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "scalePropY":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "oa":Landroid/animation/ObjectAnimator;
    .end local v20    # "translationX":Landroid/animation/PropertyValuesHolder;
    .end local v21    # "translationY":Landroid/animation/PropertyValuesHolder;
    goto :goto_1

    .line 364
    .end local v17    # "r":F
    .end local v18    # "maxPerspectiveShiftY":F
    .end local v19    # "maxPerspectiveShiftX":F
    .local v1, "r":F
    .local v3, "maxPerspectiveShiftY":F
    .local v4, "maxPerspectiveShiftX":F
    :cond_4
    move/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v4

    .line 364
    .end local v1    # "r":F
    .end local v3    # "maxPerspectiveShiftY":F
    .end local v4    # "maxPerspectiveShiftX":F
    .restart local v17    # "r":F
    .restart local v18    # "maxPerspectiveShiftY":F
    .restart local v19    # "maxPerspectiveShiftX":F
    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 365
    invoke-virtual {v2, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 366
    invoke-virtual {v2, v8}, Landroid/view/View;->setScaleX(F)V

    .line 367
    invoke-virtual {v2, v8}, Landroid/view/View;->setScaleY(F)V

    .line 369
    :goto_1
    return-void
.end method

.method private updateChildTransforms()V
    .locals 3

    .line 470
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 471
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v2

    .line 472
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 473
    invoke-direct {p0, v1, v2, v0}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 470
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 5

    .line 1122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    sub-long/2addr v0, v2

    .line 1124
    .local v0, "timeSinceLastInteraction":J
    iget-object v2, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v2, :cond_0

    return-void

    .line 1125
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v2

    .line 1126
    .local v2, "adapterCount":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v3, :cond_1

    return-void

    .line 1128
    :cond_1
    iget v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v3, :cond_2

    const-wide/16 v3, 0x1388

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 1130
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 1132
    :cond_2
    return-void
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    .line 528
    return-void
.end method

.method bridge synthetic createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/StackView;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1089
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1090
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/widget/StackView$LayoutParams;

    if-eqz v1, :cond_0

    .line 1091
    move-object v1, v0

    check-cast v1, Landroid/widget/StackView$LayoutParams;

    .line 1092
    .local v1, "lp":Landroid/widget/StackView$LayoutParams;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1093
    invoke-virtual {v1, v2}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1094
    iput v2, v1, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1095
    iput v2, v1, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1096
    return-object v1

    .line 1098
    .end local v1    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_0
    new-instance v1, Landroid/widget/StackView$LayoutParams;

    invoke-direct {v1, p0, p1}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    return-object v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, "expandClipRegion":Z
    iget-object v1, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 535
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    .line 536
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 537
    invoke-virtual {p0, v2}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 538
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/StackView$LayoutParams;

    .line 539
    .local v4, "lp":Landroid/widget/StackView$LayoutParams;
    iget v5, v4, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    if-nez v5, :cond_0

    iget v5, v4, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    if-eqz v5, :cond_1

    .line 540
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    .line 541
    :cond_1
    invoke-virtual {v4}, Landroid/widget/StackView$LayoutParams;->resetInvalidateRect()V

    .line 543
    :cond_2
    invoke-virtual {v4}, Landroid/widget/StackView$LayoutParams;->getInvalidateRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 544
    .local v5, "childInvalidateRect":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 545
    const/4 v0, 0x1

    .line 546
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 536
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/StackView$LayoutParams;
    .end local v5    # "childInvalidateRect":Landroid/graphics/Rect;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 552
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 553
    iget-object v2, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRectUnion(Landroid/graphics/Rect;)Z

    .line 554
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 555
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 557
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 559
    :goto_1
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1232
    const-class v0, Landroid/widget/StackView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 5

    .line 519
    new-instance v0, Landroid/widget/StackView$StackFrame;

    iget-object v1, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/StackView$StackFrame;-><init>(Landroid/content/Context;)V

    .line 520
    .local v0, "fl":Landroid/widget/StackView$StackFrame;
    iget v1, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v2, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v3, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v4, p0, Landroid/widget/StackView;->mFramePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/StackView$StackFrame;->setPadding(IIII)V

    .line 521
    return-object v0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 465
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    .line 467
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 584
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 588
    .local v0, "vscroll":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x1

    if-gez v2, :cond_1

    .line 589
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/StackView;->pacedScroll(Z)V

    .line 590
    return v3

    .line 591
    :cond_1
    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 592
    invoke-direct {p0, v3}, Landroid/widget/StackView;->pacedScroll(Z)V

    .line 593
    return v3

    .line 598
    .end local v0    # "vscroll":F
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1238
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1239
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1240
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1241
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    .line 1242
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1244
    :cond_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_2

    .line 1245
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1248
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 620
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 630
    :pswitch_0
    iget v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 631
    .local v1, "pointerIndex":I
    if-ne v1, v2, :cond_0

    .line 633
    const-string v2, "StackView"

    const-string v4, "Error: No data for our primary pointer."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return v3

    .line 636
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 637
    .local v2, "newY":F
    iget v4, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v4, v2, v4

    .line 639
    .local v4, "deltaY":F
    invoke-direct {p0, v4}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    .line 640
    goto :goto_0

    .line 648
    .end local v1    # "pointerIndex":I
    .end local v2    # "newY":F
    .end local v4    # "deltaY":F
    :pswitch_1
    iput v2, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 649
    iput v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_0

    .line 622
    :pswitch_2
    iget v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v1, v2, :cond_2

    .line 623
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mInitialX:F

    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mInitialY:F

    .line 625
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    goto :goto_0

    .line 643
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 644
    nop

    .line 653
    :cond_2
    :goto_0
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    nop

    :cond_3
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1103
    invoke-virtual {p0}, Landroid/widget/StackView;->checkForAndHandleDataChanged()V

    .line 1105
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    .line 1106
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1107
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1109
    .local v2, "child":Landroid/view/View;
    iget v3, p0, Landroid/widget/StackView;->mPaddingLeft:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 1110
    .local v3, "childRight":I
    iget v4, p0, Landroid/widget/StackView;->mPaddingTop:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1111
    .local v4, "childBottom":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/StackView$LayoutParams;

    .line 1113
    .local v5, "lp":Landroid/widget/StackView$LayoutParams;
    iget v6, p0, Landroid/widget/StackView;->mPaddingLeft:I

    iget v7, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/StackView;->mPaddingTop:I

    iget v8, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v8, v3

    iget v9, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v9, v4

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1106
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childRight":I
    .end local v4    # "childBottom":I
    .end local v5    # "lp":Landroid/widget/StackView$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1117
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Landroid/widget/StackView;->onLayout()V

    .line 1118
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1180
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1181
    .local v0, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1182
    .local v1, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1183
    .local v2, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1185
    .local v3, "heightSpecMode":I
    iget v4, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_0

    iget v4, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 1189
    .local v4, "haveChildRefSize":Z
    :goto_0
    const v5, 0x3f8e38e4

    .line 1190
    .local v5, "factorY":F
    const/high16 v7, 0x1000000

    const/high16 v8, -0x80000000

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v3, :cond_2

    .line 1191
    if-eqz v4, :cond_1

    .line 1193
    iget v10, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v10, v10

    add-float v11, v9, v5

    mul-float/2addr v10, v11

    .line 1192
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v11, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int/2addr v10, v11

    goto :goto_1

    .line 1193
    :cond_1
    move v10, v6

    :goto_1
    move v1, v10

    goto :goto_3

    .line 1194
    :cond_2
    if-ne v3, v8, :cond_5

    .line 1195
    if-eqz v4, :cond_4

    .line 1196
    iget v10, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v10, v10

    add-float v11, v9, v5

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v11, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int/2addr v10, v11

    .line 1198
    .local v10, "height":I
    if-gt v10, v1, :cond_3

    .line 1199
    move v1, v10

    goto :goto_2

    .line 1201
    :cond_3
    or-int/2addr v1, v7

    .line 1204
    .end local v10    # "height":I
    :goto_2
    goto :goto_3

    .line 1205
    :cond_4
    const/4 v1, 0x0

    .line 1209
    :cond_5
    :goto_3
    const v10, 0x3f8e38e4

    .line 1210
    .local v10, "factorX":F
    if-nez v2, :cond_7

    .line 1211
    if-eqz v4, :cond_6

    .line 1213
    iget v6, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    int-to-float v6, v6

    add-float/2addr v9, v10

    mul-float/2addr v6, v9

    .line 1212
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int/2addr v6, v7

    nop

    .line 1213
    :cond_6
    move v0, v6

    goto :goto_5

    .line 1214
    :cond_7
    if-ne v3, v8, :cond_a

    .line 1215
    if-eqz v4, :cond_9

    .line 1216
    iget v6, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    iget v8, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr v6, v8

    iget v8, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int/2addr v6, v8

    .line 1217
    .local v6, "width":I
    if-gt v6, v0, :cond_8

    .line 1218
    move v0, v6

    goto :goto_4

    .line 1220
    :cond_8
    or-int/2addr v0, v7

    .line 1222
    .end local v6    # "width":I
    :goto_4
    goto :goto_5

    .line 1223
    :cond_9
    const/4 v0, 0x0

    .line 1226
    :cond_a
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/widget/StackView;->setMeasuredDimension(II)V

    .line 1227
    invoke-direct {p0}, Landroid/widget/StackView;->measureChildren()V

    .line 1228
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 709
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 711
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 712
    .local v0, "action":I
    iget v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 713
    .local v1, "pointerIndex":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 715
    const-string v3, "StackView"

    const-string v4, "Error: No data for our primary pointer."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return v2

    .line 719
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 720
    .local v4, "newY":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 721
    .local v5, "newX":F
    iget v6, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v6, v4, v6

    .line 722
    .local v6, "deltaY":F
    iget v7, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float v7, v5, v7

    .line 723
    .local v7, "deltaX":F
    iget-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_1

    .line 724
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 726
    :cond_1
    iget-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 728
    and-int/lit16 v8, v0, 0xff

    const/4 v9, 0x6

    const/4 v10, 0x1

    if-eq v8, v9, :cond_5

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 757
    :pswitch_0
    iput v3, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 758
    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_0

    .line 730
    :pswitch_1
    invoke-direct {p0, v6}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    .line 732
    iget v2, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float v2, v7, v2

    .line 733
    .local v2, "rx":F
    iget v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 734
    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    sub-float v8, v6, v8

    iget v9, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v8, v3

    .line 735
    .local v8, "r":F
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v9, v10, :cond_2

    sub-float v8, v3, v8

    .line 736
    :cond_2
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    sub-float/2addr v3, v8

    invoke-virtual {v9, v3}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 737
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v3, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 738
    return v10

    .line 739
    .end local v8    # "r":F
    :cond_3
    iget v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v8, v10, :cond_6

    .line 740
    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    add-float/2addr v8, v6

    neg-float v8, v8

    iget v9, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v8, v3

    .line 741
    .restart local v8    # "r":F
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v9, v10, :cond_4

    sub-float v8, v3, v8

    .line 742
    :cond_4
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v3, v8}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 743
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v3, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 744
    return v10

    .line 749
    .end local v2    # "rx":F
    .end local v8    # "r":F
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    .line 750
    goto :goto_0

    .line 753
    :cond_5
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 754
    nop

    .line 762
    :cond_6
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1253
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1254
    return v1

    .line 1256
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1257
    return v2

    .line 1259
    :cond_1
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_2

    .line 1273
    return v2

    .line 1267
    :cond_2
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_3

    .line 1268
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 1269
    return v1

    .line 1271
    :cond_3
    return v2

    .line 1261
    :cond_4
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_5

    .line 1262
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 1263
    return v1

    .line 1265
    :cond_5
    return v2
.end method

.method public showNext()V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 392
    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v0, :cond_0

    return-void

    .line 393
    :cond_0
    iget-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v0, :cond_1

    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 396
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 397
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 398
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 401
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 402
    return-void
.end method

.method showOnly(IZ)V
    .locals 5
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .line 424
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 427
    iget v0, p0, Landroid/widget/StackView;->mCurrentWindowEnd:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/widget/StackView;->mCurrentWindowStart:I

    if-lt v0, v1, :cond_1

    .line 428
    invoke-virtual {p0}, Landroid/widget/StackView;->getWindowSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/StackView;->modulo(II)I

    move-result v1

    .line 429
    .local v1, "index":I
    iget-object v2, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 430
    .local v2, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v2, :cond_0

    .line 431
    iget-object v3, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v3, v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 432
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 427
    .end local v1    # "index":I
    .end local v2    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 435
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 438
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 439
    iput-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 440
    return-void
.end method

.method public showPrevious()V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 410
    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v0, :cond_0

    return-void

    .line 411
    :cond_0
    iget-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v0, :cond_1

    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 413
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 414
    invoke-direct {p0, v1, v0}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 415
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 416
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 419
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    .line 420
    return-void
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 457
    invoke-virtual {p0}, Landroid/widget/StackView;->updateClickFeedback()V

    .line 458
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 460
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    .line 461
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 10
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    .line 232
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_0

    .line 233
    move-object v2, p3

    check-cast v2, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v2}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 234
    invoke-virtual {p3, v0}, Landroid/view/View;->setRotationX(F)V

    .line 235
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/StackView$LayoutParams;

    .line 236
    .local v2, "lp":Landroid/widget/StackView$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 237
    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 240
    .end local v2    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_0
    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne p2, v5, :cond_1

    .line 241
    invoke-direct {p0, p2, p3, v1}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 242
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_2

    .line 244
    :cond_1
    const/4 v5, 0x2

    if-nez p1, :cond_3

    if-ne p2, v4, :cond_3

    .line 246
    move-object v3, p3

    check-cast v3, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v3}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 247
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v6, p0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 250
    .local v3, "duration":I
    new-instance v6, Landroid/widget/StackView$StackSlider;

    iget-object v7, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v6, p0, v7}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 251
    .local v6, "animationSlider":Landroid/widget/StackView$StackSlider;
    invoke-virtual {v6, p3}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 253
    if-eqz p4, :cond_2

    .line 254
    const-string v7, "YProgress"

    new-array v8, v4, [F

    aput v0, v8, v1

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 255
    .local v7, "slideInY":Landroid/animation/PropertyValuesHolder;
    const-string v8, "XProgress"

    new-array v9, v4, [F

    aput v0, v9, v1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 256
    .local v0, "slideInX":Landroid/animation/PropertyValuesHolder;
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v1

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 258
    .local v1, "slideIn":Landroid/animation/ObjectAnimator;
    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 259
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    move-object v4, p3

    check-cast v4, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v4, v1}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 261
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 262
    .end local v0    # "slideInX":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "slideIn":Landroid/animation/ObjectAnimator;
    .end local v7    # "slideInY":Landroid/animation/PropertyValuesHolder;
    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {v6, v0}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 264
    invoke-virtual {v6, v0}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 266
    .end local v3    # "duration":I
    .end local v6    # "animationSlider":Landroid/widget/StackView$StackSlider;
    :goto_0
    goto/16 :goto_2

    :cond_3
    if-ne p1, v4, :cond_5

    if-nez p2, :cond_5

    .line 268
    move-object v6, p3

    check-cast v6, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v6}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 269
    iget-object v6, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v7, p0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 271
    .local v6, "duration":I
    new-instance v7, Landroid/widget/StackView$StackSlider;

    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v7, p0, v8}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 272
    .local v7, "animationSlider":Landroid/widget/StackView$StackSlider;
    invoke-virtual {v7, p3}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 273
    if-eqz p4, :cond_4

    .line 274
    const-string v8, "YProgress"

    new-array v9, v4, [F

    aput v3, v9, v1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 275
    .local v3, "slideOutY":Landroid/animation/PropertyValuesHolder;
    const-string v8, "XProgress"

    new-array v9, v4, [F

    aput v0, v9, v1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 276
    .local v0, "slideOutX":Landroid/animation/PropertyValuesHolder;
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v1

    aput-object v3, v5, v4

    invoke-static {v7, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 278
    .local v1, "slideOut":Landroid/animation/ObjectAnimator;
    int-to-long v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 279
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    move-object v4, p3

    check-cast v4, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v4, v1}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 281
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 282
    .end local v0    # "slideOutX":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "slideOut":Landroid/animation/ObjectAnimator;
    .end local v3    # "slideOutY":Landroid/animation/PropertyValuesHolder;
    goto :goto_1

    .line 283
    :cond_4
    invoke-virtual {v7, v3}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 284
    invoke-virtual {v7, v0}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 286
    .end local v6    # "duration":I
    .end local v7    # "animationSlider":Landroid/widget/StackView$StackSlider;
    :goto_1
    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    .line 288
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 289
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 290
    :cond_6
    if-eqz p1, :cond_7

    if-ne p1, v4, :cond_8

    :cond_7
    if-le p2, v4, :cond_8

    .line 291
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 293
    invoke-virtual {p3, v0}, Landroid/view/View;->setRotationX(F)V

    .line 294
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    .line 295
    .local v0, "lp":Landroid/widget/StackView$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 296
    invoke-virtual {v0, v1}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 297
    .end local v0    # "lp":Landroid/widget/StackView$LayoutParams;
    goto :goto_2

    :cond_8
    if-ne p1, v2, :cond_9

    .line 298
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 299
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 300
    :cond_9
    if-ne p2, v2, :cond_b

    .line 301
    if-eqz p4, :cond_a

    .line 302
    new-instance v0, Landroid/widget/StackView$1;

    invoke-direct {v0, p0, p3}, Landroid/widget/StackView$1;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v4}, Landroid/widget/StackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 308
    :cond_a
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 313
    :cond_b
    :goto_2
    if-eq p2, v2, :cond_c

    .line 314
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 316
    :cond_c
    return-void
.end method

.method updateClickFeedback()V
    .locals 5

    .line 443
    iget-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    if-nez v0, :cond_1

    .line 444
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 445
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 446
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v4, p0, Landroid/widget/StackView;->mClickColor:I

    .line 447
    invoke-virtual {v3, v1, v4}, Landroid/widget/StackView$HolographicHelper;->createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 446
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 448
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 449
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 451
    :cond_0
    iput-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 453
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
