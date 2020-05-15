.class public Lcom/android/internal/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/ScrollingView;
.implements Lcom/android/internal/widget/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;,
        Lcom/android/internal/widget/RecyclerView$ItemAnimator;,
        Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Lcom/android/internal/widget/RecyclerView$OnFlingListener;,
        Lcom/android/internal/widget/RecyclerView$State;,
        Lcom/android/internal/widget/RecyclerView$SavedState;,
        Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;,
        Lcom/android/internal/widget/RecyclerView$SmoothScroller;,
        Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;,
        Lcom/android/internal/widget/RecyclerView$LayoutParams;,
        Lcom/android/internal/widget/RecyclerView$ViewHolder;,
        Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Lcom/android/internal/widget/RecyclerView$RecyclerListener;,
        Lcom/android/internal/widget/RecyclerView$OnScrollListener;,
        Lcom/android/internal/widget/RecyclerView$SimpleOnItemTouchListener;,
        Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;,
        Lcom/android/internal/widget/RecyclerView$ItemDecoration;,
        Lcom/android/internal/widget/RecyclerView$LayoutManager;,
        Lcom/android/internal/widget/RecyclerView$Adapter;,
        Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;,
        Lcom/android/internal/widget/RecyclerView$Recycler;,
        Lcom/android/internal/widget/RecyclerView$RecycledViewPool;,
        Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;,
        Lcom/android/internal/widget/RecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final ALLOW_THREAD_GAP_WORK:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field static final DEBUG:Z = false

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final HORIZONTAL:I = 0x0

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final VERTICAL:I = 0x1

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

.field mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

.field mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Lcom/android/internal/widget/ChildHelper;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field private mDispatchScrollCounter:I

.field private mEatRequestLayout:I

.field private mEatenAccessibilityChangeFlags:I

.field mFirstLayoutComplete:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mGapWorker:Lcom/android/internal/widget/GapWorker;

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field mIsAttached:Z

.field mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

