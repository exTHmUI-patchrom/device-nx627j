.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final LONG_TOUCH_TIME:J = 0x640L

.field private static final MOVE_TOUCH_SLOP:D = 0.6

.field private static final OPTS_INPUT:Z = true

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field private static final TOUCH_SLOP_MAX:D = 1.0

.field private static final TOUCH_SLOP_MIN:D = 0.6

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private final PREOBTAIN_ENABLE:Z

.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFastScroll:Landroid/widget/FastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mHasPerformedLongPress:Z

.field private mIsChildViewEnabled:Z

.field private mIsDetaching:Z

.field private mIsFirstTouchMoveEvent:Z

.field final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field private mMoveAcceleration:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mNestedYOffset:I

.field private mNumTouchMoveEvent:I

.field mOldIncrementalDeltaY:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSelectorState:[I

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private final mTmpPoint:[F

.field private mTouchDownTime:J

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F

.field mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 749
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 834
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mTouchDownTime:J

    .line 130
    const-string/jumbo v0, "ro.vendor.scroll.preobtain.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->PREOBTAIN_ENABLE:Z

    .line 269
    iput v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 302
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 327
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 332
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 342
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 347
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 353
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 358
    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 363
    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 368
    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 373
    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 378
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 383
    iput v1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 431
    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 462
    iput v1, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 505
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 525
    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 527
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 553
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 556
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 559
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 567
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 568
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 627
    iput v1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 654
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 656
    new-array v3, v2, [Z

    iput-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 658
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 659
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 661
    new-array v3, v3, [F

    iput-object v3, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 667
    iput v1, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 677
    iput v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 725
    iput v1, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 764
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    .line 766
    iput v1, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 835
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 837
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 839
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 840
    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 841
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 842
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 843
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 846
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 847
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 850
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 851
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 854
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mTouchDownTime:J

    .line 130
    const-string/jumbo v0, "ro.vendor.scroll.preobtain.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->PREOBTAIN_ENABLE:Z

    .line 269
    iput v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 302
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 327
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 332
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 342
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 347
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 353
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 358
    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 363
    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 368
    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 373
    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 378
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 383
    iput v1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 431
    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 462
    iput v1, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 505
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 525
    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 527
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 553
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 556
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 559
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 567
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 568
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 627
    iput v1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 654
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 656
    new-array v3, v2, [Z

    iput-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 658
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 659
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 661
    new-array v4, v3, [F

    iput-object v4, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 667
    iput v1, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 677
    iput v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 725
    iput v1, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 764
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    .line 766
    iput v1, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 855
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 857
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 859
    sget-object v0, Lcom/android/internal/R$styleable;->AbsListView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 862
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 863
    .local v4, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 864
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 867
    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 869
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 871
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 873
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 875
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 877
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 879
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 881
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 884
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 886
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    .line 888
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 891
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 893
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    if-ne v2, v3, :cond_1

    .line 894
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setRevealOnFocusHint(Z)V

    .line 896
    :cond_1
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .line 1972
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    .line 1973
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1972
    :goto_0
    return v0
.end method

.method static synthetic access$000(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView;)[F
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget-object v0, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/widget/AbsListView$CheckForLongPress;

    .line 110
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1602(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 110
    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .line 110
    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2300(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/AbsListView;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .line 110
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .line 110
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3900(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4100(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .line 110
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4600(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 110
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$902(Landroid/widget/AbsListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .line 110
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    return p1
.end method

.method private canScrollDown()Z
    .locals 8

    .line 2290
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2293
    .local v0, "count":I
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2296
    .local v1, "canScrollDown":Z
    :goto_0
    if-nez v1, :cond_2

    if-lez v0, :cond_2

    .line 2297
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2298
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_1

    move v3, v4

    nop

    :cond_1
    move v1, v3

    .line 2301
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    return v1
.end method

.method private canScrollUp()Z
    .locals 6

    .line 2275
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2278
    .local v0, "canScrollUp":Z
    :goto_0
    if-nez v0, :cond_2

    .line 2279
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 2280
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2281
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    .line 2285
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    return v0
.end method

.method private clearScrollingCache()V
    .locals 1

    .line 5162
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5163
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 5164
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 5180
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5182
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .line 1287
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1288
    .local v0, "childCount":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1289
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    .line 1291
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_2

    add-int/lit8 v2, v0, -0x1

    .line 1292
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_2

    goto :goto_0

    .line 1291
    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method private createScrollingCache()V
    .locals 1

    .line 5154
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 5156
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 5157
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 5159
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 2
    .param p1, "animateEntrance"    # Z

    .line 6206
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 6207
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 6208
    .local v0, "p":Landroid/widget/PopupWindow;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6209
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 6210
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6211
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 6212
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6213
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6214
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6215
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 6216
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6217
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 6219
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 6220
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x1030303

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 6222
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x1030304

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 6224
    :goto_0
    return-void
.end method

.method private dismissPopup()V
    .locals 1

    .line 5843
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 5844
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5846
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2789
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldDrawSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2790
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2791
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2792
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2794
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .line 6448
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 6449
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6450
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6452
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .line 5889
    const/16 v0, 0x11

    if-eq p2, v0, :cond_3

    const/16 v0, 0x21

    if-eq p2, v0, :cond_2

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    const/16 v0, 0x82

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 5922
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5916
    :pswitch_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 5917
    .local v0, "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 5918
    .local v1, "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 5919
    .local v2, "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 5920
    .local v3, "dY":I
    goto :goto_0

    .line 5897
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 5898
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 5899
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 5900
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 5901
    .restart local v3    # "dY":I
    goto :goto_0

    .line 5891
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 5892
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 5893
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 5894
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 5895
    .restart local v3    # "dY":I
    goto :goto_0

    .line 5909
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 5910
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 5911
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 5912
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 5913
    .restart local v3    # "dY":I
    goto :goto_0

    .line 5903
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :cond_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 5904
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 5905
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 5906
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 5907
    .restart local v3    # "dY":I
    nop

    .line 5922
    :goto_0
    nop

    .line 5926
    sub-int v4, v2, v0

    .line 5927
    .local v4, "deltaX":I
    sub-int v5, v3, v1

    .line 5928
    .local v5, "deltaY":I
    mul-int v6, v5, v5

    mul-int v7, v4, v4

    add-int/2addr v6, v7

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getDrawableStateForSelector()[I
    .locals 6

    .line 2922
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_0

    .line 2924
    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    move-result-object v0

    return-object v0

    .line 2930
    :cond_0
    sget-object v0, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 2936
    .local v0, "enabledState":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->onCreateDrawableState(I)[I

    move-result-object v2

    .line 2938
    .local v2, "state":[I
    const/4 v3, -0x1

    .line 2939
    .local v3, "enabledPos":I
    array-length v4, v2

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 2940
    aget v5, v2, v4

    if-ne v5, v0, :cond_1

    .line 2941
    move v3, v4

    .line 2942
    goto :goto_1

    .line 2939
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2947
    .end local v4    # "i":I
    :cond_2
    :goto_1
    if-ltz v3, :cond_3

    .line 2948
    add-int/lit8 v4, v3, 0x1

    array-length v5, v2

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-static {v2, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2952
    :cond_3
    return-object v2
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .line 6227
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 6228
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 6229
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x1090117

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 6234
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 6236
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6237
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6239
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v0
.end method

.method private initAbsListView()V
    .locals 7

    .line 900
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 901
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 902
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 903
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 904
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 906
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 907
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 908
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    .line 910
    const-wide v1, 0x3fe3333333333333L    # 0.6

    .line 911
    .local v1, "touchslopprop":D
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_2

    .line 912
    const-wide v3, 0x3fe3333333333333L    # 0.6

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    .line 913
    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    double-to-int v3, v5

    iput v3, p0, Landroid/widget/AbsListView;->mMoveAcceleration:I

    goto :goto_0

    .line 914
    :cond_0
    cmpl-double v3, v1, v3

    if-ltz v3, :cond_1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_1

    .line 915
    iget v3, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mMoveAcceleration:I

    goto :goto_0

    .line 917
    :cond_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    iput v3, p0, Landroid/widget/AbsListView;->mMoveAcceleration:I

    goto :goto_0

    .line 920
    :cond_2
    iget v3, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    iput v3, p0, Landroid/widget/AbsListView;->mMoveAcceleration:I

    .line 923
    .end local v1    # "touchslopprop":D
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 924
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 925
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 926
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 928
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 929
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 4492
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4493
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 4495
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 4497
    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 4500
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4501
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4503
    :cond_0
    return-void
.end method

.method private invalidateBottomGlow()V
    .locals 5

    .line 3781
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 3782
    return-void

    .line 3784
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v0

    .line 3785
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    .line 3786
    .local v1, "bottom":I
    :goto_0
    if-eqz v0, :cond_2

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 3787
    .local v2, "left":I
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v3, v4

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    .line 3788
    .local v3, "right":I
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v2, v4, v3, v1}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 3789
    return-void
.end method

.method private invalidateTopGlow()V
    .locals 5

    .line 3770
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 3771
    return-void

    .line 3773
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v0

    .line 3774
    .local v0, "clipToPadding":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    goto :goto_0

    :cond_1
    move v2, v1

    .line 3775
    .local v2, "top":I
    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    nop

    .line 3776
    .local v1, "left":I
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    .line 3777
    .local v3, "right":I
    :goto_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 3778
    return-void
.end method

.method private isItemClickable(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 2587
    invoke-virtual {p1}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isOwnerThread()Z
    .locals 2

    .line 1401
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 4654
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 4655
    .local v1, "pointerId":I
    iget v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 4659
    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 4660
    .local v3, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4661
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4662
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4663
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4665
    .end local v3    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private onTouchCancel()V
    .locals 4

    .line 4297
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 4310
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4312
    iget v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4313
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 4314
    invoke-virtual {v2, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 4307
    .end local v2    # "motionView":Landroid/view/View;
    :pswitch_0
    goto :goto_1

    .line 4299
    :pswitch_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 4300
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4302
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 4303
    goto :goto_1

    .line 4316
    .restart local v2    # "motionView":Landroid/view/View;
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4317
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4318
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4321
    .end local v2    # "motionView":Landroid/view/View;
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    .line 4322
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4323
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4325
    :cond_2
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4326
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 3956
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mTouchDownTime:J

    .line 3958
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    .line 3959
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3960
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3962
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 3964
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3965
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    .line 3966
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3968
    :cond_0
    const/4 v1, 0x5

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3969
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3970
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3971
    iget v1, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v1, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 3972
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3973
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_1

    .line 3975
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 3976
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 3977
    .local v2, "y":I
    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 3979
    .local v3, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_4

    .line 3980
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 3982
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3983
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3984
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3985
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v3

    .line 3986
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    goto :goto_0

    .line 3987
    :cond_2
    if-ltz v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3991
    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3994
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v0, :cond_3

    .line 3995
    new-instance v0, Landroid/widget/AbsListView$CheckForTap;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 3998
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 3999
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 4000
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4004
    :cond_4
    :goto_0
    if-ltz v3, :cond_5

    .line 4006
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4007
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4010
    .end local v0    # "v":Landroid/view/View;
    :cond_5
    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4011
    iput v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4012
    iput v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4013
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4016
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "motionPosition":I
    :goto_1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 4017
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4018
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4020
    :cond_6
    return-void
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .line 4023
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_0

    .line 4025
    return-void

    .line 4028
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 4029
    .local v0, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 4030
    const/4 v0, 0x0

    .line 4031
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4034
    :cond_1
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_2

    .line 4037
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4040
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 4042
    .local v1, "y":I
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 4048
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4049
    goto :goto_1

    .line 4053
    :cond_3
    iget v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4054
    .local v2, "motionView":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 4055
    .local v3, "x":F
    int-to-float v4, v1

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    .line 4056
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4057
    if-eqz v2, :cond_4

    .line 4058
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 4060
    :cond_4
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_5

    .line 4061
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    goto :goto_0

    :cond_5
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 4060
    :goto_0
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4062
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4063
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_1

    .line 4064
    :cond_6
    if-eqz v2, :cond_8

    .line 4066
    iget-object v4, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 4067
    .local v4, "point":[F
    aput v3, v4, v5

    .line 4068
    int-to-float v6, v1

    const/4 v7, 0x1

    aput v6, v4, v7

    .line 4069
    invoke-virtual {p0, v4, v2}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4070
    aget v5, v4, v5

    aget v6, v4, v7

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4071
    .end local v4    # "point":[F
    goto :goto_1

    .line 4075
    .end local v2    # "motionView":Landroid/view/View;
    .end local v3    # "x":F
    :cond_7
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 4078
    :cond_8
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 4081
    iget v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x5

    const/4 v4, 0x2

    const/16 v5, 0x3e8

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    .line 4193
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4194
    .local v1, "childCount":I
    if-lez v1, :cond_a

    .line 4195
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4196
    .local v8, "firstChildTop":I
    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 4197
    .local v9, "lastChildBottom":I
    iget-object v10, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 4198
    .local v10, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    iget-object v12, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    .line 4199
    .local v11, "contentBottom":I
    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v12, :cond_0

    if-lt v8, v10, :cond_0

    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v12, v1

    iget v13, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v12, v13, :cond_0

    .line 4201
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    sub-int/2addr v12, v11

    if-gt v9, v12, :cond_0

    .line 4202
    iput v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4203
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_1

    .line 4205
    :cond_0
    iget-object v12, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4206
    .local v12, "velocityTracker":Landroid/view/VelocityTracker;
    iget v13, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v13, v13

    invoke-virtual {v12, v5, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4208
    iget v5, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4209
    invoke-virtual {v12, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    iget v13, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    mul-float/2addr v5, v13

    float-to-int v5, v5

    .line 4214
    .local v5, "initialVelocity":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v14, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v13, v14, :cond_1

    move v13, v2

    goto :goto_0

    :cond_1
    move v13, v7

    .line 4215
    .local v13, "flingVelocity":Z
    :goto_0
    const/4 v14, 0x0

    if-eqz v13, :cond_6

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v15, :cond_2

    iget v15, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    sub-int v15, v10, v15

    if-eq v8, v15, :cond_6

    :cond_2
    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v15, v1

    iget v3, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v15, v3, :cond_3

    iget v3, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    add-int/2addr v3, v11

    if-eq v9, v3, :cond_6

    .line 4220
    :cond_3
    neg-int v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v14, v3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_5

    .line 4221
    iget-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v3, :cond_4

    .line 4222
    new-instance v3, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v3, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4224
    :cond_4
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4225
    iget-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4226
    neg-int v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v14, v3, v2}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto :goto_1

    .line 4228
    :cond_5
    iput v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4229
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    .line 4232
    :cond_6
    iput v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4233
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4234
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v2, :cond_7

    .line 4235
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v2}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4237
    :cond_7
    iget-object v2, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_8

    .line 4238
    iget-object v2, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4240
    :cond_8
    if-eqz v13, :cond_9

    neg-int v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4241
    neg-int v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2, v7}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    .line 4245
    .end local v5    # "initialVelocity":I
    .end local v8    # "firstChildTop":I
    .end local v9    # "lastChildBottom":I
    .end local v10    # "contentTop":I
    .end local v11    # "contentBottom":I
    .end local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v13    # "flingVelocity":Z
    :cond_9
    :goto_1
    goto/16 :goto_9

    .line 4246
    :cond_a
    iput v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4247
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4249
    goto/16 :goto_9

    .line 4085
    .end local v1    # "childCount":I
    :pswitch_1
    iget v1, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4086
    .local v1, "motionPosition":I
    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v1, v3

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4087
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1d

    .line 4088
    iget v4, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v4, :cond_b

    .line 4089
    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 4092
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 4093
    .local v4, "x":F
    iget-object v5, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    iget-object v8, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v8

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_c

    move v5, v2

    goto :goto_2

    :cond_c
    move v5, v7

    .line 4094
    .local v5, "inList":Z
    :goto_2
    if-eqz v5, :cond_1d

    invoke-virtual {v3}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 4095
    iget-object v8, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-nez v8, :cond_d

    .line 4096
    new-instance v8, Landroid/widget/AbsListView$PerformClick;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v8, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4099
    :cond_d
    iget-object v8, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4100
    .local v8, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput v1, v8, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 4101
    invoke-virtual {v8}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 4103
    iput v1, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4106
    const/4 v9, 0x0

    .line 4107
    .local v9, "isSupportRecognition":Z
    const/4 v10, 0x1

    .line 4108
    .local v10, "isRecognitionOn":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRootView()Landroid/view/View;

    move-result-object v11

    .line 4109
    .local v11, "rootView":Landroid/view/View;
    if-eqz v11, :cond_e

    instance-of v12, v11, Lcom/android/internal/policy/DecorView;

    if-eqz v12, :cond_e

    .line 4110
    move-object v12, v11

    check-cast v12, Lcom/android/internal/policy/DecorView;

    .line 4111
    .local v12, "decorView":Lcom/android/internal/policy/DecorView;
    invoke-virtual {v12}, Lcom/android/internal/policy/DecorView;->isSupportRecognition()Z

    move-result v9

    .line 4113
    .end local v12    # "decorView":Lcom/android/internal/policy/DecorView;
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v14, v0, Landroid/widget/AbsListView;->mTouchDownTime:J

    sub-long/2addr v12, v14

    .line 4114
    .local v12, "timeDiff":J
    const-wide/16 v14, 0x640

    if-eqz v9, :cond_f

    .line 4115
    cmp-long v16, v12, v14

    if-ltz v16, :cond_f

    .line 4116
    if-eqz v11, :cond_f

    instance-of v6, v11, Lcom/android/internal/policy/DecorView;

    if-eqz v6, :cond_f

    .line 4117
    move-object v6, v11

    check-cast v6, Lcom/android/internal/policy/DecorView;

    .line 4118
    .local v6, "decorView":Lcom/android/internal/policy/DecorView;
    invoke-virtual {v6}, Lcom/android/internal/policy/DecorView;->isSmartRecognitionOn()Z

    move-result v10

    .line 4124
    .end local v6    # "decorView":Lcom/android/internal/policy/DecorView;
    :cond_f
    iget v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v6, :cond_14

    iget v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v6, v2, :cond_10

    goto :goto_4

    .line 4176
    :cond_10
    iget-boolean v2, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v2, :cond_13

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4178
    if-eqz v9, :cond_12

    .line 4179
    cmp-long v2, v12, v14

    if-ltz v2, :cond_11

    if-nez v10, :cond_13

    .line 4180
    :cond_11
    invoke-virtual {v8}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto :goto_3

    .line 4184
    :cond_12
    invoke-virtual {v8}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 4189
    .end local v4    # "x":F
    .end local v5    # "inList":Z
    .end local v8    # "performClick":Landroid/widget/AbsListView$PerformClick;
    .end local v9    # "isSupportRecognition":Z
    .end local v10    # "isRecognitionOn":Z
    .end local v11    # "rootView":Landroid/view/View;
    .end local v12    # "timeDiff":J
    :cond_13
    :goto_3
    const/4 v2, -0x1

    goto/16 :goto_8

    .line 4125
    .restart local v4    # "x":F
    .restart local v5    # "inList":Z
    .restart local v8    # "performClick":Landroid/widget/AbsListView$PerformClick;
    .restart local v9    # "isSupportRecognition":Z
    .restart local v10    # "isRecognitionOn":Z
    .restart local v11    # "rootView":Landroid/view/View;
    .restart local v12    # "timeDiff":J
    :cond_14
    :goto_4
    iget v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v6, :cond_15

    .line 4126
    iget-object v6, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    goto :goto_5

    :cond_15
    iget-object v6, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 4125
    :goto_5
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4127
    iput v7, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4128
    iget-boolean v6, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v6, :cond_1c

    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 4129
    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4130
    iget v6, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 4131
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4132
    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    .line 4133
    iget v6, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v0, v6, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4134
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4135
    iget-object v2, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_17

    .line 4136
    iget-object v2, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4137
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_16

    instance-of v6, v2, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_16

    .line 4138
    move-object v6, v2

    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4140
    :cond_16
    iget-object v6, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v6, v4, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4142
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_17
    iget-boolean v2, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v2, :cond_1a

    iget-boolean v2, v0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4144
    if-eqz v9, :cond_19

    .line 4145
    cmp-long v2, v12, v14

    if-ltz v2, :cond_18

    if-nez v10, :cond_1a

    .line 4146
    :cond_18
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 4147
    invoke-virtual {v8}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto :goto_6

    .line 4152
    :cond_19
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 4153
    invoke-virtual {v8}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 4157
    :cond_1a
    :goto_6
    iget-object v2, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v2, :cond_1b

    .line 4158
    iget-object v2, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4160
    :cond_1b
    new-instance v2, Landroid/widget/AbsListView$3;

    invoke-direct {v2, v0, v3}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;)V

    iput-object v2, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4169
    iget-object v2, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4170
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    int-to-long v6, v6

    .line 4169
    invoke-virtual {v0, v2, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 4172
    :cond_1c
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4173
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4175
    :goto_7
    return-void

    .line 4189
    .end local v4    # "x":F
    .end local v5    # "inList":Z
    .end local v8    # "performClick":Landroid/widget/AbsListView$PerformClick;
    .end local v9    # "isSupportRecognition":Z
    .end local v10    # "isRecognitionOn":Z
    .end local v11    # "rootView":Landroid/view/View;
    .end local v12    # "timeDiff":J
    :cond_1d
    move v2, v6

    :goto_8
    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4190
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4191
    goto :goto_9

    .line 4252
    .end local v1    # "motionPosition":I
    .end local v3    # "child":Landroid/view/View;
    :cond_1e
    iget-object v1, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_1f

    .line 4253
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4255
    :cond_1f
    iget-object v1, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4256
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    iget v2, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4257
    iget v2, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v2, v2

    .line 4259
    .local v2, "initialVelocity":I
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4260
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v3, v4, :cond_20

    .line 4261
    iget-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto :goto_9

    .line 4263
    :cond_20
    iget-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 4269
    .end local v1    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v2    # "initialVelocity":I
    :goto_9
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4271
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_21

    .line 4272
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4273
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4277
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4278
    iget-object v1, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4279
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4281
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4290
    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_22

    .line 4291
    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 4292
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4294
    :cond_22
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 3247
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 3248
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3249
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3250
    iget v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3251
    .local v2, "longPressPosition":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 3252
    .local v3, "longPressId":J
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3253
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3254
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3255
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3256
    const/4 v1, 0x1

    return v1

    .line 3260
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longPressPosition":I
    .end local v3    # "longPressId":J
    :cond_0
    return v1
.end method

.method private positionPopup()V
    .locals 6

    .line 5862
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5863
    .local v0, "screenHeight":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 5864
    .local v1, "xy":[I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 5867
    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 5868
    .local v2, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 5869
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v5, 0x51

    aget v4, v1, v4

    invoke-virtual {v3, p0, v5, v4, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 5872
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v1, v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 5874
    :goto_0
    return-void
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 2616
    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2617
    .local v0, "positionChanged":Z
    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 2618
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2621
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2622
    .local v3, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2623
    instance-of v4, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_2

    .line 2624
    move-object v4, p2

    check-cast v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2628
    :cond_2
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2629
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2630
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2631
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2634
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    .line 2635
    .local v4, "isChildViewEnabled":Z
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eq v5, v4, :cond_3

    .line 2636
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2640
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2641
    .local v5, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_7

    .line 2642
    if-eqz v0, :cond_4

    .line 2645
    invoke-virtual {v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2646
    sget-object v6, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2648
    :cond_4
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2649
    if-eqz v0, :cond_6

    .line 2650
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    .line 2651
    invoke-virtual {v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2653
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2655
    :cond_6
    if-eqz p3, :cond_7

    .line 2656
    invoke-virtual {v5, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2659
    :cond_7
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 4506
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4507
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 4508
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4510
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 32
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    .line 3575
    move-object/from16 v13, p3

    iget v0, v10, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, v12, v0

    .line 3576
    .local v0, "rawDeltaY":I
    const/4 v1, 0x0

    .line 3577
    .local v1, "scrollOffsetCorrection":I
    const/4 v2, 0x0

    .line 3578
    .local v2, "scrollConsumedCorrection":I
    iget v3, v10, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 3579
    iget v3, v10, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int/2addr v0, v3

    .line 3581
    :cond_0
    iget v3, v10, Landroid/widget/AbsListView;->mLastY:I

    if-eq v3, v4, :cond_1

    iget v3, v10, Landroid/widget/AbsListView;->mLastY:I

    sub-int/2addr v3, v12

    goto :goto_0

    :cond_1
    neg-int v3, v0

    :goto_0
    iget-object v5, v10, Landroid/widget/AbsListView;->mScrollConsumed:[I

    iget-object v6, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v3, v5, v6}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-eqz v3, :cond_2

    .line 3583
    iget-object v3, v10, Landroid/widget/AbsListView;->mScrollConsumed:[I

    aget v3, v3, v15

    add-int/2addr v0, v3

    .line 3584
    iget-object v3, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v3, v3, v15

    neg-int v1, v3

    .line 3585
    iget-object v3, v10, Landroid/widget/AbsListView;->mScrollConsumed:[I

    aget v2, v3, v15

    .line 3586
    if-eqz v13, :cond_2

    .line 3587
    iget-object v3, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v3, v3, v15

    int-to-float v3, v3

    invoke-virtual {v13, v6, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3588
    iget v3, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    iget-object v5, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v5, v5, v15

    add-int/2addr v3, v5

    iput v3, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3591
    :cond_2
    move v9, v0

    move/from16 v17, v1

    move/from16 v16, v2

    .end local v0    # "rawDeltaY":I
    .end local v1    # "scrollOffsetCorrection":I
    .end local v2    # "scrollConsumedCorrection":I
    .local v9, "rawDeltaY":I
    .local v16, "scrollConsumedCorrection":I
    .local v17, "scrollOffsetCorrection":I
    move v8, v9

    .line 3593
    .local v8, "deltaY":I
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-eq v0, v4, :cond_3

    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    sub-int v0, v12, v0

    add-int v0, v0, v16

    goto :goto_1

    :cond_3
    move v0, v8

    :goto_1
    move v7, v0

    .line 3594
    .local v7, "incrementalDeltaY":I
    const/16 v18, 0x0

    .line 3596
    .local v18, "lastYCorrection":I
    iget v0, v10, Landroid/widget/AbsListView;->mTouchMode:I

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v5, 0x5

    const/4 v4, 0x3

    if-ne v0, v4, :cond_16

    .line 3604
    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_4

    .line 3606
    const-string v0, "AbsListView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, v10, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3609
    :cond_4
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-eq v12, v0, :cond_15

    .line 3613
    iget v0, v10, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    .line 3614
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v10, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 3615
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3616
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_5

    .line 3617
    invoke-interface {v0, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3622
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_5
    iget v0, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v0, :cond_6

    .line 3623
    iget v0, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v1, v10, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .local v0, "motionIndex":I
    goto :goto_2

    .line 3627
    .end local v0    # "motionIndex":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .restart local v0    # "motionIndex":I
    :goto_2
    move v4, v0

    .line 3630
    .end local v0    # "motionIndex":I
    .local v4, "motionIndex":I
    const/4 v0, 0x0

    .line 3631
    .local v0, "motionViewPrevTop":I
    invoke-virtual {v10, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3632
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 3633
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 3637
    .end local v0    # "motionViewPrevTop":I
    .local v20, "motionViewPrevTop":I
    :cond_7
    move/from16 v20, v0

    const/4 v0, 0x0

    .line 3638
    .local v0, "atEdge":Z
    if-eqz v7, :cond_8

    .line 3639
    invoke-virtual {v10, v8, v7}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 3643
    .end local v0    # "atEdge":Z
    .local v21, "atEdge":Z
    :cond_8
    move/from16 v21, v0

    invoke-virtual {v10, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3644
    .end local v1    # "motionView":Landroid/view/View;
    .local v3, "motionView":Landroid/view/View;
    if-eqz v3, :cond_14

    .line 3647
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v22

    .line 3648
    .local v22, "motionViewRealTop":I
    if-eqz v21, :cond_12

    .line 3651
    neg-int v0, v7

    sub-int v1, v22, v20

    sub-int v2, v0, v1

    .line 3653
    .local v2, "overscroll":I
    const/4 v1, 0x0

    sub-int v23, v2, v7

    const/16 v24, 0x0

    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    move-object/from16 v25, v0

    move-object v0, v10

    move/from16 v26, v2

    move/from16 v2, v23

    .end local v2    # "overscroll":I
    .local v26, "overscroll":I
    move-object/from16 v23, v3

    move/from16 v3, v24

    .end local v3    # "motionView":Landroid/view/View;
    .local v23, "motionView":Landroid/view/View;
    move/from16 v24, v4

    move/from16 v4, v26

    .end local v4    # "motionIndex":I
    .local v24, "motionIndex":I
    move-object/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3655
    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v0, v0, v15

    sub-int v18, v18, v0

    .line 3656
    if-eqz v13, :cond_9

    .line 3657
    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v0, v0, v15

    int-to-float v0, v0

    invoke-virtual {v13, v6, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3658
    iget v0, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    iget-object v1, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v1, v1, v15

    add-int/2addr v0, v1

    iput v0, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3695
    .end local v26    # "overscroll":I
    :cond_9
    move v3, v7

    move/from16 v25, v8

    move/from16 v28, v9

    goto/16 :goto_4

    .line 3661
    .restart local v26    # "overscroll":I
    :cond_a
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, v10, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v25, 0x0

    iget v2, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/16 v27, 0x1

    move-object v0, v10

    move/from16 v28, v2

    move/from16 v2, v26

    move/from16 v29, v7

    move/from16 v7, v25

    .end local v7    # "incrementalDeltaY":I
    .local v29, "incrementalDeltaY":I
    move/from16 v25, v8

    move/from16 v8, v28

    .end local v8    # "deltaY":I
    .local v25, "deltaY":I
    move/from16 v28, v9

    move/from16 v9, v27

    .end local v9    # "rawDeltaY":I
    .local v28, "rawDeltaY":I
    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 3664
    .local v0, "atOverscrollEdge":Z
    if-eqz v0, :cond_b

    iget-object v1, v10, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_b

    .line 3666
    iget-object v1, v10, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 3669
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v1

    .line 3670
    .local v1, "overscrollMode":I
    if-eqz v1, :cond_d

    if-ne v1, v15, :cond_c

    .line 3672
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_3

    .line 3695
    .end local v0    # "atOverscrollEdge":Z
    .end local v1    # "overscrollMode":I
    .end local v26    # "overscroll":I
    :cond_c
    move/from16 v3, v29

    goto :goto_4

    .line 3673
    .restart local v0    # "atOverscrollEdge":Z
    .restart local v1    # "overscrollMode":I
    .restart local v26    # "overscroll":I
    :cond_d
    :goto_3
    if-nez v0, :cond_e

    .line 3674
    iput v14, v10, Landroid/widget/AbsListView;->mDirection:I

    .line 3675
    const/4 v2, 0x5

    iput v2, v10, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3677
    :cond_e
    move/from16 v3, v29

    if-lez v3, :cond_10

    .line 3678
    .end local v29    # "incrementalDeltaY":I
    .local v3, "incrementalDeltaY":I
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move/from16 v4, v26

    neg-int v5, v4

    .end local v26    # "overscroll":I
    .local v4, "overscroll":I
    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v11

    .line 3679
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 3678
    invoke-virtual {v2, v5, v6}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3680
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_f

    .line 3681
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3683
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    goto :goto_4

    .line 3684
    .end local v4    # "overscroll":I
    .restart local v26    # "overscroll":I
    :cond_10
    move/from16 v4, v26

    .end local v26    # "overscroll":I
    .restart local v4    # "overscroll":I
    if-gez v3, :cond_13

    .line 3685
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v11

    .line 3686
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v6, v19, v6

    .line 3685
    invoke-virtual {v2, v5, v6}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3687
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_11

    .line 3688
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3690
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    .end local v0    # "atOverscrollEdge":Z
    .end local v1    # "overscrollMode":I
    .end local v4    # "overscroll":I
    goto :goto_4

    .line 3695
    .end local v23    # "motionView":Landroid/view/View;
    .end local v24    # "motionIndex":I
    .end local v25    # "deltaY":I
    .end local v28    # "rawDeltaY":I
    .local v3, "motionView":Landroid/view/View;
    .local v4, "motionIndex":I
    .restart local v7    # "incrementalDeltaY":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "rawDeltaY":I
    :cond_12
    move-object/from16 v23, v3

    move/from16 v24, v4

    move v3, v7

    move/from16 v25, v8

    move/from16 v28, v9

    .end local v4    # "motionIndex":I
    .end local v7    # "incrementalDeltaY":I
    .end local v8    # "deltaY":I
    .end local v9    # "rawDeltaY":I
    .local v3, "incrementalDeltaY":I
    .restart local v23    # "motionView":Landroid/view/View;
    .restart local v24    # "motionIndex":I
    .restart local v25    # "deltaY":I
    .restart local v28    # "rawDeltaY":I
    :cond_13
    :goto_4
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mMotionY:I

    .end local v22    # "motionViewRealTop":I
    goto :goto_5

    .line 3697
    .end local v23    # "motionView":Landroid/view/View;
    .end local v24    # "motionIndex":I
    .end local v25    # "deltaY":I
    .end local v28    # "rawDeltaY":I
    .local v3, "motionView":Landroid/view/View;
    .restart local v4    # "motionIndex":I
    .restart local v7    # "incrementalDeltaY":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "rawDeltaY":I
    :cond_14
    move-object/from16 v23, v3

    move/from16 v24, v4

    move v3, v7

    move/from16 v25, v8

    move/from16 v28, v9

    .end local v4    # "motionIndex":I
    .end local v7    # "incrementalDeltaY":I
    .end local v8    # "deltaY":I
    .end local v9    # "rawDeltaY":I
    .local v3, "incrementalDeltaY":I
    .restart local v23    # "motionView":Landroid/view/View;
    .restart local v24    # "motionIndex":I
    .restart local v25    # "deltaY":I
    .restart local v28    # "rawDeltaY":I
    :goto_5
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mLastY:I

    .line 3698
    .end local v20    # "motionViewPrevTop":I
    .end local v21    # "atEdge":Z
    .end local v23    # "motionView":Landroid/view/View;
    .end local v24    # "motionIndex":I
    goto/16 :goto_a

    .line 3767
    .end local v3    # "incrementalDeltaY":I
    .end local v25    # "deltaY":I
    .end local v28    # "rawDeltaY":I
    .restart local v7    # "incrementalDeltaY":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "rawDeltaY":I
    :cond_15
    move v3, v7

    move/from16 v25, v8

    move/from16 v28, v9

    .end local v7    # "incrementalDeltaY":I
    .end local v8    # "deltaY":I
    .end local v9    # "rawDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    .restart local v25    # "deltaY":I
    .restart local v28    # "rawDeltaY":I
    goto/16 :goto_a

    .line 3699
    .end local v3    # "incrementalDeltaY":I
    .end local v25    # "deltaY":I
    .end local v28    # "rawDeltaY":I
    .restart local v7    # "incrementalDeltaY":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "rawDeltaY":I
    :cond_16
    move v2, v5

    move v3, v7

    move/from16 v25, v8

    move/from16 v28, v9

    .end local v7    # "incrementalDeltaY":I
    .end local v8    # "deltaY":I
    .end local v9    # "rawDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    .restart local v25    # "deltaY":I
    .restart local v28    # "rawDeltaY":I
    iget v0, v10, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v0, v2, :cond_26

    .line 3700
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-eq v12, v0, :cond_26

    .line 3701
    iget v9, v10, Landroid/widget/AbsListView;->mScrollY:I

    .line 3702
    .local v9, "oldScroll":I
    sub-int v20, v9, v3

    .line 3703
    .local v20, "newScroll":I
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-le v12, v0, :cond_17

    move v0, v15

    goto :goto_6

    :cond_17
    const/4 v0, -0x1

    :goto_6
    move v8, v0

    .line 3705
    .local v8, "newDirection":I
    iget v0, v10, Landroid/widget/AbsListView;->mDirection:I

    if-nez v0, :cond_18

    .line 3706
    iput v8, v10, Landroid/widget/AbsListView;->mDirection:I

    .line 3709
    :cond_18
    neg-int v0, v3

    .line 3710
    .local v0, "overScrollDistance":I
    if-gez v20, :cond_19

    if-gez v9, :cond_1a

    :cond_19
    if-lez v20, :cond_1b

    if-gtz v9, :cond_1b

    .line 3711
    :cond_1a
    neg-int v0, v9

    .line 3712
    add-int v7, v3, v0

    .line 3717
    .end local v3    # "incrementalDeltaY":I
    .restart local v7    # "incrementalDeltaY":I
    move v6, v7

    move v7, v0

    goto :goto_7

    .line 3714
    .end local v7    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    :cond_1b
    const/4 v1, 0x0

    .line 3717
    .end local v3    # "incrementalDeltaY":I
    .local v1, "incrementalDeltaY":I
    move v7, v0

    move v6, v1

    .end local v0    # "overScrollDistance":I
    .end local v1    # "incrementalDeltaY":I
    .local v6, "incrementalDeltaY":I
    .local v7, "overScrollDistance":I
    :goto_7
    if-eqz v7, :cond_21

    .line 3718
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v5, v10, Landroid/widget/AbsListView;->mScrollY:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget v2, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/16 v24, 0x1

    move-object v0, v10

    move/from16 v26, v2

    move v2, v7

    move v4, v5

    move/from16 v5, v21

    move v14, v6

    move/from16 v6, v22

    .end local v6    # "incrementalDeltaY":I
    .local v14, "incrementalDeltaY":I
    move/from16 v30, v7

    move/from16 v7, v23

    .end local v7    # "overScrollDistance":I
    .local v30, "overScrollDistance":I
    move/from16 v31, v8

    move/from16 v8, v26

    .end local v8    # "newDirection":I
    .local v31, "newDirection":I
    move/from16 v21, v9

    move/from16 v9, v24

    .end local v9    # "oldScroll":I
    .local v21, "oldScroll":I
    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3720
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 3721
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_1d

    if-ne v0, v15, :cond_1c

    .line 3723
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_8

    .line 3742
    .end local v0    # "overscrollMode":I
    :cond_1c
    move/from16 v2, v30

    goto :goto_9

    .line 3724
    .restart local v0    # "overscrollMode":I
    :cond_1d
    :goto_8
    if-lez v28, :cond_1f

    .line 3725
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move/from16 v2, v30

    int-to-float v3, v2

    .end local v30    # "overScrollDistance":I
    .local v2, "overScrollDistance":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v11

    .line 3726
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3725
    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3727
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 3728
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3730
    :cond_1e
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    goto :goto_9

    .line 3731
    .end local v2    # "overScrollDistance":I
    .restart local v30    # "overScrollDistance":I
    :cond_1f
    move/from16 v2, v30

    .end local v30    # "overScrollDistance":I
    .restart local v2    # "overScrollDistance":I
    if-gez v28, :cond_22

    .line 3732
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v11

    .line 3733
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v4, v19, v4

    .line 3732
    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3734
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_20

    .line 3735
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3737
    :cond_20
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    .end local v0    # "overscrollMode":I
    goto :goto_9

    .line 3742
    .end local v2    # "overScrollDistance":I
    .end local v14    # "incrementalDeltaY":I
    .end local v21    # "oldScroll":I
    .end local v31    # "newDirection":I
    .restart local v6    # "incrementalDeltaY":I
    .restart local v7    # "overScrollDistance":I
    .restart local v8    # "newDirection":I
    .restart local v9    # "oldScroll":I
    :cond_21
    move v14, v6

    move v2, v7

    move/from16 v31, v8

    move/from16 v21, v9

    .end local v6    # "incrementalDeltaY":I
    .end local v7    # "overScrollDistance":I
    .end local v8    # "newDirection":I
    .end local v9    # "oldScroll":I
    .restart local v2    # "overScrollDistance":I
    .restart local v14    # "incrementalDeltaY":I
    .restart local v21    # "oldScroll":I
    .restart local v31    # "newDirection":I
    :cond_22
    :goto_9
    if-eqz v14, :cond_25

    .line 3744
    iget v0, v10, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v0, :cond_23

    .line 3745
    const/4 v0, 0x0

    iput v0, v10, Landroid/widget/AbsListView;->mScrollY:I

    .line 3746
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 3749
    :cond_23
    invoke-virtual {v10, v14, v14}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 3751
    const/4 v0, 0x3

    iput v0, v10, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3755
    invoke-virtual {v10, v12}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v0

    .line 3757
    .local v0, "motionPosition":I
    const/4 v1, 0x0

    iput v1, v10, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3758
    iget v3, v10, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3759
    .local v3, "motionView":Landroid/view/View;
    if-eqz v3, :cond_24

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    nop

    :cond_24
    iput v1, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3760
    add-int v1, v12, v17

    iput v1, v10, Landroid/widget/AbsListView;->mMotionY:I

    .line 3761
    iput v0, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3763
    .end local v0    # "motionPosition":I
    .end local v3    # "motionView":Landroid/view/View;
    :cond_25
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mLastY:I

    .line 3764
    move/from16 v0, v31

    iput v0, v10, Landroid/widget/AbsListView;->mDirection:I

    .line 3767
    .end local v2    # "overScrollDistance":I
    .end local v20    # "newScroll":I
    .end local v21    # "oldScroll":I
    .end local v31    # "newDirection":I
    move v3, v14

    .end local v14    # "incrementalDeltaY":I
    .local v3, "incrementalDeltaY":I
    :cond_26
    :goto_a
    return-void
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .line 1392
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1395
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1328
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_0

    .line 1330
    :cond_0
    if-eqz p1, :cond_1

    .line 1331
    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 1332
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1335
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 1337
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    .line 1338
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1340
    :cond_2
    return-void
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 2445
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2447
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 2448
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .local v1, "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_0
    goto :goto_1

    .line 2449
    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2450
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    goto :goto_0

    .line 2452
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2455
    .restart local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_1
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_2

    .line 2456
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 2458
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2459
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2460
    if-eq v1, v0, :cond_3

    .line 2461
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2463
    :cond_3
    return-void
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .locals 10
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "useOffsets"    # Z

    .line 3355
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 3356
    .local v6, "longPressPosition":I
    if-gez v6, :cond_0

    .line 3357
    const/4 v0, 0x0

    return v0

    .line 3360
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 3361
    .local v7, "longPressId":J
    const/4 v9, 0x0

    .line 3363
    .local v9, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_1

    .line 3364
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move-wide v4, v7

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v9

    .line 3368
    :cond_1
    if-nez v9, :cond_3

    .line 3369
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3370
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0, v6, v7, v8}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3372
    if-eqz p4, :cond_2

    .line 3373
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v9

    goto :goto_0

    .line 3375
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v9

    .line 3379
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    :goto_0
    return v9
.end method

.method private showContextMenuInternal(FFZ)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "useOffsets"    # Z

    .line 3320
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3321
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3322
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3323
    .local v1, "id":J
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3324
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 3325
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3326
    if-eqz p3, :cond_0

    .line 3327
    invoke-super {p0, p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v4

    return v4

    .line 3329
    :cond_0
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    .line 3333
    .end local v1    # "id":J
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    if-eqz p3, :cond_2

    .line 3334
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenu(FF)Z

    move-result v1

    return v1

    .line 3336
    :cond_2
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result v1

    return v1
.end method

.method private showPopup()V
    .locals 1

    .line 5853
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5854
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 5855
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 5857
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 5859
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .line 3526
    iget v0, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, p2, v0

    .line 3527
    .local v0, "deltaY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3528
    .local v1, "distance":I
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 3529
    .local v2, "overscroll":Z
    :goto_0
    const/4 v5, 0x0

    .line 3531
    .local v5, "isFarEnough":Z
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    if-eqz v6, :cond_2

    .line 3532
    iget v6, p0, Landroid/widget/AbsListView;->mMoveAcceleration:I

    if-le v1, v6, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    move v5, v6

    goto :goto_3

    .line 3534
    :cond_2
    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v6, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    move v5, v6

    .line 3540
    :goto_3
    if-nez v2, :cond_4

    if-eqz v5, :cond_b

    .line 3541
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_b

    .line 3542
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3543
    if-eqz v2, :cond_5

    .line 3544
    const/4 v6, 0x5

    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3545
    iput v4, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_6

    .line 3547
    :cond_5
    const/4 v6, 0x3

    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3548
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    if-eqz v6, :cond_7

    .line 3549
    if-lez v0, :cond_6

    iget v6, p0, Landroid/widget/AbsListView;->mMoveAcceleration:I

    goto :goto_4

    :cond_6
    iget v6, p0, Landroid/widget/AbsListView;->mMoveAcceleration:I

    neg-int v6, v6

    :goto_4
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_6

    .line 3551
    :cond_7
    if-lez v0, :cond_8

    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    goto :goto_5

    :cond_8
    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v6, v6

    :goto_5
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3554
    :goto_6
    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3555
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3556
    iget v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3557
    .local v6, "motionView":Landroid/view/View;
    if-eqz v6, :cond_9

    .line 3558
    invoke-virtual {v6, v4}, Landroid/view/View;->setPressed(Z)V

    .line 3560
    :cond_9
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3563
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 3564
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_a

    .line 3565
    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3567
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 3568
    return v3

    .line 3571
    .end local v4    # "parent":Landroid/view/ViewParent;
    .end local v6    # "motionView":Landroid/view/View;
    :cond_b
    return v4
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .line 1212
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1213
    .local v0, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1214
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v3, 0x0

    const/16 v4, 0xb

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1216
    .local v2, "useActivated":Z
    :goto_0
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1217
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1218
    .local v4, "child":Landroid/view/View;
    add-int v5, v0, v3

    .line 1220
    .local v5, "position":I
    instance-of v6, v4, Landroid/widget/Checkable;

    if-eqz v6, :cond_1

    .line 1221
    move-object v6, v4

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2

    .line 1222
    :cond_1
    if-eqz v2, :cond_2

    .line 1223
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setActivated(Z)V

    .line 1216
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1226
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .line 1696
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1698
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 4672
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4673
    .local v0, "count":I
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4674
    .local v1, "firstPosition":I
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4676
    .local v2, "adapter":Landroid/widget/ListAdapter;
    if-nez v2, :cond_0

    .line 4677
    return-void

    .line 4680
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 4681
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4682
    .local v4, "child":Landroid/view/View;
    add-int v5, v1, v3

    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4683
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4685
    :cond_1
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 4680
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4687
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 6325
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 6284
    return-void
.end method

.method public canScrollList(I)Z
    .locals 9
    .param p1, "direction"    # I

    .line 5207
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5208
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5209
    return v1

    .line 5212
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5213
    .local v2, "firstPosition":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5214
    .local v3, "listPadding":Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-lez p1, :cond_3

    .line 5215
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 5216
    .local v5, "lastBottom":I
    add-int v6, v2, v0

    .line 5217
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v6, v7, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    return v1

    .line 5219
    .end local v5    # "lastBottom":I
    .end local v6    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 5220
    .local v5, "firstTop":I
    if-gtz v2, :cond_5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_3

    :cond_5
    :goto_2
    move v1, v4

    :goto_3
    return v1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 6197
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 6353
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .line 1058
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1061
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1064
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1065
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .line 6246
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 6247
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6248
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6249
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6250
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6253
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 7

    .line 2059
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2060
    .local v0, "count":I
    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 2061
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v2, :cond_2

    .line 2062
    mul-int/lit8 v2, v0, 0x64

    .line 2064
    .local v2, "extent":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2065
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2066
    .local v3, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2067
    .local v4, "height":I
    if-lez v4, :cond_0

    .line 2068
    mul-int/lit8 v5, v3, 0x64

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    .line 2071
    :cond_0
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2072
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2073
    .local v5, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2074
    if-lez v4, :cond_1

    .line 2075
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v5, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v4

    sub-int/2addr v2, v6

    .line 2078
    :cond_1
    return v2

    .line 2080
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "extent":I
    .end local v3    # "top":I
    .end local v4    # "height":I
    .end local v5    # "bottom":I
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 2083
    :cond_3
    return v1
.end method

.method protected computeVerticalScrollOffset()I
    .locals 9

    .line 2088
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2089
    .local v0, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2090
    .local v1, "childCount":I
    const/4 v2, 0x0

    if-ltz v0, :cond_4

    if-lez v1, :cond_4

    .line 2091
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v3, :cond_1

    .line 2092
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2093
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2094
    .local v4, "top":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 2095
    .local v5, "height":I
    if-lez v5, :cond_0

    .line 2096
    mul-int/lit8 v6, v0, 0x64

    mul-int/lit8 v7, v4, 0x64

    div-int/2addr v7, v5

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v7, v7

    .line 2097
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 2096
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 2099
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "top":I
    .end local v5    # "height":I
    :cond_0
    goto :goto_2

    .line 2101
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2102
    .local v2, "count":I
    if-nez v0, :cond_2

    .line 2103
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    goto :goto_1

    .line 2104
    .end local v3    # "index":I
    :cond_2
    add-int v3, v0, v1

    if-ne v3, v2, :cond_3

    .line 2105
    move v3, v2

    goto :goto_0

    .line 2107
    :cond_3
    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    .line 2109
    .restart local v3    # "index":I
    :goto_1
    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    return v4

    .line 2112
    .end local v2    # "count":I
    .end local v3    # "index":I
    :cond_4
    :goto_2
    return v2
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .line 2118
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    .line 2119
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2120
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 2122
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 2125
    .end local v0    # "result":I
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2127
    .restart local v0    # "result":I
    :cond_1
    :goto_0
    return v0
.end method

.method confirmCheckedPositionsById()V
    .locals 19

    .line 5636
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5638
    const/4 v1, 0x0

    .line 5639
    .local v1, "checkedCountChanged":Z
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "checkedIndex":I
    .local v3, "checkedCountChanged":Z
    :goto_0
    iget-object v4, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 5640
    iget-object v4, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v11

    .line 5641
    .local v11, "id":J
    iget-object v4, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 5643
    .local v4, "lastPos":I
    iget-object v5, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 5644
    .local v13, "lastPosId":J
    cmp-long v5, v11, v13

    const/4 v15, 0x1

    if-eqz v5, :cond_3

    .line 5646
    add-int/lit8 v5, v4, -0x14

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 5647
    .local v16, "start":I
    add-int/lit8 v5, v4, 0x14

    iget v6, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5648
    .local v10, "end":I
    const/4 v5, 0x0

    .line 5649
    .local v5, "found":Z
    move/from16 v6, v16

    .local v6, "searchPos":I
    :goto_1
    if-ge v6, v10, :cond_1

    .line 5650
    iget-object v7, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 5651
    .local v7, "searchId":J
    cmp-long v9, v11, v7

    if-nez v9, :cond_0

    .line 5652
    const/4 v5, 0x1

    .line 5653
    iget-object v9, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v6, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5654
    iget-object v9, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 5655
    goto :goto_2

    .line 5649
    .end local v7    # "searchId":J
    :cond_0
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    goto :goto_1

    .line 5659
    .end local v5    # "found":Z
    .end local v6    # "searchPos":I
    .local v2, "found":Z
    :cond_1
    :goto_2
    move v2, v5

    if-nez v2, :cond_2

    .line 5660
    iget-object v5, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v11, v12}, Landroid/util/LongSparseArray;->delete(J)V

    .line 5661
    add-int/lit8 v1, v1, -0x1

    .line 5662
    iget v5, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v5, v15

    iput v5, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 5663
    const/4 v3, 0x1

    .line 5664
    iget-object v5, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v5, :cond_2

    .line 5665
    iget-object v5, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v6, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/16 v17, 0x0

    move v7, v4

    move-wide v8, v11

    move/from16 v18, v10

    move/from16 v10, v17

    .end local v10    # "end":I
    .local v18, "end":I
    invoke-virtual/range {v5 .. v10}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 5669
    .end local v2    # "found":Z
    .end local v16    # "start":I
    .end local v18    # "end":I
    :cond_2
    goto :goto_3

    .line 5670
    :cond_3
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5639
    .end local v4    # "lastPos":I
    .end local v11    # "id":J
    .end local v13    # "lastPosId":J
    :goto_3
    add-int/2addr v1, v15

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 5674
    .end local v1    # "checkedIndex":I
    :cond_4
    if-eqz v3, :cond_5

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 5675
    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 5677
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 3121
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .locals 1

    .line 5012
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .line 6510
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6511
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2663
    const/4 v0, 0x0

    .line 2664
    .local v0, "saveCount":I
    iget v1, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v2, 0x22

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2665
    .local v1, "clipToPadding":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 2666
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2667
    iget v3, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 2668
    .local v3, "scrollX":I
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 2669
    .local v4, "scrollY":I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2672
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2675
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_1
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2676
    .local v3, "drawSelectorOnTop":Z
    if-nez v3, :cond_2

    .line 2677
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2680
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2682
    if-eqz v3, :cond_3

    .line 2683
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2686
    :cond_3
    if-eqz v1, :cond_4

    .line 2687
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2688
    iget v4, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2690
    :cond_4
    return-void
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3419
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .line 3413
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4441
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 4442
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    .line 4443
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4444
    .local v0, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    .line 4450
    .local v1, "clipToPadding":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4451
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 4452
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 4453
    .local v4, "height":I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 4454
    .local v5, "translateX":I
    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .local v6, "translateY":I
    goto :goto_0

    .line 4456
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "translateX":I
    .end local v6    # "translateY":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    .line 4457
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 4458
    .restart local v4    # "height":I
    const/4 v5, 0x0

    .line 4459
    .restart local v5    # "translateX":I
    move v6, v2

    .line 4461
    .restart local v6    # "translateY":I
    :goto_0
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_2

    .line 4462
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 4463
    .local v7, "restoreCount":I
    add-int v8, v5, v3

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 4464
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v9

    add-int/2addr v9, v6

    .line 4463
    invoke-virtual {p1, v5, v6, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4465
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v0

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v6

    .line 4466
    .local v8, "edgeY":I
    int-to-float v9, v5

    int-to-float v10, v8

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4467
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4468
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4469
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    .line 4471
    :cond_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4473
    .end local v7    # "restoreCount":I
    .end local v8    # "edgeY":I
    :cond_2
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_5

    .line 4474
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 4475
    .restart local v7    # "restoreCount":I
    add-int v8, v6, v4

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int v9, v5, v3

    add-int v10, v6, v4

    invoke-virtual {p1, v5, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4477
    neg-int v8, v3

    add-int/2addr v8, v5

    .line 4478
    .local v8, "edgeX":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget v10, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v10, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 4479
    if-eqz v1, :cond_3

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    nop

    :cond_3
    sub-int/2addr v9, v2

    .line 4480
    .local v9, "edgeY":I
    int-to-float v2, v8

    int-to-float v10, v9

    invoke-virtual {p1, v2, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4481
    const/high16 v2, 0x43340000    # 180.0f

    int-to-float v10, v3

    const/4 v11, 0x0

    invoke-virtual {p1, v2, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4482
    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4483
    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4484
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    .line 4486
    :cond_4
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4489
    .end local v0    # "scrollY":I
    .end local v1    # "clipToPadding":Z
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "translateX":I
    .end local v6    # "translateY":I
    .end local v7    # "restoreCount":I
    .end local v8    # "edgeX":I
    .end local v9    # "edgeY":I
    :cond_5
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 2916
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 2917
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2918
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 7358
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 7360
    const-string v0, "drawing:cacheColorHint"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7361
    const-string/jumbo v0, "list:fastScrollEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7362
    const-string/jumbo v0, "list:scrollingCacheEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7363
    const-string/jumbo v0, "list:smoothScrollbarEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7364
    const-string/jumbo v0, "list:stackFromBottom"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7365
    const-string/jumbo v0, "list:textFilterEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7367
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 7368
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 7369
    const-string/jumbo v1, "selectedView"

    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 7370
    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 7372
    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "y"    # I

    .line 5489
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5490
    .local v0, "childCount":I
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 5491
    return v1

    .line 5494
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    .line 5495
    .local v2, "motionRow":I
    if-eq v2, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    return v1
.end method

.method abstract findMotionRow(I)I
.end method

.method findNextGap(Z)V
    .locals 0
    .param p1, "down"    # Z

    .line 5443
    return-void
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .line 1614
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1615
    return-object p0

    .line 1617
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .line 4387
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 4388
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4390
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4391
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4392
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 6337
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 6343
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 6348
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1545
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .line 2249
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2250
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    .line 2251
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 2252
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2255
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2256
    const/4 v1, 0x0

    return-object v1

    .line 2259
    :cond_1
    return-object p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .line 2149
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2150
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v1

    .line 2151
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    .line 2152
    return v1

    .line 2154
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2155
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 2158
    :cond_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 2159
    .local v2, "bottom":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 2160
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    .line 2161
    .local v4, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v3, v5

    if-le v2, v5, :cond_2

    .line 2162
    sub-int v5, v2, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    goto :goto_0

    .line 2161
    :cond_2
    move v5, v1

    :goto_0
    return v5
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .line 2714
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    :goto_0
    return v0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 6415
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .line 975
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .line 1039
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1043
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1044
    .local v0, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 1045
    .local v2, "count":I
    new-array v3, v2, [J

    .line 1047
    .local v3, "ids":[J
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1048
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1051
    .end local v1    # "i":I
    :cond_1
    return-object v3

    .line 1040
    .end local v0    # "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v2    # "count":I
    .end local v3    # "ids":[J
    :cond_2
    :goto_1
    new-array v0, v1, [J

    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .line 1007
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1008
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 1011
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 1024
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 1027
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    .line 1234
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 3306
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 1683
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1684
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1687
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1688
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1691
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1693
    :goto_0
    return-void
.end method

.method getFooterViewsCount()I
    .locals 1

    .line 5423
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .line 5413
    const/4 v0, 0x0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 6
    .param p1, "position"    # I

    .line 7299
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 7300
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 7301
    .local v1, "childCount":I
    sub-int v2, p1, v0

    .line 7302
    .local v2, "index":I
    if-ltz v2, :cond_0

    if-ge v2, v1, :cond_0

    .line 7304
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7305
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    return v4

    .line 7308
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v3}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 7309
    .restart local v3    # "view":Landroid/view/View;
    iget v4, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 7310
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 7311
    .local v4, "height":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v3, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7312
    return v4
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .line 2699
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .line 2335
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .line 2347
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .line 2359
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .line 2323
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .line 2709
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    :goto_0
    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 2307
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2308
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2310
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    .line 1570
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    .line 1571
    .local v0, "choiceMode":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1580
    return v1

    .line 1578
    :pswitch_0
    const/4 v1, 0x2

    return v1

    .line 1575
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 1573
    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2851
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 6382
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .line 2009
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2010
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 2012
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .line 2132
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2133
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2134
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    .line 2135
    return v1

    .line 2137
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v2, :cond_1

    .line 2138
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 2141
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2142
    .local v2, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 2143
    .local v3, "fadeLength":F
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v2, v4, :cond_2

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v2, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    return v4
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .line 2704
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .line 6377
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .line 1420
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1423
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    return v0
.end method

.method handleBoundsChange()V
    .locals 6

    .line 2744
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 2745
    return-void

    .line 2747
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2748
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 2749
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2750
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 2751
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2752
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2753
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2755
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_1

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v5, v1, :cond_1

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v5, v1, :cond_2

    .line 2756
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 2751
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2760
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method protected handleDataChanged()V
    .locals 12

    .line 5681
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5682
    .local v0, "count":I
    iget v1, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5683
    .local v1, "lastHandledItemCount":I
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5685
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5686
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 5690
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 5692
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v0, :cond_d

    .line 5697
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v6, :cond_8

    .line 5699
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 5700
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 5702
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 5703
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5704
    return-void

    .line 5705
    :cond_1
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_5

    .line 5706
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v6, :cond_2

    .line 5707
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 5708
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5709
    return-void

    .line 5711
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 5712
    .local v6, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 5713
    .local v8, "listBottom":I
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 5714
    .local v9, "lastChild":Landroid/view/View;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_0

    :cond_3
    move v10, v8

    .line 5715
    .local v10, "lastBottom":I
    :goto_0
    iget v11, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v11, v6

    if-lt v11, v1, :cond_4

    if-gt v10, v8, :cond_4

    .line 5717
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5718
    return-void

    .line 5722
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 5725
    .end local v6    # "childCount":I
    .end local v8    # "listBottom":I
    .end local v9    # "lastChild":Landroid/view/View;
    .end local v10    # "lastBottom":I
    :cond_5
    iget v6, p0, Landroid/widget/AbsListView;->mSyncMode:I

    const/4 v8, 0x5

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 5766
    :pswitch_0
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5767
    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 5769
    return-void

    .line 5727
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5732
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5733
    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 5735
    return-void

    .line 5739
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 5740
    .local v6, "newPos":I
    if-ltz v6, :cond_8

    .line 5742
    invoke-virtual {p0, v6, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v9

    .line 5743
    .local v9, "selectablePos":I
    if-ne v9, v6, :cond_8

    .line 5745
    iput v6, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 5747
    iget-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 5750
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_1

    .line 5754
    :cond_7
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5758
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5759
    return-void

    .line 5773
    .end local v6    # "newPos":I
    .end local v9    # "selectablePos":I
    :cond_8
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_c

    .line 5775
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 5778
    .restart local v6    # "newPos":I
    if-lt v6, v0, :cond_9

    .line 5779
    add-int/lit8 v6, v0, -0x1

    .line 5781
    :cond_9
    if-gez v6, :cond_a

    .line 5782
    const/4 v6, 0x0

    .line 5786
    :cond_a
    invoke-virtual {p0, v6, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5788
    .local v7, "selectablePos":I
    if-ltz v7, :cond_b

    .line 5789
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5790
    return-void

    .line 5793
    :cond_b
    invoke-virtual {p0, v6, v4}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5794
    if-ltz v7, :cond_d

    .line 5795
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5796
    return-void

    .line 5802
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_c
    iget v6, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-ltz v6, :cond_d

    .line 5803
    return-void

    .line 5810
    :cond_d
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v6, :cond_e

    goto :goto_3

    :cond_e
    move v3, v5

    :goto_3
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5811
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 5812
    const-wide/high16 v5, -0x8000000000000000L

    iput-wide v5, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 5813
    iput v3, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 5814
    iput-wide v5, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 5815
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 5816
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 5817
    iput v3, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 5818
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    .line 5819
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleScrollBarDragging(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3829
    const/4 v0, 0x0

    return v0
.end method

.method public hasTextFilter()Z
    .locals 1

    .line 6259
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .line 5446
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 5447
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 5448
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5450
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 5451
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5453
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 5454
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5455
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 5457
    :cond_2
    return-void
.end method

.method protected internalSetPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2722
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->internalSetPadding(IIII)V

    .line 2723
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2724
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 2726
    :cond_0
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .line 5502
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 5503
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 5504
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 5505
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5506
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .line 1514
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 1517
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1518
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1520
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 1521
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3

    .line 1411
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1412
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 1414
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1434
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1435
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    .line 1437
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .line 5933
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 990
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 994
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .line 2694
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1631
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1497
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1708
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1678
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .line 1463
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 2962
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 2963
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2964
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .line 2859
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2863
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2864
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2865
    .local v1, "selectorRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2866
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2868
    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2870
    .local v2, "v":Landroid/view/View;
    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 2871
    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 2872
    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2874
    :cond_3
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2876
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v3

    .line 2877
    .local v3, "longClickable":Z
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2878
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_5

    instance-of v5, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_5

    .line 2879
    if-eqz v3, :cond_4

    .line 2880
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 2881
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    .line 2880
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 2883
    :cond_4
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2886
    :cond_5
    :goto_0
    if-eqz v3, :cond_7

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_7

    .line 2887
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_6

    .line 2888
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 2890
    :cond_6
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2891
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2894
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "longClickable":Z
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    return-void

    .line 2860
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v1    # "selectorRect":Landroid/graphics/Rect;
    :cond_8
    :goto_1
    return-void
.end method

.method protected layoutChildren()V
    .locals 0

    .line 2241
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "outMetadata"    # [Z

    .line 2378
    const-string/jumbo v0, "obtainView"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2380
    const/4 v0, 0x0

    aput-boolean v0, p2, v0

    .line 2384
    iget-object v3, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 2385
    .local v3, "transientView":Landroid/view/View;
    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 2386
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2389
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v2, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 2390
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2393
    .local v2, "updatedView":Landroid/view/View;
    if-eq v2, v3, :cond_0

    .line 2394
    invoke-direct {p0, v2, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2395
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v2, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2399
    .end local v2    # "updatedView":Landroid/view/View;
    :cond_0
    aput-boolean v4, p2, v0

    .line 2402
    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2403
    return-object v3

    .line 2406
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v5

    .line 2407
    .local v5, "scrapView":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2408
    .local v6, "child":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 2409
    if-eq v6, v5, :cond_2

    .line 2411
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v5, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_0

    .line 2412
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2413
    aput-boolean v4, p2, v0

    .line 2416
    invoke-virtual {v6}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2420
    :cond_3
    :goto_0
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v0, :cond_4

    .line 2421
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v6, v0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2424
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 2425
    invoke-virtual {v6, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2428
    :cond_5
    invoke-direct {p0, v6, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2430
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2431
    iget-object v0, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v0, :cond_6

    .line 2432
    new-instance v0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 2434
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2435
    iget-object v0, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2439
    :cond_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2441
    return-object v6
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 2968
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 2970
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2971
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2972
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 2973
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2976
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 2977
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 2978
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2981
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2982
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2983
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2985
    :cond_1
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .line 3126
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3127
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3128
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3130
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 3131
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3133
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3134
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3136
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3137
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3139
    :cond_3
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 6014
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6015
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 6016
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 6017
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 6019
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 6020
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6021
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    return-object v0

    .line 6023
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .line 2989
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 2991
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 2994
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2997
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 2999
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3000
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3001
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3002
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3003
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3006
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3007
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v4}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3008
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3011
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3012
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3013
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3016
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3017
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3018
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3021
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3022
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3025
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3026
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3029
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3030
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3033
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3034
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3037
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3038
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3039
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3042
    :cond_8
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3043
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 2
    .param p1, "hint"    # I

    .line 5823
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 5824
    const/4 v0, 0x4

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 5826
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5827
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 5831
    :cond_1
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5832
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 5836
    :cond_2
    :goto_0
    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 5837
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .line 6329
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 6330
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6331
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 6333
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2017
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2018
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2019
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2022
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2023
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2024
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2026
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 2028
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 4360
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 4362
    .local v0, "actionButton":I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_6

    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v1, v2, :cond_6

    .line 4365
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4366
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4367
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .end local v0    # "actionButton":I
    goto :goto_2

    .line 4344
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4345
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .local v0, "axisValue":F
    :goto_0
    goto :goto_1

    .line 4346
    .end local v0    # "axisValue":F
    :cond_4
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4347
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_0

    .line 4349
    :cond_5
    const/4 v0, 0x0

    .line 4352
    .restart local v0    # "axisValue":F
    :goto_1
    iget v1, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 4353
    .local v1, "delta":I
    if-eqz v1, :cond_6

    .line 4354
    invoke-virtual {p0, v1, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4355
    return v2

    .line 4374
    .end local v0    # "axisValue":F
    .end local v1    # "delta":I
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 6264
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6266
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_1

    .line 6267
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 6271
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6272
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6276
    :cond_1
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2550
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2552
    return-void

    .line 2556
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2557
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2558
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    iget-boolean v1, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .local v1, "isItemEnabled":Z
    goto :goto_0

    .line 2560
    .end local v1    # "isItemEnabled":Z
    :cond_1
    move v1, v2

    .line 2563
    .restart local v1    # "isItemEnabled":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_2

    goto :goto_2

    .line 2568
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne p2, v2, :cond_3

    .line 2569
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2570
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    .line 2572
    :cond_3
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2575
    :goto_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2576
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2577
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2580
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2581
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2582
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2584
    :cond_5
    return-void

    .line 2564
    :cond_6
    :goto_2
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2565
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1551
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1552
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1553
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1554
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1555
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1556
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1558
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1559
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1560
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1561
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1565
    :cond_1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1566
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1567
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4522
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4523
    const/4 v0, 0x1

    return v0

    .line 4526
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4545
    .local v0, "actionMasked":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    .line 4546
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4549
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 4557
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4558
    return v3

    .line 4561
    :cond_2
    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    const/4 v4, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 4601
    :pswitch_0
    iget v1, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 4602
    iget v1, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    if-ne v1, v3, :cond_3

    .line 4603
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    goto :goto_0

    .line 4605
    :cond_3
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    .line 4608
    :goto_0
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v1, :cond_4

    goto :goto_1

    .line 4610
    :cond_4
    iget v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 4611
    .local v1, "pointerIndex":I
    if-ne v1, v4, :cond_5

    .line 4612
    const/4 v1, 0x0

    .line 4613
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4615
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    .line 4616
    .local v4, "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4617
    iget-object v5, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4618
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v4, v6}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4619
    return v3

    .line 4623
    .end local v1    # "pointerIndex":I
    .end local v4    # "y":I
    :cond_6
    :goto_1
    goto :goto_3

    .line 4629
    :pswitch_1
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 4631
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4632
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4633
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4634
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4635
    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    .line 4636
    goto :goto_3

    .line 4564
    :pswitch_2
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 4566
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4567
    .local v4, "touchMode":I
    if-eq v4, v1, :cond_9

    const/4 v1, 0x5

    if-ne v4, v1, :cond_7

    goto :goto_2

    .line 4572
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 4573
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 4574
    .local v5, "y":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4576
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v6

    .line 4577
    .local v6, "motionPosition":I
    const/4 v7, 0x4

    if-eq v4, v7, :cond_8

    if-ltz v6, :cond_8

    .line 4580
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v8, v6, v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4581
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4582
    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4583
    iput v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4584
    iput v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4585
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4586
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4588
    .end local v8    # "v":Landroid/view/View;
    :cond_8
    const/high16 v8, -0x80000000

    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4589
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 4590
    iget-object v8, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4591
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4592
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4593
    if-ne v4, v7, :cond_b

    .line 4594
    return v3

    .line 4568
    .end local v1    # "x":I
    .end local v5    # "y":I
    .end local v6    # "motionPosition":I
    :cond_9
    :goto_2
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4569
    return v3

    .line 4641
    .end local v4    # "touchMode":I
    :cond_a
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 4643
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4648
    :cond_b
    :goto_3
    return v2

    .line 4554
    :cond_c
    :goto_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3384
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3389
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3390
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3391
    return v1

    .line 3393
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3395
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3397
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3398
    .local v0, "view":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3399
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3400
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3402
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3403
    return v1

    .line 3406
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 2194
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2196
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2198
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2199
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2200
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2201
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 2200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2203
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2206
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2208
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 2211
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_2

    .line 2212
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    .line 2214
    :cond_2
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2215
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2168
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2169
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2171
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2172
    .local v0, "listPadding":Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2173
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2174
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2175
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2178
    iget v1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2179
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2180
    .local v1, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2181
    .local v3, "listBottom":I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2182
    .local v4, "lastChild":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v3

    .line 2183
    .local v5, "lastBottom":I
    :goto_0
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v6, v1

    iget v7, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_2

    if-gt v5, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2186
    .end local v1    # "childCount":I
    .end local v3    # "listBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastBottom":I
    :cond_3
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 4424
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4425
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4426
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 4427
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4428
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 4429
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4431
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4432
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4434
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 4436
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    return v1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 13
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    move-object v6, p0

    .line 4408
    move/from16 v7, p5

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 4409
    .local v8, "motionIndex":I
    invoke-virtual {v6, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4410
    .local v9, "motionView":Landroid/view/View;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 4411
    .local v10, "oldTop":I
    if-eqz v9, :cond_1

    neg-int v0, v7

    neg-int v1, v7

    invoke-virtual {v6, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4412
    :cond_1
    move v0, v7

    .line 4413
    .local v0, "myUnconsumed":I
    const/4 v1, 0x0

    .line 4414
    .local v1, "myConsumed":I
    if-eqz v9, :cond_2

    .line 4415
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v10

    .line 4416
    .end local v1    # "myConsumed":I
    .local v2, "myConsumed":I
    sub-int/2addr v0, v2

    .line 4418
    move v12, v0

    move v11, v2

    goto :goto_1

    .end local v2    # "myConsumed":I
    .restart local v1    # "myConsumed":I
    :cond_2
    move v12, v0

    move v11, v1

    .end local v0    # "myUnconsumed":I
    .end local v1    # "myConsumed":I
    .local v11, "myConsumed":I
    .local v12, "myUnconsumed":I
    :goto_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, v11

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 4420
    .end local v11    # "myConsumed":I
    .end local v12    # "myUnconsumed":I
    :cond_3
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 4401
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 4402
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4403
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 4330
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 4331
    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 4332
    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4333
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 4335
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 4337
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .line 6518
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 6519
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6520
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 6521
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 6522
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6524
    :cond_0
    return v2

    .line 6525
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_2

    .line 6526
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 6527
    const/4 v0, 0x1

    return v0

    .line 6529
    :cond_2
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .line 6542
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 4531
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 4532
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FastScroller;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    .line 4533
    .local v0, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v0, :cond_0

    .line 4534
    return-object v0

    .line 4537
    .end local v0    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1924
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 1926
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1927
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1929
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 1931
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 1932
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1933
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 1934
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 1935
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 1936
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 1937
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_0

    .line 1938
    :cond_0
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 1939
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1941
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1942
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 1943
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1944
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 1945
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 1946
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 1947
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 1948
    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 1951
    :cond_1
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1953
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_2

    .line 1954
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1957
    :cond_2
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_3

    .line 1958
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1961
    :cond_3
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1963
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_4

    .line 1965
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1968
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1969
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 3103
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3104
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 3105
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3107
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    .line 1832
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1834
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1836
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1838
    .local v1, "ss":Landroid/widget/AbsListView$SavedState;
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v2, :cond_0

    .line 1840
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v2, v2, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1841
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v2, v2, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1842
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1843
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1844
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->height:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1845
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1846
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v2, v2, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v2, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1847
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1848
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1849
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1850
    return-object v1

    .line 1853
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 1854
    .local v2, "haveChildren":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v5

    .line 1855
    .local v5, "selectedId":J
    iput-wide v5, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1856
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1858
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const-wide/16 v8, -0x1

    if-ltz v7, :cond_2

    .line 1860
    iget v7, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1861
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v7

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1862
    iput-wide v8, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 1864
    :cond_2
    if-eqz v2, :cond_4

    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v7, :cond_4

    .line 1874
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1875
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1876
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1877
    .local v8, "firstPos":I
    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v8, v9, :cond_3

    .line 1878
    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v8, v9, -0x1

    .line 1880
    :cond_3
    iput v8, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1881
    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    iput-wide v9, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1882
    .end local v7    # "v":Landroid/view/View;
    .end local v8    # "firstPos":I
    goto :goto_1

    .line 1883
    :cond_4
    iput v4, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1884
    iput-wide v8, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1885
    iput v4, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1889
    :goto_1
    const/4 v7, 0x0

    iput-object v7, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1890
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v7, :cond_5

    .line 1891
    iget-object v7, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1892
    .local v7, "textFilter":Landroid/widget/EditText;
    if-eqz v7, :cond_5

    .line 1893
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 1894
    .local v8, "filterText":Landroid/text/Editable;
    if-eqz v8, :cond_5

    .line 1895
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1900
    .end local v7    # "textFilter":Landroid/widget/EditText;
    .end local v8    # "filterText":Landroid/text/Editable;
    :cond_5
    iget v7, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    iput-boolean v3, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1902
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_7

    .line 1903
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1905
    :cond_7
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_9

    .line 1906
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 1907
    .local v3, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v7, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    .line 1908
    .local v7, "count":I
    nop

    .local v4, "i":I
    :goto_3
    if-ge v4, v7, :cond_8

    .line 1909
    iget-object v8, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    iget-object v10, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v3, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1908
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1911
    .end local v4    # "i":I
    :cond_8
    iput-object v3, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1913
    .end local v3    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v7    # "count":I
    :cond_9
    iget v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v3, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1915
    iget-object v3, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v3, :cond_a

    .line 1916
    iget-object v3, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 1919
    :cond_a
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 2730
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 2731
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 2732
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 2734
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 4396
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 6293
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6294
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6295
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6296
    .local v1, "length":I
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 6297
    .local v2, "showing":Z
    if-nez v2, :cond_0

    if-lez v1, :cond_0

    .line 6299
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6300
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 6301
    :cond_0
    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 6303
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6304
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6306
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_3

    .line 6307
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 6309
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_2

    .line 6310
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    goto :goto_1

    .line 6312
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6317
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_3
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 3834
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3837
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    nop

    :cond_1
    :goto_0
    return v1

    .line 3840
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    .line 3841
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3844
    :cond_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_3

    .line 3852
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 3854
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3855
    return v1

    .line 3858
    :cond_5
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 3859
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3861
    .local v0, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 3862
    .local v3, "actionMasked":I
    if-nez v3, :cond_6

    .line 3863
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3865
    :cond_6
    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3866
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 3905
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3906
    iget v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3907
    .local v4, "x":I
    iget v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3908
    .local v5, "y":I
    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v6

    .line 3909
    .local v6, "motionPosition":I
    if-ltz v6, :cond_7

    .line 3911
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v6, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3912
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3913
    iput v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3915
    .end local v7    # "child":Landroid/view/View;
    :cond_7
    iput v5, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 3917
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 3919
    goto :goto_2

    .line 3924
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "motionPosition":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 3925
    .local v4, "index":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 3926
    .local v5, "id":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    .line 3927
    .local v6, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    .line 3928
    .local v7, "y":I
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3929
    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3930
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3931
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3932
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v8

    .line 3933
    .local v8, "motionPosition":I
    if-ltz v8, :cond_8

    .line 3935
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v8, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3936
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3937
    iput v8, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3939
    .end local v9    # "child":Landroid/view/View;
    :cond_8
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 3941
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 3943
    goto :goto_2

    .line 3897
    .end local v4    # "index":I
    .end local v5    # "id":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    .end local v8    # "motionPosition":I
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    .line 3899
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 3901
    goto :goto_2

    .line 3877
    :pswitch_4
    iget v4, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 3878
    iget v4, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    if-ne v4, v1, :cond_9

    .line 3879
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    goto :goto_1

    .line 3881
    :cond_9
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    .line 3884
    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 3885
    goto :goto_2

    .line 3889
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 3891
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 3893
    goto :goto_2

    .line 3868
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    .line 3870
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 3872
    nop

    .line 3947
    :goto_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_a

    .line 3948
    iget-object v2, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3950
    :cond_a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 3951
    return v1

    .line 3849
    .end local v0    # "vtev":Landroid/view/MotionEvent;
    .end local v3    # "actionMasked":I
    :cond_b
    :goto_3
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

.method public onTouchModeChanged(Z)V
    .locals 2
    .param p1, "isInTouchMode"    # Z

    .line 3793
    if-eqz p1, :cond_1

    .line 3795
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3799
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3802
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3804
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_0

    .line 3806
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3807
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 3808
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_3

    .line 3809
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3811
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_4

    .line 3812
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3815
    :cond_4
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_5

    .line 3816
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3817
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3818
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3819
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3823
    .end local v0    # "touchMode":I
    :cond_5
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .line 3047
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3049
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3051
    .local v0, "touchMode":I
    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 3052
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3053
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 3054
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3057
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v3, v2}, Landroid/widget/AbsListView$FlingRunnable;->access$502(Landroid/widget/AbsListView$FlingRunnable;Z)Z

    .line 3058
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3059
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_0

    .line 3060
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3062
    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 3063
    iput v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3064
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3065
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3066
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3070
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3072
    if-ne v0, v1, :cond_5

    .line 3074
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_0

    .line 3077
    :cond_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v3, :cond_3

    .line 3079
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 3083
    :cond_3
    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_5

    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 3085
    if-ne v0, v1, :cond_4

    .line 3087
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_0

    .line 3091
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3092
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3093
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3098
    :cond_5
    :goto_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 3099
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1587
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1588
    return v1

    .line 1590
    :cond_0
    const/16 v0, 0x1000

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_1

    const v0, 0x1020038

    if-eq p1, v0, :cond_1

    const v0, 0x102003a

    if-eq p1, v0, :cond_3

    .line 1608
    return v3

    .line 1601
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1602
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 1603
    .local v0, "viewportHeight":I
    neg-int v3, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1604
    return v1

    .line 1606
    .end local v0    # "viewportHeight":I
    :cond_2
    return v3

    .line 1593
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1594
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 1595
    .restart local v0    # "viewportHeight":I
    invoke-virtual {p0, v0, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1596
    return v1

    .line 1598
    .end local v0    # "viewportHeight":I
    :cond_4
    return v3
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    move-object v0, p0

    move v7, p2

    .line 1149
    const/4 v1, 0x0

    .line 1150
    .local v1, "handled":Z
    const/4 v8, 0x1

    .line 1152
    .local v8, "dispatchItemClick":Z
    iget v2, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_b

    .line 1153
    const/4 v9, 0x1

    .line 1154
    .end local v1    # "handled":Z
    .local v9, "handled":Z
    const/4 v10, 0x0

    .line 1156
    .local v10, "checkedStateChanged":Z
    iget v1, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    iget v1, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1178
    :cond_0
    iget v1, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v4, :cond_a

    .line 1179
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v7, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v4

    .line 1180
    .local v1, "checked":Z
    if-eqz v1, :cond_2

    .line 1181
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1182
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v7, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1183
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1184
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1185
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1187
    :cond_1
    iput v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_0

    .line 1188
    :cond_2
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1189
    :cond_3
    iput v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1191
    :cond_4
    :goto_0
    const/4 v10, 0x1

    .end local v1    # "checked":Z
    goto :goto_4

    .line 1158
    :cond_5
    :goto_1
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v7, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v4

    move v11, v1

    .line 1159
    .local v11, "checked":Z
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v7, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1160
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1161
    if-eqz v11, :cond_6

    .line 1162
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 1164
    :cond_6
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1167
    :cond_7
    :goto_2
    if-eqz v11, :cond_8

    .line 1168
    iget v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .line 1170
    :cond_8
    iget v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1172
    :goto_3
    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_9

    .line 1173
    iget-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, v7

    move-wide v4, p3

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1175
    const/4 v8, 0x0

    .line 1177
    :cond_9
    const/4 v10, 0x1

    .line 1178
    .end local v11    # "checked":Z
    nop

    .line 1194
    :cond_a
    :goto_4
    if-eqz v10, :cond_c

    .line 1195
    invoke-direct {v0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .end local v10    # "checkedStateChanged":Z
    goto :goto_5

    .line 1199
    .end local v9    # "handled":Z
    .local v1, "handled":Z
    :cond_b
    move v9, v1

    .end local v1    # "handled":Z
    .restart local v9    # "handled":Z
    :cond_c
    :goto_5
    if-eqz v8, :cond_d

    .line 1200
    invoke-super/range {p0 .. p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v9, v1

    .line 1203
    :cond_d
    return v9
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .line 3265
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result v0

    return v0
.end method

.method performLongPress(Landroid/view/View;IJFF)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 3276
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 3277
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 3278
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3279
    invoke-virtual {p0, p2, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3280
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3282
    :cond_0
    return v2

    .line 3285
    :cond_1
    const/4 v0, 0x0

    .line 3286
    .local v0, "handled":Z
    iget-object v2, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v2, :cond_2

    .line 3287
    iget-object v3, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 3290
    :cond_2
    if-nez v0, :cond_4

    .line 3291
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3292
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p5, v2

    if-eqz v3, :cond_3

    cmpl-float v2, p6, v2

    if-eqz v2, :cond_3

    .line 3293
    invoke-super {p0, p0, p5, p6}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    goto :goto_0

    .line 3295
    :cond_3
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 3298
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 3299
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3301
    :cond_5
    return v0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3430
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3431
    .local v0, "frame":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 3432
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3433
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3436
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3437
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 3438
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3439
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3440
    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3441
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3442
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v2

    return v4

    .line 3437
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3446
    .end local v2    # "i":I
    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method public pointToRowId(II)J
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3459
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3460
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 3461
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    return-wide v1

    .line 3463
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 2612
    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2613
    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 2601
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2602
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2603
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    .line 2604
    .local v7, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    .line 2605
    .local v8, "y":F
    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2606
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "x":F
    .end local v8    # "y":F
    goto :goto_0

    .line 2607
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 2609
    :goto_0
    return-void
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 2594
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2595
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 6426
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6427
    .local v0, "childCount":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v1}, Landroid/widget/AbsListView$RecycleBin;->access$4300(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v1

    .line 6430
    .local v1, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6431
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6432
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 6434
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6435
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6436
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6437
    if-eqz v1, :cond_0

    .line 6439
    invoke-interface {v1, v3}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 6430
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6443
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 6444
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 6445
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .line 5465
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 5466
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 5467
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5469
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5470
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5471
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 4697
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 4698
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 4699
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 4700
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4703
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 4514
    if-eqz p1, :cond_0

    .line 4515
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4517
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 4518
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 2032
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2033
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 2035
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .line 1726
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1727
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 1728
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1729
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1731
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .line 2041
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 2042
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2043
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2044
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2045
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2046
    iput-object v1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2047
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 2048
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 2049
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2050
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2051
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2052
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2053
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2054
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2055
    return-void
.end method

.method resurrectSelection()Z
    .locals 17

    .line 5533
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 5535
    .local v1, "childCount":I
    const/4 v2, 0x0

    if-gtz v1, :cond_0

    .line 5536
    return v2

    .line 5539
    :cond_0
    const/4 v3, 0x0

    .line 5541
    .local v3, "selectedTop":I
    iget-object v4, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 5542
    .local v4, "childrenTop":I
    iget v5, v0, Landroid/widget/AbsListView;->mBottom:I

    iget v6, v0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 5543
    .local v5, "childrenBottom":I
    iget v6, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5544
    .local v6, "firstPosition":I
    iget v7, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5545
    .local v7, "toPosition":I
    const/4 v8, 0x1

    .line 5547
    .local v8, "down":Z
    const/4 v9, 0x1

    if-lt v7, v6, :cond_3

    add-int v10, v6, v1

    if-ge v7, v10, :cond_3

    .line 5548
    move v10, v7

    .line 5550
    .local v10, "selectedPos":I
    iget v11, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v11, v10, v11

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 5551
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    .line 5552
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 5555
    .local v12, "selectedBottom":I
    if-ge v3, v4, :cond_1

    .line 5556
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v13

    add-int v3, v4, v13

    goto :goto_0

    .line 5557
    :cond_1
    if-le v12, v5, :cond_2

    .line 5558
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v13, v5, v13

    .line 5559
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v14

    sub-int v3, v13, v14

    .line 5561
    .end local v11    # "selected":Landroid/view/View;
    .end local v12    # "selectedBottom":I
    :cond_2
    :goto_0
    goto/16 :goto_4

    .line 5562
    .end local v10    # "selectedPos":I
    :cond_3
    if-ge v7, v6, :cond_8

    .line 5564
    move v10, v6

    .line 5565
    .restart local v10    # "selectedPos":I
    move v11, v4

    move v4, v3

    move v3, v2

    .local v3, "i":I
    .local v4, "selectedTop":I
    .local v11, "childrenTop":I
    :goto_1
    if-ge v3, v1, :cond_7

    .line 5566
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 5567
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 5569
    .local v13, "top":I
    if-nez v3, :cond_5

    .line 5571
    move v4, v13

    .line 5573
    if-gtz v6, :cond_4

    if-ge v13, v11, :cond_5

    .line 5576
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v14

    add-int/2addr v11, v14

    .line 5579
    :cond_5
    if-lt v13, v11, :cond_6

    .line 5581
    add-int v10, v6, v3

    .line 5582
    move v4, v13

    .line 5583
    goto :goto_2

    .line 5565
    .end local v12    # "v":Landroid/view/View;
    .end local v13    # "top":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5612
    .end local v11    # "childrenTop":I
    .local v3, "selectedTop":I
    .local v4, "childrenTop":I
    :cond_7
    :goto_2
    move v3, v4

    move v4, v11

    goto :goto_4

    .line 5587
    .end local v10    # "selectedPos":I
    :cond_8
    iget v10, v0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5588
    .local v10, "itemCount":I
    const/4 v8, 0x0

    .line 5589
    add-int v11, v6, v1

    sub-int/2addr v11, v9

    .line 5591
    .local v11, "selectedPos":I
    add-int/lit8 v12, v1, -0x1

    .local v12, "i":I
    :goto_3
    if-ltz v12, :cond_c

    .line 5592
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 5593
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    .line 5594
    .local v14, "top":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 5596
    .local v15, "bottom":I
    add-int/lit8 v9, v1, -0x1

    if-ne v12, v9, :cond_a

    .line 5597
    move v3, v14

    .line 5598
    add-int v9, v6, v1

    if-lt v9, v10, :cond_9

    if-le v15, v5, :cond_a

    .line 5599
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v9

    sub-int/2addr v5, v9

    .line 5603
    :cond_a
    if-gt v15, v5, :cond_b

    .line 5604
    add-int v9, v6, v12

    .line 5605
    .end local v11    # "selectedPos":I
    .local v9, "selectedPos":I
    move v3, v14

    .line 5606
    nop

    .line 5612
    move v10, v9

    goto :goto_4

    .line 5591
    .end local v9    # "selectedPos":I
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "top":I
    .end local v15    # "bottom":I
    .restart local v11    # "selectedPos":I
    :cond_b
    add-int/lit8 v12, v12, -0x1

    const/4 v9, 0x1

    goto :goto_3

    .line 5612
    .end local v10    # "itemCount":I
    .end local v12    # "i":I
    :cond_c
    move v10, v11

    .end local v11    # "selectedPos":I
    .local v10, "selectedPos":I
    :goto_4
    const/4 v9, -0x1

    iput v9, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5613
    iget-object v11, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5614
    iget-object v11, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v11, :cond_d

    .line 5615
    iget-object v11, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v11}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5617
    :cond_d
    iput v9, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5618
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5619
    iput v3, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 5620
    invoke-virtual {v0, v10, v8}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v9

    .line 5621
    .end local v10    # "selectedPos":I
    .restart local v9    # "selectedPos":I
    if-lt v9, v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v10

    if-gt v9, v10, :cond_e

    .line 5622
    const/4 v10, 0x4

    iput v10, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5623
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5624
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 5625
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    goto :goto_5

    .line 5627
    :cond_e
    const/4 v9, -0x1

    .line 5629
    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5631
    if-ltz v9, :cond_f

    const/16 v16, 0x1

    goto :goto_6

    :cond_f
    move/from16 v16, v2

    :goto_6
    return v16
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .line 5513
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5514
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5515
    const/4 v0, 0x1

    return v0

    .line 5517
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .line 5194
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 5195
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1529
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1

    .line 1530
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1531
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 1532
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1534
    return-void

    .line 1536
    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1537
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1540
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1541
    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 5945
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5946
    return v1

    .line 5949
    :cond_0
    const/4 v0, 0x0

    .line 5950
    .local v0, "handled":Z
    const/4 v2, 0x1

    .line 5951
    .local v2, "okToSend":Z
    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq p1, v3, :cond_3

    const/16 v3, 0x3e

    if-eq p1, v3, :cond_2

    const/16 v3, 0x42

    if-eq p1, v3, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 5958
    :cond_1
    :pswitch_0
    const/4 v2, 0x0

    .line 5959
    goto :goto_1

    .line 5979
    :cond_2
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1

    .line 5961
    :cond_3
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5962
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 5963
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 5964
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    .line 5965
    .local v3, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v3, :cond_4

    .line 5966
    invoke-virtual {v3, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 5968
    :cond_4
    const/4 v0, 0x1

    .line 5969
    .end local v3    # "state":Landroid/view/KeyEvent$DispatcherState;
    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_6

    .line 5970
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 5971
    const/4 v0, 0x1

    .line 5972
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5975
    :cond_6
    :goto_0
    const/4 v2, 0x0

    .line 5976
    nop

    .line 5983
    :goto_1
    if-eqz v2, :cond_8

    .line 5984
    invoke-direct {p0, v4}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 5986
    move-object v3, p3

    .line 5987
    .local v3, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 5988
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {p3, v4, v5, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v3

    .line 5991
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 5992
    .local v1, "action":I
    packed-switch v1, :pswitch_data_1

    .end local v1    # "action":I
    .end local v3    # "forwardEvent":Landroid/view/KeyEvent;
    goto :goto_2

    .line 6002
    .restart local v1    # "action":I
    .restart local v3    # "forwardEvent":Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    .end local v1    # "action":I
    .end local v3    # "forwardEvent":Landroid/view/KeyEvent;
    goto :goto_2

    .line 5998
    .restart local v1    # "action":I
    .restart local v3    # "forwardEvent":Landroid/view/KeyEvent;
    :pswitch_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v3}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 5999
    goto :goto_2

    .line 5994
    :pswitch_3
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v3}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 5995
    nop

    .line 6006
    .end local v1    # "action":I
    .end local v3    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_8
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 110
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 951
    if-eqz p1, :cond_0

    .line 952
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 953
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 955
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 958
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 959
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .line 6396
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v0, :cond_1

    .line 6397
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 6398
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6399
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6400
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6399
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6402
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 6404
    .end local v0    # "count":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .line 1247
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1248
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1250
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1252
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1253
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1254
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1256
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1257
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1260
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1261
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1262
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1265
    :cond_3
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .line 2814
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2815
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .line 1371
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_2

    .line 1372
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1373
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1376
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1378
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1379
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    goto :goto_0

    .line 1381
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1389
    :cond_2
    :goto_0
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1311
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_1

    .line 1312
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1314
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    goto :goto_0

    .line 1317
    :cond_0
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1325
    :cond_1
    :goto_0
    return-void
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .line 1349
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1350
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    goto :goto_0

    .line 1352
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    .line 1354
    :goto_0
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2
    .param p1, "filterText"    # Ljava/lang/String;

    .line 1984
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1985
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 1988
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1989
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1990
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    .line 1992
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 1993
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1994
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1998
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 1999
    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2002
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2222
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2224
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 2228
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2229
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2230
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2234
    .end local v1    # "visible":Z
    :cond_1
    return v0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 4992
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 4993
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4995
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$1900(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 4996
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .line 1076
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v0, :cond_0

    .line 1077
    return-void

    .line 1081
    :cond_0
    const/4 v0, 0x3

    if-eqz p2, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    .line 1082
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1083
    invoke-virtual {v1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1088
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 1084
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1092
    :cond_2
    :goto_0
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_b

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v0, :cond_3

    goto :goto_3

    .line 1116
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v3

    .line 1119
    .local v0, "updateIds":Z
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eq v1, p2, :cond_5

    move v1, v4

    goto :goto_2

    :cond_5
    move v1, v3

    .line 1120
    .local v1, "itemCheckChanged":Z
    :goto_2
    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1121
    :cond_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1122
    if-eqz v0, :cond_7

    .line 1123
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1128
    :cond_7
    if-eqz p2, :cond_9

    .line 1129
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1130
    if-eqz v0, :cond_8

    .line 1131
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1133
    :cond_8
    iput v4, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto/16 :goto_6

    .line 1134
    :cond_9
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1135
    :cond_a
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .end local v0    # "updateIds":Z
    goto :goto_6

    .line 1093
    .end local v1    # "itemCheckChanged":Z
    :cond_b
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1094
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1095
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1096
    if-eqz p2, :cond_c

    .line 1097
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_4

    .line 1099
    :cond_c
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1102
    :cond_d
    :goto_4
    if-eq v0, p2, :cond_e

    move v3, v4

    nop

    :cond_e
    move v1, v3

    .line 1103
    .restart local v1    # "itemCheckChanged":Z
    if-eqz v1, :cond_10

    .line 1104
    if-eqz p2, :cond_f

    .line 1105
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_5

    .line 1107
    :cond_f
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1110
    :cond_10
    :goto_5
    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_11

    .line 1111
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1112
    .local v2, "id":J
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v7, p1

    move-wide v8, v2

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1115
    .end local v0    # "oldValue":Z
    .end local v2    # "id":J
    :cond_11
    nop

    .line 1140
    :cond_12
    :goto_6
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_13

    if-eqz v1, :cond_13

    .line 1141
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1142
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1143
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1145
    :cond_13
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 1277
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1278
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1280
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1281
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .line 1506
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1507
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1508
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 933
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 934
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    .line 935
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 936
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 937
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 938
    .end local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 940
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 941
    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 943
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 944
    return-void
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .line 6566
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$4302(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 6567
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6460
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 6461
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isAsync"    # Z

    .line 6473
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 6474
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6475
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 6476
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6477
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6478
    return-void

    .line 6481
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6483
    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 6484
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6485
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6487
    :cond_1
    return-void
.end method

.method public setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6465
    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 6499
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 6500
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 6502
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 1451
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1452
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1455
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .line 2897
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 2898
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 2899
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1648
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1649
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 1651
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 1652
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .line 7326
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 7327
    return-void

    .line 7330
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7331
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 7332
    if-ltz p1, :cond_2

    .line 7333
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 7336
    :cond_1
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7339
    :cond_2
    :goto_0
    if-ltz p1, :cond_5

    .line 7340
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7341
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 7343
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 7344
    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 7345
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 7348
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_4

    .line 7349
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7351
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 7353
    :cond_5
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .line 2825
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2826
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .line 2829
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2830
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2831
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2833
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2834
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2835
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2836
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 2837
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 2838
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 2839
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 2840
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2841
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2842
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1485
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1486
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .line 1719
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1720
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 1721
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 1723
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .line 1665
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 1666
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 6367
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 6368
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 5005
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 5006
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1443
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1444
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1447
    :cond_0
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 6549
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 6550
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 6552
    :cond_0
    return-void
.end method

.method public final shouldDrawSelector()Z
    .locals 1

    .line 2801
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method shouldShowSelector()Z
    .locals 1

    .line 2785
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showContextMenu()Z
    .locals 2

    .line 3311
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3316
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "originalView"    # Landroid/view/View;

    .line 3342
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3343
    return v1

    .line 3345
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 3350
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .line 5087
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 5088
    return-void
.end method

.method smoothScrollBy(IIZZ)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z
    .param p4, "suppressEndFlingStateChangeCall"    # Z

    .line 5092
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 5093
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5097
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5098
    .local v0, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 5099
    .local v1, "childCount":I
    add-int v2, v0, v1

    .line 5100
    .local v2, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    .line 5101
    .local v3, "topLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 5103
    .local v4, "bottomLimit":I
    if-eqz p1, :cond_3

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    const/4 v5, 0x0

    .line 5104
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v3, :cond_1

    if-ltz p1, :cond_3

    :cond_1
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v2, v5, :cond_2

    add-int/lit8 v5, v1, -0x1

    .line 5106
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v4, :cond_2

    if-lez p1, :cond_2

    goto :goto_0

    .line 5112
    :cond_2
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5113
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZZ)V

    goto :goto_1

    .line 5107
    :cond_3
    :goto_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5108
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_4

    .line 5109
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5115
    :cond_4
    :goto_1
    return-void
.end method

.method smoothScrollByOffset(I)V
    .locals 9
    .param p1, "position"    # I

    .line 5121
    const/4 v0, -0x1

    .line 5122
    .local v0, "index":I
    if-gez p1, :cond_0

    .line 5123
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_0

    .line 5124
    :cond_0
    if-lez p1, :cond_1

    .line 5125
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 5128
    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    .line 5129
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5130
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 5131
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5132
    .local v2, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5134
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    .line 5135
    .local v3, "childRectArea":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    .line 5136
    .local v4, "visibleRectArea":I
    int-to-float v5, v4

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 5137
    .local v5, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 5138
    .local v6, "visibleThreshold":F
    const/high16 v7, 0x3f400000    # 0.75f

    if-gez p1, :cond_2

    cmpg-float v8, v5, v7

    if-gez v8, :cond_2

    .line 5141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5142
    :cond_2
    if-lez p1, :cond_3

    cmpg-float v7, v5, v7

    if-gez v7, :cond_3

    .line 5145
    add-int/lit8 v0, v0, -0x1

    .line 5148
    .end local v3    # "childRectArea":I
    .end local v4    # "visibleRectArea":I
    .end local v5    # "visibleArea":F
    .end local v6    # "visibleThreshold":F
    :cond_3
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    add-int v5, v0, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 5151
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "visibleRect":Landroid/graphics/Rect;
    :cond_4
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 5021
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 5022
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5024
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    .line 5025
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .line 5075
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 5076
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5078
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    .line 5079
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 5058
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 5059
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5061
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 5062
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .line 5040
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 5041
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5043
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 5044
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .line 2768
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2773
    const/4 v0, 0x0

    return v0

    .line 2771
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 30
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 5233
    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 5234
    .local v3, "childCount":I
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 5235
    return v4

    .line 5238
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 5239
    .local v6, "firstTop":I
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 5241
    .local v7, "lastBottom":I
    iget-object v8, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5246
    .local v8, "listPadding":Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 5247
    .local v9, "effectivePaddingTop":I
    const/4 v10, 0x0

    .line 5248
    .local v10, "effectivePaddingBottom":I
    iget v11, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v12, 0x22

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_1

    .line 5249
    iget v9, v8, Landroid/graphics/Rect;->top:I

    .line 5250
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 5254
    :cond_1
    sub-int v11, v9, v6

    .line 5255
    .local v11, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    .line 5256
    .local v13, "end":I
    sub-int v14, v7, v13

    .line 5258
    .local v14, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v15

    iget v5, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v15, v5

    iget v5, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v15, v5

    .line 5259
    .local v15, "height":I
    if-gez v1, :cond_2

    .line 5260
    add-int/lit8 v5, v15, -0x1

    neg-int v5, v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local p1    # "deltaY":I
    .local v1, "deltaY":I
    :goto_0
    goto :goto_1

    .line 5262
    .end local v1    # "deltaY":I
    .restart local p1    # "deltaY":I
    :cond_2
    add-int/lit8 v5, v15, -0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 5265
    .end local p1    # "deltaY":I
    .restart local v1    # "deltaY":I
    :goto_1
    if-gez v2, :cond_3

    .line 5266
    add-int/lit8 v5, v15, -0x1

    neg-int v5, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local p2    # "incrementalDeltaY":I
    .local v2, "incrementalDeltaY":I
    :goto_2
    goto :goto_3

    .line 5268
    .end local v2    # "incrementalDeltaY":I
    .restart local p2    # "incrementalDeltaY":I
    :cond_3
    add-int/lit8 v5, v15, -0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    .line 5271
    .end local p2    # "incrementalDeltaY":I
    .restart local v2    # "incrementalDeltaY":I
    :goto_3
    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5274
    .local v5, "firstPosition":I
    if-nez v5, :cond_4

    .line 5275
    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int v4, v6, v4

    iput v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_4

    .line 5277
    :cond_4
    iget v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 5279
    :goto_4
    add-int v4, v5, v3

    iget v12, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v4, v12, :cond_5

    .line 5280
    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v7

    iput v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_5

    .line 5282
    :cond_5
    iget v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 5285
    :goto_5
    if-nez v5, :cond_6

    iget v4, v8, Landroid/graphics/Rect;->top:I

    if-lt v6, v4, :cond_6

    if-ltz v2, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    .line 5287
    .local v4, "cannotScrollDown":Z
    :goto_6
    add-int v12, v5, v3

    move/from16 v16, v6

    iget v6, v0, Landroid/widget/AbsListView;->mItemCount:I

    .end local v6    # "firstTop":I
    .local v16, "firstTop":I
    if-ne v12, v6, :cond_7

    .line 5288
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v12

    if-gt v7, v6, :cond_7

    if-gtz v2, :cond_7

    const/4 v6, 0x1

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    .line 5290
    .local v6, "cannotScrollUp":Z
    :goto_7
    if-nez v4, :cond_1f

    if-eqz v6, :cond_8

    .line 5291
    move/from16 v28, v1

    move/from16 v27, v3

    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v13

    const/4 v1, 0x0

    const/4 v9, 0x1

    goto/16 :goto_12

    .line 5294
    :cond_8
    if-gez v2, :cond_9

    const/4 v12, 0x1

    goto :goto_8

    :cond_9
    const/4 v12, 0x0

    .line 5296
    .local v12, "down":Z
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v17

    .line 5297
    .local v17, "inTouchMode":Z
    if-eqz v17, :cond_a

    .line 5298
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 5301
    :cond_a
    move/from16 v18, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v4

    .line 5302
    .local v4, "headerViewsCount":I
    .local v18, "cannotScrollDown":Z
    move/from16 v19, v6

    iget v6, v0, Landroid/widget/AbsListView;->mItemCount:I

    .end local v6    # "cannotScrollUp":Z
    .local v19, "cannotScrollUp":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v20

    sub-int v6, v6, v20

    .line 5304
    .local v6, "footerViewsStart":I
    const/16 v20, 0x0

    .line 5305
    .local v20, "start":I
    const/16 v21, 0x0

    .line 5307
    .local v21, "count":I
    if-eqz v12, :cond_f

    .line 5308
    move/from16 v22, v7

    neg-int v7, v2

    .line 5309
    .local v7, "top":I
    .local v22, "lastBottom":I
    move/from16 v23, v9

    iget v9, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    .end local v9    # "effectivePaddingTop":I
    .local v23, "effectivePaddingTop":I
    move/from16 v24, v10

    const/16 v10, 0x22

    and-int/2addr v9, v10

    .end local v10    # "effectivePaddingBottom":I
    .local v24, "effectivePaddingBottom":I
    if-ne v9, v10, :cond_b

    .line 5310
    iget v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v9

    .line 5312
    :cond_b
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_9
    if-ge v9, v3, :cond_e

    .line 5313
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5314
    .local v10, "child":Landroid/view/View;
    move/from16 v25, v13

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v13

    .end local v13    # "end":I
    .local v25, "end":I
    if-lt v13, v7, :cond_c

    .line 5315
    goto :goto_b

    .line 5317
    :cond_c
    add-int/lit8 v21, v21, 0x1

    .line 5318
    add-int v13, v5, v9

    .line 5319
    .local v13, "position":I
    if-lt v13, v4, :cond_d

    if-ge v13, v6, :cond_d

    .line 5322
    invoke-virtual {v10}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5323
    move/from16 v26, v7

    iget-object v7, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .end local v7    # "top":I
    .local v26, "top":I
    invoke-virtual {v7, v10, v13}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .end local v10    # "child":Landroid/view/View;
    .end local v13    # "position":I
    goto :goto_a

    .line 5312
    .end local v26    # "top":I
    .restart local v7    # "top":I
    :cond_d
    move/from16 v26, v7

    .end local v7    # "top":I
    .restart local v26    # "top":I
    :goto_a
    add-int/lit8 v9, v9, 0x1

    move/from16 v13, v25

    move/from16 v7, v26

    goto :goto_9

    .line 5327
    .end local v9    # "i":I
    .end local v25    # "end":I
    .end local v26    # "top":I
    .local v13, "end":I
    :cond_e
    move/from16 v25, v13

    .line 5350
    .end local v13    # "end":I
    .end local v20    # "start":I
    .end local v21    # "count":I
    .local v3, "count":I
    .local v7, "start":I
    .restart local v25    # "end":I
    .local v27, "childCount":I
    :goto_b
    move/from16 v27, v3

    goto :goto_e

    .line 5328
    .end local v22    # "lastBottom":I
    .end local v23    # "effectivePaddingTop":I
    .end local v24    # "effectivePaddingBottom":I
    .end local v25    # "end":I
    .end local v27    # "childCount":I
    .local v3, "childCount":I
    .local v7, "lastBottom":I
    .local v9, "effectivePaddingTop":I
    .local v10, "effectivePaddingBottom":I
    .restart local v13    # "end":I
    .restart local v20    # "start":I
    .restart local v21    # "count":I
    :cond_f
    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v13

    .end local v7    # "lastBottom":I
    .end local v9    # "effectivePaddingTop":I
    .end local v10    # "effectivePaddingBottom":I
    .end local v13    # "end":I
    .restart local v22    # "lastBottom":I
    .restart local v23    # "effectivePaddingTop":I
    .restart local v24    # "effectivePaddingBottom":I
    .restart local v25    # "end":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v2

    .line 5329
    .local v7, "bottom":I
    iget v9, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v10, 0x22

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_10

    .line 5330
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v9

    .line 5332
    :cond_10
    add-int/lit8 v9, v3, -0x1

    .local v9, "i":I
    :goto_c
    if-ltz v9, :cond_13

    .line 5333
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5334
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    if-gt v13, v7, :cond_11

    .line 5335
    goto :goto_b

    .line 5337
    :cond_11
    move/from16 v20, v9

    .line 5338
    add-int/lit8 v21, v21, 0x1

    .line 5339
    add-int v13, v5, v9

    .line 5340
    .local v13, "position":I
    if-lt v13, v4, :cond_12

    if-ge v13, v6, :cond_12

    .line 5343
    invoke-virtual {v10}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5344
    move/from16 v27, v3

    iget-object v3, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .end local v3    # "childCount":I
    .restart local v27    # "childCount":I
    invoke-virtual {v3, v10, v13}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .end local v10    # "child":Landroid/view/View;
    .end local v13    # "position":I
    goto :goto_d

    .line 5332
    .end local v27    # "childCount":I
    .restart local v3    # "childCount":I
    :cond_12
    move/from16 v27, v3

    .end local v3    # "childCount":I
    .restart local v27    # "childCount":I
    :goto_d
    add-int/lit8 v9, v9, -0x1

    move/from16 v3, v27

    goto :goto_c

    .line 5350
    .end local v7    # "bottom":I
    .end local v9    # "i":I
    .end local v27    # "childCount":I
    .restart local v3    # "childCount":I
    :cond_13
    move/from16 v27, v3

    .end local v20    # "start":I
    .end local v21    # "count":I
    .local v3, "count":I
    .local v7, "start":I
    .restart local v27    # "childCount":I
    :goto_e
    move/from16 v7, v20

    move/from16 v3, v21

    iget v9, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    add-int/2addr v9, v1

    iput v9, v0, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 5352
    const/4 v9, 0x1

    iput-boolean v9, v0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5354
    if-lez v3, :cond_14

    .line 5355
    invoke-virtual {v0, v7, v3}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 5356
    iget-object v9, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v9}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 5361
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v9

    if-nez v9, :cond_15

    .line 5362
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5365
    :cond_15
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 5367
    if-eqz v12, :cond_16

    .line 5368
    iget v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v3

    iput v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5371
    :cond_16
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 5372
    .local v9, "absIncrementalDeltaY":I
    if-lt v11, v9, :cond_17

    if-ge v14, v9, :cond_18

    .line 5373
    :cond_17
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 5376
    :cond_18
    iget-boolean v10, v0, Landroid/widget/AbsListView;->PREOBTAIN_ENABLE:Z

    if-eqz v10, :cond_19

    .line 5377
    iput v9, v0, Landroid/widget/AbsListView;->mOldIncrementalDeltaY:I

    .line 5378
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->findNextGap(Z)V

    .line 5380
    :cond_19
    iget-object v10, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 5381
    const/4 v10, 0x0

    .line 5382
    .local v10, "selectorOnScreen":Z
    const/4 v13, -0x1

    if-nez v17, :cond_1c

    move/from16 v28, v1

    iget v1, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .end local v1    # "deltaY":I
    .local v28, "deltaY":I
    if-eq v1, v13, :cond_1b

    .line 5383
    iget v1, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v13

    .line 5384
    .local v1, "childIndex":I
    if-ltz v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    if-ge v1, v13, :cond_1a

    .line 5385
    iget v13, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v3

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "count":I
    .local v29, "count":I
    invoke-virtual {v0, v13, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5386
    const/4 v10, 0x1

    .end local v1    # "childIndex":I
    goto :goto_f

    .line 5388
    .end local v29    # "count":I
    .restart local v3    # "count":I
    :cond_1a
    move/from16 v29, v3

    .end local v3    # "count":I
    .restart local v29    # "count":I
    :goto_f
    goto :goto_11

    .end local v29    # "count":I
    .restart local v3    # "count":I
    :cond_1b
    move/from16 v29, v3

    .end local v3    # "count":I
    .restart local v29    # "count":I
    goto :goto_10

    .end local v28    # "deltaY":I
    .end local v29    # "count":I
    .local v1, "deltaY":I
    .restart local v3    # "count":I
    :cond_1c
    move/from16 v28, v1

    move/from16 v29, v3

    .end local v1    # "deltaY":I
    .end local v3    # "count":I
    .restart local v28    # "deltaY":I
    .restart local v29    # "count":I
    :goto_10
    iget v1, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v1, v13, :cond_1d

    .line 5389
    iget v1, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v3

    .line 5390
    .local v1, "childIndex":I
    if-ltz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 5391
    iget v3, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v0, v3, v13}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5392
    const/4 v10, 0x1

    .line 5395
    .end local v1    # "childIndex":I
    :cond_1d
    :goto_11
    if-nez v10, :cond_1e

    .line 5396
    iget-object v1, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 5399
    :cond_1e
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5401
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5403
    return v1

    .line 5291
    .end local v12    # "down":Z
    .end local v17    # "inTouchMode":Z
    .end local v18    # "cannotScrollDown":Z
    .end local v19    # "cannotScrollUp":Z
    .end local v22    # "lastBottom":I
    .end local v23    # "effectivePaddingTop":I
    .end local v24    # "effectivePaddingBottom":I
    .end local v25    # "end":I
    .end local v27    # "childCount":I
    .end local v28    # "deltaY":I
    .end local v29    # "count":I
    .local v1, "deltaY":I
    .local v3, "childCount":I
    .local v4, "cannotScrollDown":Z
    .local v6, "cannotScrollUp":Z
    .local v7, "lastBottom":I
    .local v9, "effectivePaddingTop":I
    .local v10, "effectivePaddingBottom":I
    .local v13, "end":I
    :cond_1f
    move/from16 v28, v1

    move/from16 v27, v3

    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v13

    const/4 v1, 0x0

    const/4 v9, 0x1

    .end local v1    # "deltaY":I
    .end local v3    # "childCount":I
    .end local v4    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v7    # "lastBottom":I
    .end local v9    # "effectivePaddingTop":I
    .end local v10    # "effectivePaddingBottom":I
    .end local v13    # "end":I
    .restart local v18    # "cannotScrollDown":Z
    .restart local v19    # "cannotScrollUp":Z
    .restart local v22    # "lastBottom":I
    .restart local v23    # "effectivePaddingTop":I
    .restart local v24    # "effectivePaddingBottom":I
    .restart local v25    # "end":I
    .restart local v27    # "childCount":I
    .restart local v28    # "deltaY":I
    :goto_12
    if-eqz v2, :cond_20

    move v1, v9

    nop

    :cond_20
    return v1
.end method

.method updateScrollIndicators()V
    .locals 4

    .line 2263
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2264
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2267
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2268
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2270
    :cond_3
    return-void
.end method

.method updateSelectorState()V
    .locals 2

    .line 2902
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2903
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2904
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2905
    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2906
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2909
    :cond_0
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2912
    :cond_1
    :goto_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 2957
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