.field mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field final mState:Lcom/android/internal/widget/RecyclerView$State;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 142
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010436

    aput v3, v1, v2

    sput-object v1, Lcom/android/internal/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 144
    new-array v1, v0, [I

    const v3, 0x10100eb

    aput v3, v1, v2

    sput-object v1, Lcom/android/internal/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 153
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 162
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 168
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 174
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-gt v1, v3, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 184
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v3, :cond_6

    move v1, v0

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    .line 273
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    sput-object v1, Lcom/android/internal/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 480
    new-instance v0, Lcom/android/internal/widget/RecyclerView$3;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$3;-><init>()V

    sput-object v0, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 527
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 528
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 531
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 532
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 535
    move/from16 v9, p3

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 276
    new-instance v0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, v6}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    .line 278
    new-instance v0, Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-direct {v0, v6}, Lcom/android/internal/widget/RecyclerView$Recycler;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 295
    new-instance v0, Lcom/android/internal/widget/ViewInfoStore;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewInfoStore;-><init>()V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    .line 309
    new-instance v0, Lcom/android/internal/widget/RecyclerView$1;

    invoke-direct {v0, v6}, Lcom/android/internal/widget/RecyclerView$1;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 329
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 330
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 331
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 344
    const/4 v10, 0x0

    iput v10, v6, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    .line 369
    iput-boolean v10, v6, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 379
    iput v10, v6, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 388
    iput v10, v6, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 392
    new-instance v0, Lcom/android/internal/widget/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/internal/widget/DefaultItemAnimator;-><init>()V

    iput-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    .line 419
    iput v10, v6, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    .line 420
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 431
    const/4 v1, 0x1

    iput v1, v6, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    .line 432
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 434
    new-instance v1, Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-direct {v1, v6}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v1, v6, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    .line 437
    nop

    .line 438
    sget-boolean v1, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v1}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v6, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 440
    new-instance v1, Lcom/android/internal/widget/RecyclerView$State;

    invoke-direct {v1}, Lcom/android/internal/widget/RecyclerView$State;-><init>()V

    iput-object v1, v6, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 446
    iput-boolean v10, v6, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 447
    iput-boolean v10, v6, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    .line 448
    new-instance v1, Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v1, v6}, Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v1, v6, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 450
    iput-boolean v10, v6, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 456
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 458
    new-array v2, v1, [I

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    .line 459
    new-array v2, v1, [I

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    .line 460
    new-array v2, v1, [I

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    .line 467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 470
    new-instance v2, Lcom/android/internal/widget/RecyclerView$2;

    invoke-direct {v2, v6}, Lcom/android/internal/widget/RecyclerView$2;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 491
    new-instance v2, Lcom/android/internal/widget/RecyclerView$4;

    invoke-direct {v2, v6}, Lcom/android/internal/widget/RecyclerView$4;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mViewInfoProcessCallback:Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;

    .line 536
    if-eqz v8, :cond_1

    .line 537
    sget-object v2, Lcom/android/internal/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    invoke-virtual {v7, v8, v2, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 538
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v6, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    .line 539
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 540
    .end local v2    # "a":Landroid/content/res/TypedArray;
    goto :goto_1

    .line 541
    :cond_1
    iput-boolean v11, v6, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    .line 543
    :goto_1
    invoke-virtual {v6, v11}, Lcom/android/internal/widget/RecyclerView;->setScrollContainer(Z)V

    .line 544
    invoke-virtual {v6, v11}, Lcom/android/internal/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 546
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    .line 547
    .local v12, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v6, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    .line 548
    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, v6, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    .line 549
    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, v6, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    if-ne v2, v1, :cond_2

    move v2, v11

    goto :goto_2

    :cond_2
    move v2, v10

    :goto_2
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 552
    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v3, v6, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->setListener(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->initAdapterManager()V

    .line 554
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->initChildrenHelper()V

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 557
    invoke-virtual {v6, v11}, Lcom/android/internal/widget/RecyclerView;->setImportantForAccessibility(I)V

    .line 559
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    .line 560
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 561
    new-instance v2, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v2, v6}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/RecyclerView;->setAccessibilityDelegateCompat(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V

    .line 564
    const/4 v13, 0x1

    .line 566
    .local v13, "nestedScrollingEnabled":Z
    const/high16 v2, 0x40000

    if-eqz v8, :cond_6

    .line 567
    const/4 v14, 0x0

    .line 568
    .local v14, "defStyleRes":I
    sget-object v3, Lcom/android/internal/R$styleable;->RecyclerView:[I

    invoke-virtual {v7, v8, v3, v9, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 570
    .local v15, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 571
    .local v16, "layoutManagerName":Ljava/lang/String;
    invoke-virtual {v15, v11, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 573
    .local v5, "descendantFocusability":I
    if-ne v5, v0, :cond_4

    .line 574
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 576
    :cond_4
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 577
    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v16

    move-object v3, v8

    move v4, v9

    move/from16 v17, v5

    move v5, v14

    .end local v5    # "descendantFocusability":I
    .local v17, "descendantFocusability":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 579
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 580
    sget-object v0, Lcom/android/internal/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {v7, v8, v0, v9, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 582
    .end local v15    # "a":Landroid/content/res/TypedArray;
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 583
    .end local v13    # "nestedScrollingEnabled":Z
    .local v1, "nestedScrollingEnabled":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 585
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v14    # "defStyleRes":I
    .end local v16    # "layoutManagerName":Ljava/lang/String;
    .end local v17    # "descendantFocusability":I
    move v13, v1

    .end local v1    # "nestedScrollingEnabled":Z
    .restart local v13    # "nestedScrollingEnabled":Z
    :cond_5
    goto :goto_3

    .line 586
    :cond_6
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 590
    :goto_3
    invoke-virtual {v6, v13}, Lcom/android/internal/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 591
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/RecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView;
    .param p1, "x1"    # I

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView;

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 136
    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    return v0
.end method

.method private addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1236
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1237
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1238
    .local v1, "alreadyParented":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 1239
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1241
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/internal/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    .line 1242
    :cond_1
    if-nez v1, :cond_2

    .line 1243
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v0, v2}, Lcom/android/internal/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 1245
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ChildHelper;->hide(Landroid/view/View;)V

    .line 1247
    :goto_1
    return-void
.end method

.method private animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 2
    .param p1, "oldHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "preInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p4, "postInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p5, "oldHolderDisappearing"    # Z
    .param p6, "newHolderDisappearing"    # Z

    .line 3767
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3768
    if-eqz p5, :cond_0

    .line 3769
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3771
    :cond_0
    if-eq p1, p2, :cond_2

    .line 3772
    if-eqz p6, :cond_1

    .line 3773
    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3775
    :cond_1
    iput-object p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 3777
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3778
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3779
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3780
    iput-object p1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 3782
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3783
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    .line 3785
    :cond_3
    return-void
.end method

.method private cancelTouch()V
    .locals 1

    .line 2883
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->resetTouch()V

    .line 2884
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 2885
    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p0, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5122
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 5123
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5124
    .local v0, "item":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    .line 5125
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 5126
    return-void

    .line 5129
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 5130
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 5131
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 5133
    :cond_1
    const/4 v0, 0x0

    .line 5135
    .end local v1    # "parent":Landroid/view/ViewParent;
    :goto_1
    goto :goto_0

    .line 5136
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5138
    .end local v0    # "item":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 616
    if-eqz p2, :cond_1

    .line 617
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 618
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 622
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .local v0, "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 626
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 628
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    nop

    .line 629
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 631
    .local v1, "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    const/4 v2, 0x0

    .line 633
    .local v2, "constructorArgs":[Ljava/lang/Object;
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    sget-object v5, Lcom/android/internal/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 634
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 635
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    aput-object p3, v6, v3

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v6

    .line 644
    nop

    .line 641
    move-object v4, v5

    goto :goto_1

    .line 636
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    :catch_0
    move-exception v5

    .line 638
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 643
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    nop

    .line 641
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    nop

    .line 645
    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 646
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    .line 662
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    goto/16 :goto_2

    .line 639
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v1    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    .restart local v5    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 640
    .local v3, "e1":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3, v5}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 641
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": Error creating LayoutManager "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    .line 659
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v3    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Class is not a LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 656
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Cannot access non-public constructor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 653
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 650
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 647
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Unable to find LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 665
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_2
    return-void
.end method

.method private didChildRangeChange(II)Z
    .locals 3
    .param p1, "minPositionPreLayout"    # I
    .param p2, "maxPositionPreLayout"    # I

    .line 3719
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3720
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v2

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    .line 3091
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3092
    .local v0, "flags":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3093
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3094
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 3095
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3096
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 3097
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3099
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 10

    .line 3429
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3430
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3431
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 3432
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewInfoStore;->clear()V

    .line 3433
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3434
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3435
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->saveFocusInfo()V

    .line 3436
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v3, v3, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 3437
    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 3438
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v1, v1, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3439
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 3440
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3442
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_3

    .line 3444
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3445
    .local v0, "count":I
    move v1, v2

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 3446
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3447
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3448
    goto :goto_2

    .line 3450
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 3452
    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v6

    .line 3453
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 3451
    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 3454
    .local v4, "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/widget/ViewInfoStore;->addToPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3455
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v5, v5, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3456
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3457
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v5

    .line 3465
    .local v5, "key":J
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v7, v5, v6, v3}, Lcom/android/internal/widget/ViewInfoStore;->addToOldChangeHolders(JLcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3445
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v4    # "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v5    # "key":J
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3469
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_9

    .line 3476
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->saveOldPositions()V

    .line 3477
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3478
    .local v0, "didStructureChange":Z
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3480
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 3481
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v0, v1, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3483
    move v1, v2

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 3484
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3485
    .local v3, "child":Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 3486
    .local v4, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3487
    goto :goto_4

    .line 3489
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ViewInfoStore;->isInPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 3490
    invoke-static {v4}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v5

    .line 3491
    .local v5, "flags":I
    const/16 v6, 0x2000

    .line 3492
    invoke-virtual {v4, v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v6

    .line 3493
    .local v6, "wasHidden":Z
    if-nez v6, :cond_5

    .line 3494
    or-int/lit16 v5, v5, 0x1000

    .line 3496
    :cond_5
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 3497
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v9

    .line 3496
    invoke-virtual {v7, v8, v4, v5, v9}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 3498
    .local v7, "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-eqz v6, :cond_6

    .line 3499
    invoke-virtual {p0, v4, v7}, Lcom/android/internal/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 3501
    :cond_6
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v8, v4, v7}, Lcom/android/internal/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3483
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v5    # "flags":I
    .end local v6    # "wasHidden":Z
    .end local v7    # "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3506
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->clearOldPositions()V

    .line 3507
    .end local v0    # "didStructureChange":Z
    goto :goto_5

    .line 3508
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->clearOldPositions()V

    .line 3510
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3511
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3512
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    .line 3513
    return-void
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    .line 3520
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 3521
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3522
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3523
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3524
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 3525
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 3528
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3529
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 3531
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    .line 3535
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v2, v2, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3536
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v2, 0x4

    iput v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    .line 3537
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3538
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3539
    return-void
.end method

.method private dispatchLayoutStep3()V
    .locals 19

    .line 3546
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3547
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 3548
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3549
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v8, 0x1

    iput v8, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    .line 3550
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_5

    .line 3554
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v8

    .local v0, "i":I
    :goto_0
    move v9, v0

    .end local v0    # "i":I
    .local v9, "i":I
    if-ltz v9, :cond_4

    .line 3555
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v10

    .line 3556
    .local v10, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v10}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3557
    goto :goto_2

    .line 3559
    :cond_0
    invoke-virtual {v7, v10}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v11

    .line 3560
    .local v11, "key":J
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 3561
    invoke-virtual {v0, v1, v10}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v13

    .line 3562
    .local v13, "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v11, v12}, Lcom/android/internal/widget/ViewInfoStore;->getFromOldChangeHolders(J)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v14

    .line 3563
    .local v14, "oldChangeViewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3574
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/ViewInfoStore;->isDisappearing(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v15

    .line 3576
    .local v15, "oldDisappearing":Z
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ViewInfoStore;->isDisappearing(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v16

    .line 3577
    .local v16, "newDisappearing":Z
    if-eqz v15, :cond_1

    if-ne v14, v10, :cond_1

    .line 3579
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v13}, Lcom/android/internal/widget/ViewInfoStore;->addToPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 3581
    :cond_1
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/ViewInfoStore;->popFromPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v17

    .line 3584
    .local v17, "preInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v13}, Lcom/android/internal/widget/ViewInfoStore;->addToPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3585
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ViewInfoStore;->popFromPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v18

    .line 3586
    .local v18, "postInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-nez v17, :cond_2

    .line 3587
    invoke-direct {v7, v11, v12, v10, v14}, Lcom/android/internal/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 3589
    :cond_2
    move-object v0, v7

    move-object v1, v14

    move-object v2, v10

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move v5, v15

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/RecyclerView;->animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    .line 3593
    .end local v15    # "oldDisappearing":Z
    .end local v16    # "newDisappearing":Z
    .end local v17    # "preInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v18    # "postInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :goto_1
    goto :goto_2

    .line 3594
    :cond_3
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v13}, Lcom/android/internal/widget/ViewInfoStore;->addToPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3554
    .end local v10    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v11    # "key":J
    .end local v13    # "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v14    # "oldChangeViewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :goto_2
    add-int/lit8 v0, v9, -0x1

    .end local v9    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 3599
    .end local v0    # "i":I
    :cond_4
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoProcessCallback:Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewInfoStore;->process(Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;)V

    .line 3602
    :cond_5
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 3603
    iget-object v0, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v1, v1, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 3604
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3605
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v0, v1, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3607
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v0, v1, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 3608
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iput-boolean v0, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 3609
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 3610
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3612
    :cond_6
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-boolean v1, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v1, :cond_7

    .line 3615
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iput v0, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 3616
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iput-boolean v0, v1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 3617
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 3620
    :cond_7
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v2, v7, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V

    .line 3621
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3622
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3623
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1}, Lcom/android/internal/widget/ViewInfoStore;->clear()V

    .line 3624
    iget-object v1, v7, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v1, v1, v0

    iget-object v2, v7, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v8

    invoke-direct {v7, v1, v2}, Lcom/android/internal/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3625
    invoke-virtual {v7, v0, v0}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 3627
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->recoverFocusFromState()V

    .line 3628
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->resetFocusInfo()V

    .line 3629
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2586
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 2587
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2589
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    goto :goto_0

    .line 2591
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v3, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2592
    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_2

    .line 2594
    :cond_1
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2596
    :cond_2
    return v2

    .line 2602
    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2603
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2604
    .local v3, "listenerCount":I
    move v4, v1

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_5

    .line 2605
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2606
    .local v5, "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v5, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2607
    iput-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2608
    return v2

    .line 2604
    .end local v5    # "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2612
    .end local v3    # "listenerCount":I
    .end local v4    # "i":I
    :cond_5
    return v1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2569
    .local v0, "action":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 2570
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2573
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2574
    .local v2, "listenerCount":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 2575
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2576
    .local v5, "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v5, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v0, v1, :cond_2

    .line 2577
    iput-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2578
    const/4 v1, 0x1

    return v1

    .line 2574
    .end local v5    # "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2581
    .end local v4    # "i":I
    :cond_3
    return v3
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 8
    .param p1, "into"    # [I

    .line 3693
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3694
    .local v0, "count":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3695
    const/4 v3, -0x1

    aput v3, p1, v2

    .line 3696
    aput v3, p1, v1

    .line 3697
    return-void

    .line 3699
    :cond_0
    const v3, 0x7fffffff

    .line 3700
    .local v3, "minPositionPreLayout":I
    const/high16 v4, -0x80000000

    .line 3701
    .local v4, "maxPositionPreLayout":I
    move v5, v4

    move v4, v3

    move v3, v2

    .local v3, "i":I
    .local v4, "minPositionPreLayout":I
    .local v5, "maxPositionPreLayout":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 3702
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 3703
    .local v6, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3704
    goto :goto_1

    .line 3706
    :cond_1
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    .line 3707
    .local v7, "pos":I
    if-ge v7, v4, :cond_2

    .line 3708
    move v4, v7

    .line 3710
    :cond_2
    if-le v7, v5, :cond_3

    .line 3711
    move v5, v7

    .line 3701
    .end local v6    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v7    # "pos":I
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3714
    .end local v3    # "i":I
    :cond_4
    aput v4, p1, v2

    .line 3715
    aput v5, p1, v1

    .line 3716
    return-void
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 5100
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5101
    return-object v1

    .line 5103
    :cond_0
    instance-of v0, p0, Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 5104
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    return-object v0

    .line 5106
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5107
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 5108
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 5109
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5110
    .local v4, "child":Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v5

    .line 5111
    .local v5, "descendant":Lcom/android/internal/widget/RecyclerView;
    if-eqz v5, :cond_2

    .line 5112
    return-object v5

    .line 5108
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "descendant":Lcom/android/internal/widget/RecyclerView;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5115
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .locals 6

    .line 3309
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    goto :goto_0

    .line 3310
    :cond_0
    const/4 v0, 0x0

    .line 3312
    .local v0, "startFocusSearchIndex":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    .line 3313
    .local v1, "itemCount":I
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 3314
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3315
    .local v3, "nextFocus":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_1

    .line 3316
    goto :goto_2

    .line 3318
    :cond_1
    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3319
    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v4

    .line 3313
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3322
    .end local v2    # "i":I
    .end local v3    # "nextFocus":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3
    :goto_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3323
    .local v2, "limit":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_3
    const/4 v4, 0x0

    if-ltz v3, :cond_6

    .line 3324
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 3325
    .local v5, "nextFocus":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v5, :cond_4

    .line 3326
    return-object v4

    .line 3328
    :cond_4
    iget-object v4, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3329
    iget-object v4, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v4

    .line 3323
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 3332
    .end local v3    # "i":I
    .end local v5    # "nextFocus":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_6
    return-object v4
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .line 4215
    if-nez p0, :cond_0

    .line 4216
    const/4 v0, 0x0

    return-object v0

    .line 4218
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 4490
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 4491
    .local v0, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 4492
    .local v1, "insets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 4493
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 4494
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 4495
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 4492
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4496
    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 3410
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3411
    .local v0, "lastKnownId":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3412
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 3413
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3414
    .local v1, "id":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3415
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3417
    .end local v1    # "id":I
    :cond_0
    goto :goto_0

    .line 3418
    :cond_1
    return v0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .line 668
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 671
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    return-object p2

    .line 674
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScrollFactor()F
    .locals 4

    .line 2936
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2937
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2938
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2940
    nop

    .line 2941
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2940
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    goto :goto_0

    .line 2943
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 2946
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    return v0
.end method

.method private handleMissingPreInfoForChangeError(JLcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 9
    .param p1, "key"    # J
    .param p3, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p4, "oldChangeViewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 3649
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3650
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 3651
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3652
    .local v2, "view":Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3653
    .local v3, "other":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-ne v3, p3, :cond_0

    .line 3654
    goto :goto_1

    .line 3656
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 3657
    .local v4, "otherKey":J
    cmp-long v6, v4, p1

    if-nez v6, :cond_2

    .line 3658
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3659
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3663
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3650
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "other":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v4    # "otherKey":J
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3671
    .end local v1    # "i":I
    :cond_3
    const-string v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cannot be found but it is necessary for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3674
    return-void
.end method

.method private hasUpdatedView()Z
    .locals 5

    .line 1624
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 1625
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1626
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 1627
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1628
    goto :goto_1

    .line 1630
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1631
    const/4 v1, 0x1

    return v1

    .line 1625
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1634
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method private initChildrenHelper()V
    .locals 2

    .line 678
    new-instance v0, Lcom/android/internal/widget/ChildHelper;

    new-instance v1, Lcom/android/internal/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/RecyclerView$5;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ChildHelper;-><init>(Lcom/android/internal/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    .line 775
    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 5
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 2328
    const/4 v0, 0x0

    if-eqz p2, :cond_9

    if-ne p2, p0, :cond_0

    goto :goto_3

    .line 2331
    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 2332
    return v1

    .line 2335
    :cond_1
    const/4 v2, 0x2

    if-eq p3, v2, :cond_3

    if-ne p3, v1, :cond_2

    goto :goto_0

    .line 2348
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 2336
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v0

    .line 2337
    .local v3, "rtl":Z
    :goto_1
    if-ne p3, v2, :cond_5

    move v0, v1

    nop

    :cond_5
    xor-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 2338
    const/16 v0, 0x42

    goto :goto_2

    :cond_6
    const/16 v0, 0x11

    .line 2339
    .local v0, "absHorizontal":I
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2340
    return v1

    .line 2342
    :cond_7
    if-ne p3, v2, :cond_8

    .line 2343
    const/16 v1, 0x82

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 2345
    :cond_8
    const/16 v1, 0x21

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 2329
    .end local v0    # "absHorizontal":I
    .end local v3    # "rtl":Z
    :cond_9
    :goto_3
    return v0
.end method

.method private isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z
    .locals 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 2357
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2358
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2359
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2360
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2361
    const/16 v0, 0x11

    const/4 v1, 0x1

    if-eq p3, v0, :cond_9

    const/16 v0, 0x21

    if-eq p3, v0, :cond_6

    const/16 v0, 0x42

    if-eq p3, v0, :cond_3

    const/16 v0, 0x82

    if-ne p3, v0, :cond_2

    .line 2375
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gt v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 2379
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "direction must be absolute. received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2367
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gt v0, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v0, v2, :cond_5

    goto :goto_1

    :cond_5
    move v1, v3

    :goto_1
    return v1

    .line 2371
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v2, :cond_7

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v2, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v0, v2, :cond_8

    goto :goto_2

    :cond_8
    move v1, v3

    :goto_2
    return v1

    .line 2363
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-gt v0, v2, :cond_a

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-lt v0, v2, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v0, v2, :cond_b

    goto :goto_3

    :cond_b
    move v1, v3

    :goto_3
    return v1
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2889
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    .line 2891
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2892
    .local v1, "newIndex":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 2893
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 2894
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 2896
    .end local v1    # "newIndex":I
    :cond_1
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .line 3180
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .line 3190
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 3193
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->reset()V

    .line 3194
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsChanged(Lcom/android/internal/widget/RecyclerView;)V

    .line 3199
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3200
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->preProcess()V

    goto :goto_0

    .line 3202
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3204
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    .line 3205
    .local v0, "animationTypeSupported":Z
    :goto_2
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-boolean v4, v4, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v4, :cond_6

    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 3211
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v4, v1

    goto :goto_3

    :cond_6
    move v4, v2

    :goto_3
    iput-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3212
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v4, v4, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_7

    .line 3215
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    iput-boolean v1, v3, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 3216
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "overscrollX"    # F
    .param p3, "y"    # F
    .param p4, "overscrollY"    # F

    .line 2072
    const/4 v0, 0x0

    .line 2073
    .local v0, "invalidate":Z
    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    .line 2074
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureLeftGlow()V

    .line 2075
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p3, v5

    sub-float v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2076
    const/4 v0, 0x1

    goto :goto_0

    .line 2077
    :cond_0
    cmpl-float v2, p2, v1

    if-lez v2, :cond_1

    .line 2078
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureRightGlow()V

    .line 2079
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p3, v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2080
    const/4 v0, 0x1

    .line 2083
    :cond_1
    :goto_0
    cmpg-float v2, p4, v1

    if-gez v2, :cond_2

    .line 2084
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureTopGlow()V

    .line 2085
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v3, p4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2086
    const/4 v0, 0x1

    goto :goto_1

    .line 2087
    :cond_2
    cmpl-float v2, p4, v1

    if-lez v2, :cond_3

    .line 2088
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureBottomGlow()V

    .line 2089
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p4, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p1, v5

    sub-float/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2090
    const/4 v0, 0x1

    .line 2093
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    cmpl-float v2, p2, v1

    if-nez v2, :cond_4

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_5

    .line 2094
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 2096
    :cond_5
    return-void
.end method

.method private recoverFocusFromState()V
    .locals 7

    .line 3336
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3337
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_a

    .line 3338
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3346
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3347
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3348
    .local v0, "focusedChild":Landroid/view/View;
    sget-boolean v1, Lcom/android/internal/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v1, :cond_2

    .line 3349
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3361
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 3364
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestFocus()Z

    .line 3365
    return-void

    .line 3367
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3370
    return-void

    .line 3373
    .end local v0    # "focusedChild":Landroid/view/View;
    :cond_3
    const/4 v0, 0x0

    .line 3377
    .local v0, "focusTarget":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-wide v1, v1, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3378
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-wide v1, v1, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForItemId(J)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3380
    :cond_4
    const/4 v1, 0x0

    .line 3381
    .local v1, "viewToFocus":Landroid/view/View;
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3382
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 3395
    :cond_5
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_1

    .line 3383
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 3390
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v1

    .line 3398
    :cond_7
    :goto_1
    if-eqz v1, :cond_9

    .line 3399
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v2, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v5, v2

    cmp-long v2, v5, v3

    if-eqz v2, :cond_8

    .line 3400
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v2, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3401
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3402
    move-object v1, v2

    .line 3405
    .end local v2    # "child":Landroid/view/View;
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3407
    :cond_9
    return-void

    .line 3343
    .end local v0    # "focusTarget":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v1    # "viewToFocus":Landroid/view/View;
    :cond_a
    :goto_2
    return-void
.end method

.method private releaseGlows()V
    .locals 2

    .line 2099
    const/4 v0, 0x0

    .line 2100
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    .line 2101
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2102
    const/4 v0, 0x1

    .line 2104
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 2105
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2106
    const/4 v0, 0x1

    .line 2108
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    .line 2109
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2110
    const/4 v0, 0x1

    .line 2112
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    .line 2113
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2114
    const/4 v0, 0x1

    .line 2116
    :cond_3
    if-eqz v0, :cond_4

    .line 2117
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 2119
    :cond_4
    return-void
.end method

.method private resetFocusInfo()V
    .locals 3

    .line 3294
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3295
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3296
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    .line 3297
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 2875
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2876
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2878
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopNestedScroll()V

    .line 2879
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->releaseGlows()V

    .line 2880
    return-void
.end method

.method private saveFocusInfo()V
    .locals 5

    .line 3273
    const/4 v0, 0x0

    .line 3274
    .local v0, "child":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 3275
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3278
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3279
    .local v1, "focusedVh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :goto_0
    if-nez v1, :cond_2

    .line 3280
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->resetFocusInfo()V

    goto :goto_3

    .line 3282
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    goto :goto_1

    :cond_3
    const-wide/16 v3, -0x1

    :goto_1
    iput-wide v3, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3286
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    goto :goto_2

    .line 3287
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_2

    .line 3288
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    :goto_2
    iput v3, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3289
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    .line 3291
    :goto_3
    return-void
.end method

.method private setAdapterInternal(Lcom/android/internal/widget/RecyclerView$Adapter;ZZ)V
    .locals 3
    .param p1, "adapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleViews"    # Z

    .line 1005
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V

    .line 1007
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 1009
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    .line 1010
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->removeAndRecycleViews()V

    .line 1012
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->reset()V

    .line 1013
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 1014
    .local v0, "oldAdapter":Lcom/android/internal/widget/RecyclerView$Adapter;
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 1015
    if-eqz p1, :cond_3

    .line 1016
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V

    .line 1017
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 1019
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_4

    .line 1020
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 1022
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;Z)V

    .line 1023
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 1024
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 1025
    return-void
.end method

.method private stopScrollersInternal()V
    .locals 1

    .line 2043
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->stop()V

    .line 2044
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2045
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 2047
    :cond_0
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 2145
    if-gez p1, :cond_0

    .line 2146
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureLeftGlow()V

    .line 2147
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 2148
    :cond_0
    if-lez p1, :cond_1

    .line 2149
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureRightGlow()V

    .line 2150
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2153
    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 2154
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureTopGlow()V

    .line 2155
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 2156
    :cond_2
    if-lez p2, :cond_3

    .line 2157
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureBottomGlow()V

    .line 2158
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2161
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 2162
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 2164
    :cond_5
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2417
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onAddFocusables(Lcom/android/internal/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2418
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2420
    :cond_1
    return-void
.end method

.method public addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "decor"    # Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    .line 1400
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;I)V

    .line 1401
    return-void
.end method

.method public addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;I)V
    .locals 2
    .param p1, "decor"    # Lcom/android/internal/widget/RecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .line 1371
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1378
    :cond_1
    if-gez p2, :cond_2

    .line 1379
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1381
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1383
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1384
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 1385
    return-void
.end method

.method public addOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 1080
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1081
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    return-void
.end method

.method public addOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2552
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2553
    return-void
.end method

.method public addOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    .line 1468
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1472
    return-void
.end method

.method animateAppearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "itemHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 3749
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3750
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animateAppearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3751
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    .line 3753
    :cond_0
    return-void
.end method

.method animateDisappearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 3757
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3758
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3759
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animateDisappearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3760
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    .line 3762
    :cond_0
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 2504
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2505
    if-nez p1, :cond_0

    .line 2506
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2509
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2512
    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 2522
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2523
    if-nez p1, :cond_0

    .line 2524
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2527
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2529
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez v0, :cond_2

    .line 2530
    const-string v0, "RecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks might be run during a measure & layout pass where you cannot change the RecyclerView data. Any method call that might change the structure of the RecyclerView or the adapter contents should be postponed to the next frame."

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2536
    :cond_2
    return-void
.end method

.method canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 4060
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    .line 4061
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    .line 4060
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

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

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 3886
    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->checkLayoutParams(Lcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method clearOldPositions()V
    .locals 4

    .line 3940
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3941
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3942
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3943
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3944
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 3941
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3947
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->clearOldPositions()V

    .line 3948
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .line 1103
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1106
    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .line 1489
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1492
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .line 1743
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1744
    return v1

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .line 1718
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1719
    return v1

    .line 1721
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .line 1766
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1767
    return v1

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .line 1815
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1816
    return v1

    .line 1818
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 1791
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1792
    return v1

    .line 1794
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .line 1838
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1839
    return v1

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 2122
    const/4 v0, 0x0

    .line 2123
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 2124
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2125
    const/4 v0, 0x1

    .line 2127
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 2128
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2129
    const/4 v0, 0x1

    .line 2131
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 2132
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2133
    const/4 v0, 0x1

    .line 2135
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 2136
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2137
    const/4 v0, 0x1

    .line 2139
    :cond_3
    if-eqz v0, :cond_4

    .line 2140
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 2142
    :cond_4
    return-void
.end method

.method consumePendingUpdateOperations()V
    .locals 2

    .line 1583
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1589
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1590
    return-void

    .line 1595
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    const/16 v1, 0xb

    .line 1596
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1598
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1599
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 1600
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1601
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->preProcess()V

    .line 1602
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v0, :cond_3

    .line 1603
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1604
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    goto :goto_0

    .line 1607
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 1610
    :cond_3
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1611
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1612
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    .line 1613
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1614
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    .line 1616
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1618
    :cond_5
    :goto_1
    return-void

    .line 1584
    :cond_6
    :goto_2
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    .line 1586
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1587
    return-void
.end method

.method defaultOnMeasure(II)V
    .locals 3
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 3028
    nop

    .line 3029
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3030
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMinimumWidth()I

    move-result v1

    .line 3028
    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    .line 3031
    .local v0, "width":I
    nop

    .line 3032
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 3033
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMinimumHeight()I

    move-result v2

    .line 3031
    invoke-static {p2, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v1

    .line 3035
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 3036
    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 6779
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6780
    .local v0, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 6781
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 6782
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6784
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 6785
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 6786
    .local v1, "cnt":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 6787
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 6786
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6790
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 6765
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6766
    .local v0, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 6767
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 6768
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6770
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 6771
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 6772
    .local v1, "cnt":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 6773
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 6772
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6776
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method dispatchLayout()V
    .locals 2

    .line 3244
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    .line 3245
    const-string v0, "RecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    return-void

    .line 3249
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 3250
    const-string v0, "RecyclerView"

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    return-void

    .line 3254
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3255
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3256
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3257
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V

    .line 3258
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_1

    .line 3259
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 3260
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 3267
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V

    goto :goto_1

    .line 3263
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V

    .line 3264
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3269
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep3()V

    .line 3270
    return-void
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 4588
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4589
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 4594
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4597
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 4598
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V

    .line 4600
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 4601
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4602
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V

    .line 4601
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4605
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 4
    .param p1, "hresult"    # I
    .param p2, "vresult"    # I

    .line 4548
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4551
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 4552
    .local v0, "scrollX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getScrollY()I

    move-result v1

    .line 4553
    .local v1, "scrollY":I
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/internal/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 4556
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->onScrolled(II)V

    .line 4560
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    if-eqz v2, :cond_0

    .line 4561
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrolled(Lcom/android/internal/widget/RecyclerView;II)V

    .line 4563
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 4564
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 4565
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrolled(Lcom/android/internal/widget/RecyclerView;II)V

    .line 4564
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4568
    .end local v2    # "i":I
    :cond_1
    iget v2, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4569
    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    .line 10426
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 10427
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 10428
    .local v1, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v2, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10429
    goto :goto_1

    .line 10431
    :cond_0
    iget v2, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10432
    .local v2, "state":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 10434
    iget-object v4, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 10435
    iput v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10426
    .end local v1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v2    # "state":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10439
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10440
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1224
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1225
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1216
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1217
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 3815
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3817
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3818
    .local v0, "count":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3819
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 3818
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3823
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .line 3824
    .local v2, "needsInvalidate":Z
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3825
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3826
    .local v3, "restore":I
    iget-boolean v5, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v1

    .line 3827
    .local v5, "padding":I
    :goto_1
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3828
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v5

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3829
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    move v2, v6

    .line 3830
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3832
    .end local v3    # "restore":I
    .end local v5    # "padding":I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3833
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3834
    .restart local v3    # "restore":I
    iget-boolean v5, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_4

    .line 3835
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3837
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    or-int/2addr v2, v5

    .line 3838
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3840
    .end local v3    # "restore":I
    :cond_6
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3841
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3842
    .restart local v3    # "restore":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 3843
    .local v5, "width":I
    iget-boolean v6, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    goto :goto_4

    :cond_7
    move v6, v1

    .line 3844
    .local v6, "padding":I
    :goto_4
    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3845
    neg-int v7, v6

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3846
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v4

    goto :goto_5

    :cond_8
    move v7, v1

    :goto_5
    or-int/2addr v2, v7

    .line 3847
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3849
    .end local v3    # "restore":I
    .end local v5    # "width":I
    .end local v6    # "padding":I
    :cond_9
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_c

    .line 3850
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3851
    .restart local v3    # "restore":I
    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3852
    iget-boolean v5, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_a

    .line 3853
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 3855
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3857
    :goto_6
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v1, v4

    nop

    :cond_b
    or-int/2addr v2, v1

    .line 3858
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3864
    .end local v3    # "restore":I
    :cond_c
    if-nez v2, :cond_d

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    .line 3865
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3866
    const/4 v2, 0x1

    .line 3869
    :cond_d
    if-eqz v2, :cond_e

    .line 3870
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 3872
    :cond_e
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 4424
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method eatRequestLayout()V
    .locals 2

    .line 1846
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    .line 1847
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1848
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1850
    :cond_0
    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 2207
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2208
    return-void

    .line 2210
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 2211
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2212
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2213
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2212
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2215
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2217
    :goto_0
    return-void
.end method

.method ensureLeftGlow()V
    .locals 4

    .line 2167
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2168
    return-void

    .line 2170
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2171
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2172
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2173
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2172
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2175
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2177
    :goto_0
    return-void
.end method

.method ensureRightGlow()V
    .locals 4

    .line 2180
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2181
    return-void

    .line 2183
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 2184
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2185
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2186
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2185
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2188
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2190
    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 2193
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2194
    return-void

    .line 2196
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 2197
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2198
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2199
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2198
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2201
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2204
    :goto_0
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 4407
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4408
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4409
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4410
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 4411
    .local v3, "translationX":F
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 4412
    .local v4, "translationY":F
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    .line 4413
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 4414
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    .line 4415
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 4416
    return-object v2

    .line 4408
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4419
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 4191
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4192
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 4193
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 4194
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 4196
    :cond_0
    if-ne v0, p0, :cond_1

    move-object v1, p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 4209
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4210
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "position"    # I

    .line 4320
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 4321
    const/4 v0, 0x0

    return-object v0

    .line 4323
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4325
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4326
    .local v1, "hidden":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 4327
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4328
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4329
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->getAdapterPositionFor(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 4330
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4331
    move-object v1, v3

    goto :goto_1

    .line 4333
    :cond_1
    return-object v3

    .line 4326
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4337
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method public findViewHolderForItemId(J)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "id"    # J

    .line 4381
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 4384
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4385
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4386
    .local v1, "hidden":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 4387
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4388
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 4389
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4390
    move-object v1, v3

    goto :goto_1

    .line 4392
    :cond_1
    return-object v3

    .line 4386
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4396
    .end local v2    # "i":I
    :cond_3
    return-object v1

    .line 4382
    .end local v0    # "childCount":I
    .end local v1    # "hidden":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public findViewHolderForLayoutPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .line 4299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4276
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "position"    # I
    .param p2, "checkNewPosition"    # Z

    .line 4341
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4342
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4343
    .local v1, "hidden":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 4344
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4345
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4346
    if-eqz p2, :cond_0

    .line 4347
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_1

    .line 4348
    goto :goto_1

    .line 4350
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_1

    .line 4351
    goto :goto_1

    .line 4353
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4354
    move-object v1, v3

    goto :goto_1

    .line 4356
    :cond_2
    return-object v3

    .line 4343
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4363
    .end local v2    # "i":I
    :cond_4
    return-object v1
.end method

.method public fling(II)Z
    .locals 7
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 1989
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1990
    const-string v0, "RecyclerView"

    const-string v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    return v1

    .line 1994
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    .line 1995
    return v1

    .line 1998
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1999
    .local v0, "canScrollHorizontal":Z
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 2001
    .local v2, "canScrollVertical":Z
    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_3

    .line 2002
    :cond_2
    const/4 p1, 0x0

    .line 2004
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_5

    .line 2005
    :cond_4
    const/4 p2, 0x0

    .line 2007
    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 2009
    return v1

    .line 2012
    :cond_6
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2013
    const/4 v3, 0x1

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move v4, v1

    goto :goto_1

    :cond_8
    :goto_0
    move v4, v3

    .line 2014
    .local v4, "canScroll":Z
    :goto_1
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 2016
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2017
    return v3

    .line 2020
    :cond_9
    if-eqz v4, :cond_a

    .line 2021
    iget v1, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v1

    iget v5, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2022
    iget v1, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v1

    iget v5, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2023
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->fling(II)V

    .line 2024
    return v3

    .line 2027
    .end local v4    # "canScroll":Z
    :cond_a
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 2255
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2256
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2257
    return-object v0

    .line 2259
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 2260
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2262
    .local v1, "canRunFocusFailure":Z
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    .line 2263
    .local v4, "ff":Landroid/view/FocusFinder;
    const/4 v5, 0x0

    if-eqz v1, :cond_d

    const/4 v6, 0x2

    if-eq p2, v6, :cond_2

    if-ne p2, v3, :cond_d

    .line 2267
    :cond_2
    const/4 v7, 0x0

    .line 2268
    .local v7, "needsFocusFailureLayout":Z
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2270
    if-ne p2, v6, :cond_3

    const/16 v8, 0x82

    goto :goto_1

    :cond_3
    const/16 v8, 0x21

    .line 2271
    .local v8, "absDir":I
    :goto_1
    invoke-virtual {v4, p0, p1, v8}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 2272
    .local v9, "found":Landroid/view/View;
    if-nez v9, :cond_4

    move v10, v3

    goto :goto_2

    :cond_4
    move v10, v2

    :goto_2
    move v7, v10

    .line 2273
    sget-boolean v10, Lcom/android/internal/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v10, :cond_5

    .line 2275
    move p2, v8

    .line 2278
    .end local v8    # "absDir":I
    .end local v9    # "found":Landroid/view/View;
    :cond_5
    if-nez v7, :cond_a

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2279
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v8

    if-ne v8, v3, :cond_6

    move v8, v3

    goto :goto_3

    :cond_6
    move v8, v2

    .line 2280
    .local v8, "rtl":Z
    :goto_3
    if-ne p2, v6, :cond_7

    move v6, v3

    goto :goto_4

    :cond_7
    move v6, v2

    :goto_4
    xor-int/2addr v6, v8

    if-eqz v6, :cond_8

    .line 2281
    const/16 v6, 0x42

    goto :goto_5

    :cond_8
    const/16 v6, 0x11

    .line 2282
    .local v6, "absDir":I
    :goto_5
    invoke-virtual {v4, p0, p1, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 2283
    .restart local v9    # "found":Landroid/view/View;
    if-nez v9, :cond_9

    goto :goto_6

    :cond_9
    move v3, v2

    :goto_6
    move v7, v3

    .line 2284
    sget-boolean v3, Lcom/android/internal/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v3, :cond_a

    .line 2286
    move p2, v6

    .line 2289
    .end local v6    # "absDir":I
    .end local v8    # "rtl":Z
    .end local v9    # "found":Landroid/view/View;
    :cond_a
    if-eqz v7, :cond_c

    .line 2290
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2291
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 2292
    .local v3, "focusedItemView":Landroid/view/View;
    if-nez v3, :cond_b

    .line 2294
    return-object v5

    .line 2296
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 2297
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v5, p1, p2, v6, v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    .line 2298
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2300
    .end local v3    # "focusedItemView":Landroid/view/View;
    :cond_c
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2301
    .end local v7    # "needsFocusFailureLayout":Z
    goto :goto_7

    .line 2302
    :cond_d
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2303
    if-nez v0, :cond_f

    if-eqz v1, :cond_f

    .line 2304
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2305
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 2306
    .restart local v3    # "focusedItemView":Landroid/view/View;
    if-nez v3, :cond_e

    .line 2308
    return-object v5

    .line 2310
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 2311
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v5, p1, p2, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 2312
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2315
    .end local v3    # "focusedItemView":Landroid/view/View;
    :cond_f
    :goto_7
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2316
    nop

    .line 2315
    move-object v2, v0

    goto :goto_8

    .line 2316
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2315
    :goto_8
    return-object v2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 3891
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 3894
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 3892
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 3899
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 3902
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 3900
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 3907
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 3910
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 3908
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method getAdapterPositionFor(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 10443
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10445
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10448
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    iget v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    return v0

    .line 10446
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    return v0

    .line 1064
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 3744
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 4237
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4238
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 12220
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    .line 12221
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    .line 12223
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 4263
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4266
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4267
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    nop

    :cond_1
    return-wide v1

    .line 4264
    .end local v0    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_0
    return-wide v1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 4252
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4253
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4227
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 4168
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4169
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 4170
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4173
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public getClipToPadding()Z
    .locals 1

    .line 908
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 4486
    invoke-static {p1, p2}, Lcom/android/internal/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4487
    return-void
.end method

.method public getItemAnimator()Lcom/android/internal/widget/RecyclerView$ItemAnimator;
    .locals 1

    .line 3165
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .line 4499
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 4500
    .local v0, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_0

    .line 4501
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v1

    .line 4504
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4506
    :cond_1
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v1

    .line 4508
    :cond_2
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 4509
    .local v1, "insets":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4510
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4511
    .local v3, "decorCount":I
    move v4, v2

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 4512
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4513
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 4514
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 4515
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 4516
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 4517
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 4511
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4519
    .end local v4    # "i":I
    :cond_3
    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4520
    return-object v1
.end method

.method public getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .line 2065
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .line 2055
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method getNanoTime()J
    .locals 2

    .line 5147
    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_0

    .line 5148
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    .line 5150
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Lcom/android/internal/widget/RecyclerView$OnFlingListener;
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .line 4140
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .line 1338
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    .line 879
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    .line 4621
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    .line 4622
    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4621
    :goto_1
    return v0
.end method

.method initAdapterManager()V
    .locals 2

    .line 778
    new-instance v0, Lcom/android/internal/widget/AdapterHelper;

    new-instance v1, Lcom/android/internal/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/RecyclerView$6;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/android/internal/widget/AdapterHelper;-><init>(Lcom/android/internal/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    .line 857
    return-void
.end method

.method invalidateGlows()V
    .locals 1

    .line 2220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2221
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .line 4117
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4118
    return-void

    .line 4120
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 4121
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4124
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4125
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 4126
    return-void
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    .line 3087
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .line 3922
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 2493
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    .line 3121
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayoutFrozen()Z
    .locals 1

    .line 1934
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1517
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 1518
    return-void

    .line 1520
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1521
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    .line 1522
    return-void
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .line 3805
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3806
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3807
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3808
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 3806
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3810
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 3811
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .line 4101
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4102
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4103
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4104
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4105
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4102
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4108
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4109
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 4110
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3
    .param p1, "dx"    # I

    .line 4472
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4473
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4474
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4473
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4476
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3
    .param p1, "dy"    # I

    .line 4434
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4435
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4436
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4438
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 3985
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3986
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3987
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3988
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 3993
    invoke-virtual {v3, p2, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3994
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3986
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3997
    .end local v2    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 3998
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 3999
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 3951
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3953
    .local v0, "childCount":I
    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    .line 3954
    move v2, p1

    .line 3955
    .local v2, "start":I
    move v3, p2

    .line 3956
    .local v3, "end":I
    const/4 v4, -0x1

    .local v4, "inBetweenOffset":I
    goto :goto_0

    .line 3958
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "inBetweenOffset":I
    :cond_0
    move v2, p2

    .line 3959
    .restart local v2    # "start":I
    move v3, p1

    .line 3960
    .restart local v3    # "end":I
    move v4, v1

    .line 3963
    .restart local v4    # "inBetweenOffset":I
    :goto_0
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_4

    .line 3964
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 3965
    .local v7, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v7, :cond_3

    iget v8, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v8, v2, :cond_3

    iget v8, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v8, v3, :cond_1

    .line 3966
    goto :goto_3

    .line 3972
    :cond_1
    iget v8, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v8, p1, :cond_2

    .line 3973
    sub-int v8, p2, p1

    invoke-virtual {v7, v8, v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 3975
    :cond_2
    invoke-virtual {v7, v4, v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3978
    :goto_2
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v8, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3963
    .end local v7    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3980
    .end local v6    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 3981
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 3982
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 4003
    add-int v0, p1, p2

    .line 4004
    .local v0, "positionEnd":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 4005
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4006
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4007
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4008
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_0

    .line 4014
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4015
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v5, v4, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_1

    .line 4016
    :cond_0
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_1

    .line 4021
    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    invoke-virtual {v3, v4, v6, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 4023
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v5, v4, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4005
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4027
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 4028
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 4029
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 2434
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2435
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2436
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    .line 2437
    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2438
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 2439
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V

    .line 2441
    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2443
    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_4

    .line 2445
    sget-object v0, Lcom/android/internal/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/GapWorker;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    .line 2446
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    if-nez v0, :cond_3

    .line 2447
    new-instance v0, Lcom/android/internal/widget/GapWorker;

    invoke-direct {v0}, Lcom/android/internal/widget/GapWorker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    .line 2451
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2452
    .local v0, "display":Landroid/view/Display;
    const/high16 v1, 0x42700000    # 60.0f

    .line 2453
    .local v1, "refreshRate":F
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 2454
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    .line 2455
    .local v2, "displayRefreshRate":F
    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    .line 2456
    move v1, v2

    .line 2459
    .end local v2    # "displayRefreshRate":F
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v1

    float-to-long v3, v3

    iput-wide v3, v2, Lcom/android/internal/widget/GapWorker;->mFrameIntervalNs:J

    .line 2460
    sget-object v2, Lcom/android/internal/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2462
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "refreshRate":F
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/GapWorker;->add(Lcom/android/internal/widget/RecyclerView;)V

    .line 2464
    :cond_4
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 4451
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 4463
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2468
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2469
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 2470
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2472
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    .line 2473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    .line 2474
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 2475
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 2477
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2478
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2479
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewInfoStore;->onDetach()V

    .line 2481
    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    .line 2483
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/GapWorker;->remove(Lcom/android/internal/widget/RecyclerView;)V

    .line 2484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    .line 2486
    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 3876
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3878
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3879
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3880
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 3879
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3882
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .locals 1

    .line 3070
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3071
    return-void
.end method

.method onExitLayoutOrScroll()V
    .locals 2

    .line 3074
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3075
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-ge v0, v1, :cond_0

    .line 3080
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3081
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 3082
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    .line 3084
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2900
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2901
    return v1

    .line 2903
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    .line 2904
    return v1

    .line 2906
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 2907
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_5

    .line 2909
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2912
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    .local v0, "vScroll":F
    goto :goto_0

    .line 2914
    .end local v0    # "vScroll":F
    :cond_2
    move v0, v2

    .line 2916
    .restart local v0    # "vScroll":F
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2917
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .local v3, "hScroll":F
    goto :goto_1

    .line 2919
    .end local v3    # "hScroll":F
    :cond_3
    move v3, v2

    .line 2922
    .restart local v3    # "hScroll":F
    :goto_1
    cmpl-float v4, v0, v2

    if-nez v4, :cond_4

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_5

    .line 2923
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->getScrollFactor()F

    move-result v2

    .line 2924
    .local v2, "scrollFactor":F
    mul-float v4, v3, v2

    float-to-int v4, v4

    mul-float v5, v0, v2

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/internal/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 2929
    .end local v0    # "vScroll":F
    .end local v2    # "scrollFactor":F
    .end local v3    # "hScroll":F
    :cond_5
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "e"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 2617
    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2620
    return v3

    .line 2622
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 2623
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    .line 2624
    return v4

    .line 2627
    :cond_1
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_2

    .line 2628
    return v3

    .line 2631
    :cond_2
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    .line 2632
    .local v2, "canScrollHorizontally":Z
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    .line 2634
    .local v5, "canScrollVertically":Z
    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_3

    .line 2635
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2637
    :cond_3
    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2639
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 2640
    .local v6, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 2642
    .local v7, "actionIndex":I
    const/high16 v8, 0x3f000000    # 0.5f

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 2704
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 2705
    goto/16 :goto_2

    .line 2670
    :pswitch_2
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 2671
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 2672
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v9, v8

    float-to-int v8, v9

    iput v8, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v8, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 2673
    goto/16 :goto_2

    .line 2713
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_2

    .line 2676
    :pswitch_4
    iget v9, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 2677
    .local v9, "index":I
    if-gez v9, :cond_4

    .line 2678
    const-string v4, "RecyclerView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error processing scroll; pointer index for id "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    return v3

    .line 2683
    :cond_4
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v10, v8

    float-to-int v10, v10

    .line 2684
    .local v10, "x":I
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v11, v8

    float-to-int v8, v11

    .line 2685
    .local v8, "y":I
    iget v11, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-eq v11, v4, :cond_9

    .line 2686
    iget v11, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    sub-int v11, v10, v11

    .line 2687
    .local v11, "dx":I
    iget v12, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    sub-int v12, v8, v12

    .line 2688
    .local v12, "dy":I
    const/4 v13, 0x0

    .line 2689
    .local v13, "startScroll":Z
    if-eqz v2, :cond_6

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v15

    iget v14, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-le v15, v14, :cond_6

    .line 2690
    iget v14, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    iget v15, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-gez v11, :cond_5

    const/16 v17, -0x1

    goto :goto_0

    :cond_5
    move/from16 v17, v4

    :goto_0
    mul-int v15, v15, v17

    add-int/2addr v14, v15

    iput v14, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    .line 2691
    const/4 v13, 0x1

    .line 2693
    :cond_6
    if-eqz v5, :cond_8

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v14

    iget v15, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-le v14, v15, :cond_8

    .line 2694
    iget v14, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    iget v15, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-gez v12, :cond_7

    const/16 v16, -0x1

    goto :goto_1

    :cond_7
    move/from16 v16, v4

    :goto_1
    mul-int v15, v15, v16

    add-int/2addr v14, v15

    iput v14, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    .line 2695
    const/4 v13, 0x1

    .line 2697
    :cond_8
    if-eqz v13, :cond_9

    .line 2698
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 2701
    .end local v8    # "y":I
    .end local v9    # "index":I
    .end local v10    # "x":I
    .end local v11    # "dx":I
    .end local v12    # "dy":I
    .end local v13    # "startScroll":Z
    :cond_9
    goto :goto_2

    .line 2708
    :pswitch_5
    iget-object v8, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 2709
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->stopNestedScroll()V

    .line 2710
    goto :goto_2

    .line 2644
    :pswitch_6
    iget-boolean v9, v0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v9, :cond_a

    .line 2645
    iput-boolean v3, v0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2647
    :cond_a
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 2648
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    add-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 2649
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    add-float/2addr v9, v8

    float-to-int v8, v9

    iput v8, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v8, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 2651
    iget v8, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 2652
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2653
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 2657
    :cond_b
    iget-object v8, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v9, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aput v3, v9, v4

    aput v3, v8, v3

    .line 2659
    const/4 v8, 0x0

    .line 2660
    .local v8, "nestedScrollAxis":I
    if-eqz v2, :cond_c

    .line 2661
    or-int/lit8 v8, v8, 0x1

    .line 2663
    :cond_c
    if-eqz v5, :cond_d

    .line 2664
    or-int/lit8 v8, v8, 0x2

    .line 2666
    :cond_d
    invoke-virtual {v0, v8}, Lcom/android/internal/widget/RecyclerView;->startNestedScroll(I)Z

    .line 2667
    nop

    .line 2716
    .end local v8    # "nestedScrollAxis":I
    :goto_2
    iget v8, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-ne v8, v4, :cond_e

    move v3, v4

    nop

    :cond_e
    return v3

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

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 3789
    const-string v0, "RV OnLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3790
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    .line 3791
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3793
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 2951
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 2952
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 2953
    return-void

    .line 2955
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 2956
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2957
    .local v0, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 2958
    .local v3, "heightMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    if-ne v3, v4, :cond_1

    move v2, v1

    nop

    .line 2960
    .local v2, "skipMeasure":Z
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v5, v6, v7, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    .line 2961
    if-nez v2, :cond_5

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-nez v5, :cond_2

    goto :goto_0

    .line 2964
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v5, v5, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v5, v1, :cond_3

    .line 2965
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 2969
    :cond_3
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 2970
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v5, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 2971
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2974
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 2978
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2979
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 2980
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 2981
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2979
    invoke-virtual {v5, v6, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 2982
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v4, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 2983
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2985
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 2987
    .end local v0    # "widthMode":I
    .end local v2    # "skipMeasure":Z
    .end local v3    # "heightMode":I
    :cond_4
    goto :goto_3

    .line 2962
    .restart local v0    # "widthMode":I
    .restart local v2    # "skipMeasure":Z
    .restart local v3    # "heightMode":I
    :cond_5
    :goto_0
    return-void

    .line 2988
    .end local v0    # "widthMode":I
    .end local v2    # "skipMeasure":Z
    .end local v3    # "heightMode":I
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_7

    .line 2989
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    .line 2990
    return-void

    .line 2993
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_9

    .line 2994
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 2995
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 2996
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2997
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 2999
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_8

    .line 3000
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_1

    .line 3003
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3004
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3006
    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 3007
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3010
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_a

    .line 3011
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    goto :goto_2

    .line 3013
    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 3015
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 3016
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v3, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    .line 3017
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3018
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3020
    :goto_3
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2424
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2427
    const/4 v0, 0x0

    return v0

    .line 2429
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1199
    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    .line 1200
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1201
    return-void

    .line 1204
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/RecyclerView$SavedState;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    .line 1205
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1206
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1209
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1185
    new-instance v0, Lcom/android/internal/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1186
    .local v0, "state":Lcom/android/internal/widget/RecyclerView$SavedState;
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 1187
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$SavedState;->copyFrom(Lcom/android/internal/widget/RecyclerView$SavedState;)V

    goto :goto_0

    .line 1188
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 1189
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 1191
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    .line 1194
    :goto_0
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 4583
    return-void
.end method

.method public onScrolled(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 4545
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 3040
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 3041
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 3042
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidateGlows()V

    .line 3045
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "e"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 2731
    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    iget-boolean v2, v0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v2, :cond_0

    goto/16 :goto_a

    .line 2734
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 2735
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    .line 2736
    return v4

    .line 2739
    :cond_1
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_2

    .line 2740
    return v3

    .line 2743
    :cond_2
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    .line 2744
    .local v2, "canScrollHorizontally":Z
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    .line 2746
    .local v5, "canScrollVertically":Z
    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_3

    .line 2747
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2749
    :cond_3
    const/4 v6, 0x0

    .line 2751
    .local v6, "eventAddedToVelocityTracker":Z
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 2752
    .local v7, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 2753
    .local v8, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 2755
    .local v9, "actionIndex":I
    if-nez v8, :cond_4

    .line 2756
    iget-object v10, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v11, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aput v3, v11, v4

    aput v3, v10, v3

    .line 2758
    :cond_4
    iget-object v10, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v10, v10, v3

    int-to-float v10, v10

    iget-object v11, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v11, v11, v4

    int-to-float v11, v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2760
    const/high16 v10, 0x3f000000    # 0.5f

    packed-switch v8, :pswitch_data_0

    .line 2866
    :pswitch_0
    move/from16 v16, v6

    .end local v6    # "eventAddedToVelocityTracker":Z
    .local v16, "eventAddedToVelocityTracker":Z
    goto/16 :goto_9

    .line 2844
    .end local v16    # "eventAddedToVelocityTracker":Z
    .restart local v6    # "eventAddedToVelocityTracker":Z
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 2845
    goto/16 :goto_8

    .line 2777
    :pswitch_2
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 2778
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 2779
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 2780
    goto/16 :goto_8

    .line 2862
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_8

    .line 2783
    :pswitch_4
    iget v11, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 2784
    .local v11, "index":I
    if-gez v11, :cond_5

    .line 2785
    const-string v4, "RecyclerView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error processing scroll; pointer index for id "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    return v3

    .line 2790
    :cond_5
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v12, v10

    float-to-int v12, v12

    .line 2791
    .local v12, "x":I
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v13, v10

    float-to-int v10, v13

    .line 2792
    .local v10, "y":I
    iget v13, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v13, v12

    .line 2793
    .local v13, "dx":I
    iget v14, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v14, v10

    .line 2795
    .local v14, "dy":I
    iget-object v15, v0, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    invoke-virtual {v0, v13, v14, v15, v4}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2796
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    aget v4, v4, v3

    sub-int/2addr v13, v4

    .line 2797
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    const/4 v15, 0x1

    aget v4, v4, v15

    sub-int/2addr v14, v4

    .line 2798
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v3

    int-to-float v4, v4

    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v15

    int-to-float v3, v3

    invoke-virtual {v7, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2800
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v4, 0x0

    aget v15, v3, v4

    move/from16 v16, v6

    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    .end local v6    # "eventAddedToVelocityTracker":Z
    .restart local v16    # "eventAddedToVelocityTracker":Z
    aget v6, v6, v4

    add-int/2addr v15, v6

    aput v15, v3, v4

    .line 2801
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v4, 0x1

    aget v6, v3, v4

    iget-object v15, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v15, v15, v4

    add-int/2addr v6, v15

    aput v6, v3, v4

    goto :goto_0

    .line 2804
    .end local v16    # "eventAddedToVelocityTracker":Z
    .restart local v6    # "eventAddedToVelocityTracker":Z
    :cond_6
    move/from16 v16, v6

    const/4 v4, 0x1

    .end local v6    # "eventAddedToVelocityTracker":Z
    .restart local v16    # "eventAddedToVelocityTracker":Z
    :goto_0
    iget v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-eq v3, v4, :cond_c

    .line 2805
    const/4 v3, 0x0

    .line 2806
    .local v3, "startScroll":Z
    if-eqz v2, :cond_8

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-le v4, v6, :cond_8

    .line 2807
    if-lez v13, :cond_7

    .line 2808
    iget v4, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v13, v4

    goto :goto_1

    .line 2810
    :cond_7
    iget v4, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v13, v4

    .line 2812
    :goto_1
    const/4 v3, 0x1

    .line 2814
    :cond_8
    if-eqz v5, :cond_a

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-le v4, v6, :cond_a

    .line 2815
    if-lez v14, :cond_9

    .line 2816
    iget v4, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v14, v4

    goto :goto_2

    .line 2818
    :cond_9
    iget v4, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v14, v4

    .line 2820
    :goto_2
    const/4 v3, 0x1

    .line 2822
    :cond_a
    if-eqz v3, :cond_b

    .line 2823
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .end local v3    # "startScroll":Z
    goto :goto_3

    .line 2827
    :cond_b
    const/4 v4, 0x1

    :cond_c
    :goto_3
    move v3, v13

    .end local v13    # "dx":I
    .local v3, "dx":I
    iget v6, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-ne v6, v4, :cond_11

    .line 2828
    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    const/4 v13, 0x0

    aget v6, v6, v13

    sub-int v6, v12, v6

    iput v6, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    .line 2829
    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v6, v6, v4

    sub-int v4, v10, v6

    iput v4, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    .line 2831
    nop

    .line 2832
    if-eqz v2, :cond_d

    .line 2833
    move v4, v3

    goto :goto_4

    .line 2832
    :cond_d
    nop

    .line 2833
    const/4 v4, 0x0

    :goto_4
    if-eqz v5, :cond_e

    .line 2831
    move v6, v14

    goto :goto_5

    .line 2833
    :cond_e
    nop

    .line 2831
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v0, v4, v6, v7}, Lcom/android/internal/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2835
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2837
    :cond_f
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    if-eqz v4, :cond_11

    if-nez v3, :cond_10

    if-eqz v14, :cond_11

    .line 2838
    :cond_10
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {v4, v0, v3, v14}, Lcom/android/internal/widget/GapWorker;->postFromTraversal(Lcom/android/internal/widget/RecyclerView;II)V

    .line 2841
    .end local v3    # "dx":I
    .end local v10    # "y":I
    .end local v11    # "index":I
    .end local v12    # "x":I
    .end local v14    # "dy":I
    :cond_11
    goto/16 :goto_9

    .line 2848
    .end local v16    # "eventAddedToVelocityTracker":Z
    .restart local v6    # "eventAddedToVelocityTracker":Z
    :pswitch_5
    move/from16 v16, v6

    .end local v6    # "eventAddedToVelocityTracker":Z
    .restart local v16    # "eventAddedToVelocityTracker":Z
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2849
    const/4 v6, 0x1

    .line 2850
    .end local v16    # "eventAddedToVelocityTracker":Z
    .restart local v6    # "eventAddedToVelocityTracker":Z
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v10, v0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v10, v10

    invoke-virtual {v3, v4, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2851
    const/4 v3, 0x0

    if-eqz v2, :cond_12

    .line 2852
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v10, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v4, v10}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    neg-float v4, v4

    goto :goto_6

    :cond_12
    move v4, v3

    .line 2853
    .local v4, "xvel":F
    :goto_6
    if-eqz v5, :cond_13

    .line 2854
    iget-object v10, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v11, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    neg-float v10, v10

    goto :goto_7

    :cond_13
    move v10, v3

    .line 2855
    .local v10, "yvel":F
    :goto_7
    cmpl-float v11, v4, v3

    if-nez v11, :cond_14

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_15

    :cond_14
    float-to-int v3, v4

    float-to-int v11, v10

    invoke-virtual {v0, v3, v11}, Lcom/android/internal/widget/RecyclerView;->fling(II)Z

    move-result v3

    if-nez v3, :cond_16

    .line 2856
    :cond_15
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 2858
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView;->resetTouch()V

    .line 2859
    .end local v4    # "xvel":F
    .end local v10    # "yvel":F
    nop

    .line 2866
    .end local v6    # "eventAddedToVelocityTracker":Z
    .restart local v16    # "eventAddedToVelocityTracker":Z
    :goto_8
    move/from16 v16, v6

    goto :goto_9

    .line 2762
    .end local v16    # "eventAddedToVelocityTracker":Z
    .restart local v6    # "eventAddedToVelocityTracker":Z
    :pswitch_6
    move/from16 v16, v6

    .end local v6    # "eventAddedToVelocityTracker":Z
    .restart local v16    # "eventAddedToVelocityTracker":Z
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 2763
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 2764
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 2766
    const/4 v3, 0x0

    .line 2767
    .local v3, "nestedScrollAxis":I
    if-eqz v2, :cond_17

    .line 2768
    or-int/lit8 v3, v3, 0x1

    .line 2770
    :cond_17
    if-eqz v5, :cond_18

    .line 2771
    or-int/lit8 v3, v3, 0x2

    .line 2773
    :cond_18
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RecyclerView;->startNestedScroll(I)Z

    .line 2774
    .end local v3    # "nestedScrollAxis":I
    nop

    .line 2866
    :goto_9
    if-nez v16, :cond_19

    .line 2867
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2869
    :cond_19
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 2871
    const/4 v3, 0x1

    return v3

    .line 2732
    .end local v2    # "canScrollHorizontally":Z
    .end local v5    # "canScrollVertically":Z
    .end local v7    # "vtev":Landroid/view/MotionEvent;
    .end local v8    # "action":I
    .end local v9    # "actionIndex":I
    .end local v16    # "eventAddedToVelocityTracker":Z
    :cond_1a
    :goto_a
    const/4 v2, 0x0

    return v2

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

.method postAnimationRunner()V
    .locals 1

    .line 3173
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 3174
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 3175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 3177
    :cond_0
    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "animationInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 3683
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 3684
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3685
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3686
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 3687
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/internal/widget/ViewInfoStore;->addToOldChangeHolders(JLcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3689
    .end local v0    # "key":J
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/ViewInfoStore;->addToPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3690
    return-void
.end method

.method removeAndRecycleViews()V
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 987
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 988
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 991
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 992
    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 1256
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 1257
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    .line 1258
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 1259
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1260
    .local v1, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 1261
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 1267
    .end local v1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1268
    return v0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 3726
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3727
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_2

    .line 3728
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3729
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_0

    .line 3730
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3731
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3735
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3736
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3737
    return-void
.end method

.method public removeItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V
    .locals 2
    .param p1, "decor"    # Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    .line 1413
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1418
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1419
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1421
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1422
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 1423
    return-void
.end method

.method public removeOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 1092
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1093
    return-void

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1096
    return-void
.end method

.method public removeOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2561
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2562
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    .line 2563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2565
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    .line 1480
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1483
    :cond_0
    return-void
.end method

.method repositionShadowingViews()V
    .locals 9

    .line 4855
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4856
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4857
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4858
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4859
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v4, :cond_1

    .line 4860
    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4861
    .local v4, "shadowingView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 4862
    .local v5, "left":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    .line 4863
    .local v6, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v5, v7, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 4864
    :cond_0
    nop

    .line 4865
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 4866
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    .line 4864
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 4856
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v4    # "shadowingView":Landroid/view/View;
    .end local v5    # "left":I
    .end local v6    # "top":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4870
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 2384
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 2385
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2390
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2391
    .local v0, "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_0

    .line 2393
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 2394
    .local v1, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v2, :cond_0

    .line 2395
    iget-object v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 2396
    .local v2, "insets":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2397
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2398
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2399
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2403
    .end local v1    # "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .end local v2    # "insets":Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2404
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2405
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 2407
    .end local v0    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2408
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 2412
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .line 2721
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2722
    .local v0, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2723
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2724
    .local v2, "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2722
    .end local v2    # "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2726
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2727
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3797
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 3798
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    .line 3800
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 3802
    :goto_0
    return-void
.end method

.method resumeRequestLayout(Z)V
    .locals 3
    .param p1, "performLayoutChildren"    # Z

    .line 1853
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1858
    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    .line 1860
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1869
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1871
    :cond_1
    iget v2, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    if-ne v2, v1, :cond_3

    .line 1873
    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_2

    .line 1875
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    .line 1877
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_3

    .line 1878
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1881
    :cond_3
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    .line 1882
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    .line 3926
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3927
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3928
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3933
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3934
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    .line 3927
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3937
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1559
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 1560
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    return-void

    .line 1564
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    .line 1565
    return-void

    .line 1567
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1568
    .local v0, "canScrollHorizontal":Z
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 1569
    .local v1, "canScrollVertical":Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    .line 1570
    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, p1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v1, :cond_4

    move v2, p2

    nop

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/internal/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 1572
    :cond_5
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .line 1649
    const/4 v0, 0x0

    .local v0, "unconsumedX":I
    const/4 v1, 0x0

    .line 1650
    .local v1, "unconsumedY":I
    const/4 v2, 0x0

    .local v2, "consumedX":I
    const/4 v3, 0x0

    .line 1652
    .local v3, "consumedY":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1653
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1654
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 1655
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1656
    const-string v4, "RV Scroll"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1657
    if-eqz p1, :cond_0

    .line 1658
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v4, p1, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v2

    .line 1659
    sub-int v0, p1, v2

    .line 1661
    :cond_0
    if-eqz p2, :cond_1

    .line 1662
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v4, p2, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v3

    .line 1663
    sub-int v1, p2, v3

    .line 1665
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1666
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->repositionShadowingViews()V

    .line 1667
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1668
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1670
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1671
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 1674
    :cond_3
    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    move-object v6, p0

    move v7, v2

    move v8, v3

    move v9, v0

    move v10, v1

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    .line 1676
    iget v4, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v7, v7, v5

    sub-int/2addr v4, v7

    iput v4, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    .line 1677
    iget v4, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v7, v7, v6

    sub-int/2addr v4, v7

    iput v4, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    .line 1678
    if-eqz p3, :cond_4

    .line 1679
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v5

    int-to-float v4, v4

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v7, v7, v6

    int-to-float v7, v7

    invoke-virtual {p3, v4, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1681
    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v7, v4, v5

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v5

    add-int/2addr v7, v8

    aput v7, v4, v5

    .line 1682
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v7, v4, v6

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v6

    add-int/2addr v7, v8

    aput v7, v4, v6

    goto :goto_0

    .line 1683
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_7

    .line 1684
    if-eqz p3, :cond_6

    .line 1685
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v7, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    int-to-float v9, v1

    invoke-direct {p0, v4, v7, v8, v9}, Lcom/android/internal/widget/RecyclerView;->pullGlows(FFFF)V

    .line 1687
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 1689
    :cond_7
    :goto_0
    if-nez v2, :cond_8

    if-eqz v3, :cond_9

    .line 1690
    :cond_8
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1692
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1693
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 1695
    :cond_a
    if-nez v2, :cond_c

    if-eqz v3, :cond_b

    goto :goto_1

    :cond_b
    goto :goto_2

    :cond_c
    :goto_1
    move v5, v6

    :goto_2
    return v5
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1553
    const-string v0, "RecyclerView"

    const-string v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1503
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1504
    return-void

    .line 1506
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    .line 1507
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1508
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    return-void

    .line 1512
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1513
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    .line 1514
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3149
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3150
    return-void

    .line 3152
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3153
    return-void
.end method

.method public setAccessibilityDelegateCompat(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 1
    .param p1, "accessibilityDelegate"    # Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    .line 607
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    .line 608
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 609
    return-void
.end method

.method public setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 969
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 970
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/RecyclerView;->setAdapterInternal(Lcom/android/internal/widget/RecyclerView$Adapter;ZZ)V

    .line 971
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 972
    return-void
.end method

.method public setChildDrawingOrderCallback(Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 1
    .param p1, "childDrawingOrderCallback"    # Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1438
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    .line 1439
    return-void

    .line 1441
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1442
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    .line 1443
    return-void
.end method

.method setChildImportantForAccessibilityInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Z
    .locals 1
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "importantForAccessibility"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 10416
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10417
    iput p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10418
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10419
    const/4 v0, 0x0

    return v0

    .line 10421
    :cond_0
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 10422
    const/4 v0, 0x1

    return v0
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .line 884
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidateGlows()V

    .line 887
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    .line 888
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 889
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    .line 890
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 892
    :cond_1
    return-void
.end method

.method setDataSetChangedAfterLayout()V
    .locals 4

    .line 4078
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 4079
    return-void

    .line 4081
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4082
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4083
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4084
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4085
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4086
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4083
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4089
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    .line 4093
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 4094
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0
    .param p1, "hasFixedSize"    # Z

    .line 871
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    .line 872
    return-void
.end method

.method public setItemAnimator(Lcom/android/internal/widget/RecyclerView$ItemAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    .line 3059
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 3060
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 3061
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->setListener(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3063
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    .line 3064
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 3065
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->setListener(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3067
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 1328
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 1329
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 10
    .param p1, "frozen"    # Z

    .line 1907
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v0, :cond_2

    .line 1908
    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1909
    if-nez p1, :cond_1

    .line 1910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1911
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 1912
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 1914
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0

    .line 1916
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1917
    .local v0, "now":J
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v0

    move-wide v4, v0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1919
    .local v2, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1920
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1921
    iput-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 1922
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    .line 1925
    .end local v0    # "now":J
    .end local v2    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_2
    :goto_0
    return-void
.end method

.method public setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "layout"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 1121
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    .line 1122
    return-void

    .line 1124
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    .line 1127
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3

    .line 1129
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 1130
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1132
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 1133
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 1134
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 1136
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_2

    .line 1137
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 1139
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 1140
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    goto :goto_0

    .line 1142
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 1145
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1146
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 1147
    if-eqz p1, :cond_5

    .line 1148
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v0, :cond_4

    .line 1152
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 1153
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_5

    .line 1154
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V

    goto :goto_1

    .line 1149
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 1158
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 1159
    return-void
.end method

.method public setOnFlingListener(Lcom/android/internal/widget/RecyclerView$OnFlingListener;)V
    .locals 0
    .param p1, "onFlingListener"    # Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    .line 1170
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    .line 1171
    return-void
.end method

.method public setOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnScrollListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1455
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    .line 1456
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0
    .param p1, "preserveFocusAfterLayout"    # Z

    .line 4158
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 4159
    return-void
.end method

.method public setRecycledViewPool(Lcom/android/internal/widget/RecyclerView$RecycledViewPool;)V
    .locals 1
    .param p1, "pool"    # Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 1302
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setRecycledViewPool(Lcom/android/internal/widget/RecyclerView$RecycledViewPool;)V

    .line 1303
    return-void
.end method

.method public setRecyclerListener(Lcom/android/internal/widget/RecyclerView$RecyclerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    .line 1048
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    .line 1049
    return-void
.end method

.method setScrollState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1342
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    .line 1343
    return-void

    .line 1349
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    .line 1350
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1351
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->stopScrollersInternal()V

    .line 1353
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 1354
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4
    .param p1, "slopConstant"    # I

    .line 921
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 922
    .local v0, "vc":Landroid/view/ViewConfiguration;
    packed-switch p1, :pswitch_data_0

    .line 924
    const-string v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 932
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    goto :goto_1

    .line 928
    :goto_0
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    .line 929
    nop

    .line 935
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setViewCacheExtension(Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    .line 1313
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setViewCacheExtension(Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;)V

    .line 1314
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3133
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3134
    const/4 v0, 0x0

    .line 3135
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 3136
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    .line 3138
    :cond_0
    if-nez v0, :cond_1

    .line 3139
    const/4 v0, 0x0

    .line 3141
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3142
    const/4 v1, 0x1

    return v1

    .line 3144
    .end local v0    # "type":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 1944
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 1945
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 1956
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 1957
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    return-void

    .line 1961
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    .line 1962
    return-void

    .line 1964
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1965
    const/4 p1, 0x0

    .line 1967
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1968
    const/4 p2, 0x0

    .line 1970
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 1971
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 1973
    :cond_5
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1540
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1541
    return-void

    .line 1543
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1544
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    return-void

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;I)V

    .line 1549
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .line 2035
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 2036
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->stopScrollersInternal()V

    .line 2037
    return-void
.end method

.method public swapAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "adapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .line 953
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 954
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/RecyclerView;->setAdapterInternal(Lcom/android/internal/widget/RecyclerView$Adapter;ZZ)V

    .line 955
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 956
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 957
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 4038
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4039
    .local v0, "childCount":I
    add-int v1, p1, p2

    .line 4041
    .local v1, "positionEnd":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4042
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4043
    .local v3, "child":Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 4044
    .local v4, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4045
    goto :goto_1

    .line 4047
    :cond_0
    iget v5, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_1

    iget v5, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v1, :cond_1

    .line 4050
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4051
    invoke-virtual {v4, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 4053
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4041
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4056
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 4057
    return-void
.end method
