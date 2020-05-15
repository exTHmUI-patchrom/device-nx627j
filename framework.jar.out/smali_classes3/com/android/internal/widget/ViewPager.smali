.class public Lcom/android/internal/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewPager$ViewPositionComparator;,
        Lcom/android/internal/widget/ViewPager$LayoutParams;,
        Lcom/android/internal/widget/ViewPager$PagerObserver;,
        Lcom/android/internal/widget/ViewPager$SavedState;,
        Lcom/android/internal/widget/ViewPager$Decor;,
        Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;,
        Lcom/android/internal/widget/ViewPager$PageTransformer;,
        Lcom/android/internal/widget/ViewPager$SimpleOnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$OnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SCROLL_X:I = 0x1000000

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/android/internal/widget/PagerAdapter;

.field private mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private final mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private final mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private final mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private final mLeftEdge:Landroid/widget/EdgeEffect;

.field private mLeftIncr:I

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMaximumVelocity:I

.field private final mMinimumVelocity:I

.field private mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private final mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    .line 98
    new-instance v0, Lcom/android/internal/widget/ViewPager$1;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 105
    new-instance v0, Lcom/android/internal/widget/ViewPager$2;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$2;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 205
    new-instance v0, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 326
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 327
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 335
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 338
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 121
    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 134
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    .line 139
    const v1, -0x800001

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 140
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 149
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 167
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 191
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 223
    new-instance v0, Lcom/android/internal/widget/ViewPager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ViewPager$3;-><init>(Lcom/android/internal/widget/ViewPager;)V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setWillNotDraw(Z)V

    .line 341
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setDescendantFocusability(I)V

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->setFocusable(Z)V

    .line 344
    new-instance v0, Landroid/widget/Scroller;

    sget-object v2, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 345
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 346
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 348
    .local v2, "density":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    .line 349
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    .line 350
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    .line 351
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 352
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 354
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    .line 355
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    .line 356
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 359
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->setImportantForAccessibility(I)V

    .line 361
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ViewPager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ViewPager;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200()[I
    .locals 1

    .line 61
    sget-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V
    .locals 11
    .param p1, "curItem"    # Lcom/android/internal/widget/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1108
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1109
    .local v0, "N":I
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v1

    .line 1110
    .local v1, "width":I
    if-lez v1, :cond_0

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1113
    .local v2, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_7

    .line 1114
    iget v3, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 1117
    .local v3, "oldCurPosition":I
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_4

    .line 1118
    const/4 v4, 0x0

    .line 1119
    .local v4, "itemIndex":I
    iget v5, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v6, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v6

    add-float/2addr v5, v2

    .line 1120
    .local v5, "offset":F
    add-int/lit8 v6, v3, 0x1

    .local v6, "pos":I
    :goto_1
    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-gt v6, v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 1121
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1122
    .local v7, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_2
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v6, v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_1

    .line 1123
    add-int/lit8 v4, v4, 0x1

    .line 1124
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_2

    .line 1127
    :cond_1
    :goto_3
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v6, v8, :cond_2

    .line 1130
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    add-float/2addr v5, v8

    .line 1131
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1134
    :cond_2
    iput v5, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1135
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    add-float/2addr v5, v8

    .line 1120
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1137
    .end local v4    # "itemIndex":I
    .end local v5    # "offset":F
    .end local v6    # "pos":I
    :cond_3
    goto :goto_7

    :cond_4
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_7

    .line 1138
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1139
    .restart local v4    # "itemIndex":I
    iget v5, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1140
    .restart local v5    # "offset":F
    add-int/lit8 v6, v3, -0x1

    .restart local v6    # "pos":I
    :goto_4
    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-lt v6, v7, :cond_7

    if-ltz v4, :cond_7

    .line 1141
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1142
    .restart local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_5
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v6, v8, :cond_5

    if-lez v4, :cond_5

    .line 1143
    add-int/lit8 v4, v4, -0x1

    .line 1144
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_5

    .line 1147
    :cond_5
    :goto_6
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v6, v8, :cond_6

    .line 1150
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    sub-float/2addr v5, v8

    .line 1151
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 1154
    :cond_6
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v5, v8

    .line 1155
    iput v5, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1140
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 1161
    .end local v3    # "oldCurPosition":I
    .end local v4    # "itemIndex":I
    .end local v5    # "offset":F
    .end local v6    # "pos":I
    :cond_7
    :goto_7
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1162
    .local v3, "itemCount":I
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1163
    .local v4, "offset":F
    iget v5, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v5, -0x1

    .line 1164
    .local v5, "pos":I
    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v6, :cond_8

    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    goto :goto_8

    :cond_8
    const v6, -0x800001

    :goto_8
    iput v6, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 1165
    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v7, v0, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v6, v7, :cond_9

    .line 1166
    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    sub-float/2addr v6, v8

    goto :goto_9

    :cond_9
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    :goto_9
    iput v6, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 1169
    add-int/lit8 v6, p2, -0x1

    .local v6, "i":I
    :goto_a
    if-ltz v6, :cond_c

    .line 1170
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1171
    .restart local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_b
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v5, v9, :cond_a

    .line 1172
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v10, v5, -0x1

    .local v10, "pos":I
    invoke-virtual {v9, v5}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v5

    .end local v5    # "pos":I
    add-float/2addr v5, v2

    sub-float/2addr v4, v5

    .line 1170
    move v5, v10

    goto :goto_b

    .line 1174
    .end local v10    # "pos":I
    .restart local v5    # "pos":I
    :cond_a
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v4, v9

    .line 1175
    iput v4, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1176
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v9, :cond_b

    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 1169
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 1179
    .end local v6    # "i":I
    :cond_c
    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 1180
    .end local v4    # "offset":F
    .local v6, "offset":F
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    .line 1183
    .end local v5    # "pos":I
    .local v4, "pos":I
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    :goto_c
    if-ge v5, v3, :cond_f

    .line 1184
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1185
    .restart local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_d
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v4, v9, :cond_d

    .line 1186
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v10, v4, 0x1

    .restart local v10    # "pos":I
    invoke-virtual {v9, v4}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v4

    .end local v4    # "pos":I
    add-float/2addr v4, v2

    add-float/2addr v6, v4

    .line 1184
    move v4, v10

    goto :goto_d

    .line 1188
    .end local v10    # "pos":I
    .restart local v4    # "pos":I
    :cond_d
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v10, v0, -0x1

    if-ne v9, v10, :cond_e

    .line 1189
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v6

    sub-float/2addr v9, v8

    iput v9, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 1191
    :cond_e
    iput v6, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1192
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    add-float/2addr v6, v9

    .line 1183
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1194
    .end local v5    # "i":I
    :cond_f
    return-void
.end method

.method private canScroll()Z
    .locals 2

    .line 2752
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private completeScroll(Z)V
    .locals 6
    .param p1, "postEvents"    # Z

    .line 1757
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1758
    .local v0, "needPopulate":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1760
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1761
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1762
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 1763
    .local v2, "oldX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v3

    .line 1764
    .local v3, "oldY":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1765
    .local v4, "x":I
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 1766
    .local v5, "y":I
    if-ne v2, v4, :cond_1

    if-eq v3, v5, :cond_2

    .line 1767
    :cond_1
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1770
    .end local v2    # "oldX":I
    .end local v3    # "oldY":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1771
    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "needPopulate":Z
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1772
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1773
    .local v3, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-boolean v4, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_3

    .line 1774
    const/4 v2, 0x1

    .line 1775
    iput-boolean v1, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 1771
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1778
    .end local v0    # "i":I
    :cond_4
    if-eqz v2, :cond_6

    .line 1779
    if-eqz p1, :cond_5

    .line 1780
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1782
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1785
    :cond_6
    :goto_2
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 5
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .line 2225
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_1

    .line 2226
    if-gez p3, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sub-int v0, p1, v0

    .local v0, "targetPage":I
    goto :goto_2

    .line 2228
    .end local v0    # "targetPage":I
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-lt p1, v0, :cond_2

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_2
    const v0, 0x3f19999a    # 0.6f

    .line 2229
    .local v0, "truncator":F
    :goto_1
    int-to-float v1, p1

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    int-to-float v3, v3

    add-float v4, p2, v0

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v0, v1

    .line 2232
    .local v0, "targetPage":I
    :goto_2
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2233
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2234
    .local v1, "firstItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2237
    .local v2, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v3, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v4, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    invoke-static {v0, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 2240
    .end local v1    # "firstItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v2    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_3
    return v0
.end method

.method private enableLayers(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .line 1792
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1793
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1794
    if-eqz p1, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :cond_0
    move v3, v1

    .line 1795
    .local v3, "layerType":I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1793
    .end local v3    # "layerType":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1797
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .line 2356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 2357
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2359
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2360
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2363
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .line 2532
    if-nez p1, :cond_0

    .line 2533
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object p1, v0

    .line 2535
    :cond_0
    if-nez p2, :cond_1

    .line 2536
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2537
    return-object p1

    .line 2539
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2540
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2541
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2542
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2544
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2545
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    if-eq v0, p0, :cond_2

    .line 2546
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2547
    .local v1, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2548
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2549
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2550
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2552
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2553
    .end local v1    # "group":Landroid/view/ViewGroup;
    goto :goto_0

    .line 2554
    :cond_2
    return-object p1
.end method

.method private getLeftEdgeForItem(I)I
    .locals 6
    .param p1, "position"    # I

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 565
    .local v0, "info":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_0

    .line 566
    const/4 v1, 0x0

    return v1

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v1

    .line 570
    .local v1, "width":I
    int-to-float v2, v1

    iget v3, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    invoke-static {v3, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 573
    .local v2, "scaledOffset":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 574
    int-to-float v3, v1

    iget v4, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 575
    .local v3, "itemWidth":I
    const/high16 v4, 0x1000000

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    return v4

    .line 577
    .end local v3    # "itemWidth":I
    :cond_1
    return v2
.end method

.method private getPaddedWidth()I
    .locals 2

    .line 460
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScrollStart()I
    .locals 2

    .line 2209
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2210
    const/high16 v0, 0x1000000

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 2212
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    return v0
.end method

.method private infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 18

    .line 2162
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    move-result v1

    .line 2163
    .local v1, "startOffset":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v2

    .line 2164
    .local v2, "width":I
    const/4 v3, 0x0

    if-lez v2, :cond_0

    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2165
    .local v4, "scrollOffset":F
    :goto_0
    if-lez v2, :cond_1

    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v5, v2

    div-float/2addr v3, v5

    nop

    .line 2167
    .local v3, "marginOffset":F
    :cond_1
    const/4 v5, -0x1

    .line 2168
    .local v5, "lastPos":I
    const/4 v6, 0x0

    .line 2169
    .local v6, "lastOffset":F
    const/4 v7, 0x0

    .line 2170
    .local v7, "lastWidth":F
    const/4 v8, 0x1

    .line 2171
    .local v8, "first":Z
    const/4 v9, 0x0

    .line 2173
    .local v9, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v10, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2174
    .local v10, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v10, :cond_7

    .line 2175
    iget-object v12, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2178
    .local v12, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v8, :cond_2

    iget v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_2

    .line 2180
    iget-object v12, v0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2181
    add-float v13, v6, v7

    add-float/2addr v13, v3

    iput v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2182
    add-int/lit8 v13, v5, 0x1

    iput v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2183
    iget-object v13, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v14, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2184
    add-int/lit8 v11, v11, -0x1

    .line 2187
    :cond_2
    iget v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2188
    .local v13, "offset":F
    move v14, v13

    .line 2189
    .local v14, "startBound":F
    if-nez v8, :cond_4

    cmpl-float v15, v4, v14

    if-ltz v15, :cond_3

    goto :goto_2

    .line 2195
    :cond_3
    return-object v9

    .line 2190
    :cond_4
    :goto_2
    iget v15, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v13

    add-float/2addr v15, v3

    .line 2191
    .local v15, "endBound":F
    cmpg-float v16, v4, v15

    if-ltz v16, :cond_6

    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .end local v1    # "startOffset":I
    .local v17, "startOffset":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_5

    goto :goto_3

    .line 2194
    .end local v15    # "endBound":F
    :cond_5
    nop

    .line 2198
    const/4 v8, 0x0

    .line 2199
    iget v5, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2200
    move v6, v13

    .line 2201
    iget v7, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2202
    move-object v9, v12

    .line 2174
    .end local v12    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v13    # "offset":F
    .end local v14    # "startBound":F
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v17

    goto :goto_1

    .line 2192
    .end local v17    # "startOffset":I
    .restart local v1    # "startOffset":I
    .restart local v12    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v13    # "offset":F
    .restart local v14    # "startBound":F
    .restart local v15    # "endBound":F
    :cond_6
    move/from16 v17, v1

    .end local v1    # "startOffset":I
    .restart local v17    # "startOffset":I
    :goto_3
    return-object v12

    .line 2205
    .end local v11    # "i":I
    .end local v12    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v13    # "offset":F
    .end local v14    # "startBound":F
    .end local v15    # "endBound":F
    .end local v17    # "startOffset":I
    .restart local v1    # "startOffset":I
    :cond_7
    move/from16 v17, v1

    .end local v1    # "startOffset":I
    .restart local v17    # "startOffset":I
    return-object v9
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .line 1788
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v1

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2342
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2343
    .local v1, "pointerId":I
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 2346
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2347
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2348
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2349
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 2350
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2353
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 10
    .param p1, "scrollX"    # I

    .line 1643
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1644
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1645
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1646
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    if-eqz v0, :cond_0

    .line 1650
    return v1

    .line 1647
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1655
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1656
    const/high16 v0, 0x1000000

    sub-int/2addr v0, p1

    .local v0, "scrollStart":I
    goto :goto_0

    .line 1658
    .end local v0    # "scrollStart":I
    :cond_2
    move v0, p1

    .line 1661
    .restart local v0    # "scrollStart":I
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 1662
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v3

    .line 1663
    .local v3, "width":I
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    add-int/2addr v4, v3

    .line 1664
    .local v4, "widthWithMargin":I
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 1665
    .local v5, "marginOffset":F
    iget v6, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 1666
    .local v6, "currentPage":I
    int-to-float v7, v0

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    iget v8, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v5

    div-float/2addr v7, v8

    .line 1668
    .local v7, "pageOffset":F
    int-to-float v8, v4

    mul-float/2addr v8, v7

    float-to-int v8, v8

    .line 1670
    .local v8, "offsetPixels":I
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1671
    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1672
    iget-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    if-eqz v1, :cond_3

    .line 1676
    const/4 v1, 0x1

    return v1

    .line 1673
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v9, "onPageScrolled did not call superclass implementation"

    invoke-direct {v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private performDrag(F)Z
    .locals 20
    .param p1, "x"    # F

    move-object/from16 v0, p0

    .line 2078
    move/from16 v1, p1

    const/4 v2, 0x0

    .line 2080
    .local v2, "needsInvalidate":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v3

    .line 2081
    .local v3, "width":I
    iget v4, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    sub-float/2addr v4, v1

    .line 2082
    .local v4, "deltaX":F
    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2086
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2087
    iget-object v5, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 2088
    .local v5, "startEdge":Landroid/widget/EdgeEffect;
    iget-object v6, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .local v6, "endEdge":Landroid/widget/EdgeEffect;
    goto :goto_0

    .line 2090
    .end local v5    # "startEdge":Landroid/widget/EdgeEffect;
    .end local v6    # "endEdge":Landroid/widget/EdgeEffect;
    :cond_0
    iget-object v5, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 2091
    .restart local v5    # "startEdge":Landroid/widget/EdgeEffect;
    iget-object v6, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 2095
    .restart local v6    # "endEdge":Landroid/widget/EdgeEffect;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    .line 2097
    .local v7, "nextScrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v8

    const/high16 v9, 0x4b800000    # 1.6777216E7f

    if-eqz v8, :cond_1

    .line 2098
    sub-float v8, v9, v7

    .local v8, "scrollStart":F
    goto :goto_1

    .line 2100
    .end local v8    # "scrollStart":F
    :cond_1
    move v8, v7

    .line 2104
    .restart local v8    # "scrollStart":F
    :goto_1
    iget-object v10, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2105
    .local v10, "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v12, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    const/4 v13, 0x1

    if-nez v12, :cond_2

    move v12, v13

    goto :goto_2

    :cond_2
    move v12, v11

    .line 2106
    .local v12, "startAbsolute":Z
    :goto_2
    if-eqz v12, :cond_3

    .line 2107
    iget v14, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v3

    mul-float/2addr v14, v15

    .local v14, "startBound":F
    goto :goto_3

    .line 2109
    .end local v14    # "startBound":F
    :cond_3
    int-to-float v14, v3

    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v14, v15

    .line 2113
    .restart local v14    # "startBound":F
    :goto_3
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v13

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2114
    .local v11, "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v15, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v9, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v9}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v9

    sub-int/2addr v9, v13

    if-ne v15, v9, :cond_4

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    :goto_4
    move v9, v13

    .line 2115
    .local v9, "endAbsolute":Z
    if-eqz v9, :cond_5

    .line 2116
    iget v13, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v3

    mul-float/2addr v13, v15

    .local v13, "endBound":F
    goto :goto_5

    .line 2118
    .end local v13    # "endBound":F
    :cond_5
    int-to-float v13, v3

    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v13, v15

    .line 2122
    .restart local v13    # "endBound":F
    :goto_5
    cmpg-float v15, v8, v14

    if-gez v15, :cond_7

    .line 2123
    if-eqz v12, :cond_6

    .line 2124
    sub-float v15, v14, v8

    .line 2125
    .local v15, "over":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v16

    int-to-float v1, v3

    div-float v1, v16, v1

    invoke-virtual {v5, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2126
    const/4 v2, 0x1

    .line 2128
    .end local v15    # "over":F
    :cond_6
    move v1, v14

    .local v1, "clampedScrollStart":F
    :goto_6
    goto :goto_7

    .line 2129
    .end local v1    # "clampedScrollStart":F
    :cond_7
    cmpl-float v1, v8, v13

    if-lez v1, :cond_9

    .line 2130
    if-eqz v9, :cond_8

    .line 2131
    sub-float v1, v8, v13

    .line 2132
    .local v1, "over":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v17, v1

    int-to-float v1, v3

    .end local v1    # "over":F
    .local v17, "over":F
    div-float/2addr v15, v1

    invoke-virtual {v6, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2133
    const/4 v1, 0x1

    .line 2135
    .end local v2    # "needsInvalidate":Z
    .end local v17    # "over":F
    .local v1, "needsInvalidate":Z
    move v2, v1

    .end local v1    # "needsInvalidate":Z
    .restart local v2    # "needsInvalidate":Z
    :cond_8
    move v1, v13

    goto :goto_6

    .line 2137
    :cond_9
    move v1, v8

    .line 2142
    .local v1, "clampedScrollStart":F
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 2143
    const/high16 v15, 0x4b800000    # 1.6777216E7f

    sub-float/2addr v15, v1

    .local v15, "targetScrollX":F
    goto :goto_8

    .line 2145
    .end local v15    # "targetScrollX":F
    :cond_a
    move v15, v1

    .line 2149
    .restart local v15    # "targetScrollX":F
    :goto_8
    move/from16 v18, v1

    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .end local v1    # "clampedScrollStart":F
    .local v18, "clampedScrollStart":F
    move/from16 v19, v3

    float-to-int v3, v15

    .end local v3    # "width":I
    .local v19, "width":I
    int-to-float v3, v3

    sub-float v3, v15, v3

    add-float/2addr v1, v3

    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2151
    float-to-int v1, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 2152
    float-to-int v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    .line 2154
    return v2
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 17
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1466
    if-lez p2, :cond_1

    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1467
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, p3

    .line 1468
    .local v2, "widthWithMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v4, v4, p4

    .line 1470
    .local v4, "oldWidthWithMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v6

    .line 1471
    .local v6, "xpos":I
    int-to-float v7, v6

    int-to-float v8, v4

    div-float/2addr v7, v8

    .line 1472
    .local v7, "pageOffset":F
    int-to-float v8, v2

    mul-float/2addr v8, v7

    float-to-int v8, v8

    .line 1474
    .local v8, "newOffsetPixels":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1475
    iget-object v9, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1477
    iget-object v9, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getDuration()I

    move-result v9

    iget-object v10, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->timePassed()I

    move-result v10

    sub-int v15, v9, v10

    .line 1478
    .local v15, "newDuration":I
    iget v9, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v14

    .line 1479
    .local v14, "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v9, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v11, 0x0

    iget v10, v14, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v12, v1

    mul-float/2addr v10, v12

    float-to-int v12, v10

    const/4 v13, 0x0

    move v10, v8

    move-object/from16 v16, v14

    move v14, v15

    .end local v14    # "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v16, "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    invoke-virtual/range {v9 .. v14}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1482
    .end local v2    # "widthWithMargin":I
    .end local v4    # "oldWidthWithMargin":I
    .end local v6    # "xpos":I
    .end local v7    # "pageOffset":F
    .end local v8    # "newOffsetPixels":I
    .end local v15    # "newDuration":I
    .end local v16    # "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    goto :goto_1

    .line 1483
    :cond_1
    iget v2, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 1484
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v2, :cond_2

    iget v4, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v6, v0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 1485
    .local v4, "scrollOffset":F
    :goto_0
    nop

    .line 1486
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    .line 1487
    .local v6, "scrollPos":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 1488
    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1489
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1492
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v4    # "scrollOffset":F
    .end local v6    # "scrollPos":I
    :cond_3
    :goto_1
    return-void
.end method

.method private removeNonDecorViews()V
    .locals 4

    .line 436
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 437
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 438
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 439
    .local v2, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->removeViewAt(I)V

    .line 441
    add-int/lit8 v0, v0, -0x1

    .line 436
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 2071
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2072
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2073
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2075
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .line 538
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->getLeftEdgeForItem(I)I

    move-result v0

    .line 540
    .local v0, "destX":I
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 541
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    .line 543
    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 546
    :cond_0
    if-eqz p4, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_4

    .line 547
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 550
    :cond_1
    if-eqz p4, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_2

    .line 551
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 553
    :cond_2
    if-eqz p4, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_3

    .line 554
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 557
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 558
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 559
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    .line 561
    :cond_4
    :goto_0
    return-void
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 370
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 371
    return-void

    .line 374
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_2

    .line 377
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->enableLayers(Z)V

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 382
    :cond_3
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2366
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2367
    iput-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    .line 2378
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    .line 1092
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 1093
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1094
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1098
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1099
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1100
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1101
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1103
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1105
    .end local v0    # "childCount":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
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

    .line 2581
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2583
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2585
    .local v1, "descendantFocusability":I
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    .line 2586
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2587
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2588
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2589
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 2590
    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2591
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2586
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2601
    .end local v2    # "i":I
    :cond_1
    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_2

    .line 2604
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 2607
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2608
    return-void

    .line 2610
    :cond_3
    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2611
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2612
    return-void

    .line 2614
    :cond_4
    if-eqz p1, :cond_5

    .line 2615
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2618
    :cond_5
    return-void
.end method

.method addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .line 807
    new-instance v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    .line 808
    .local v0, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iput p1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 809
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/android/internal/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 810
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 811
    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 812
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    :goto_1
    return-object v0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2628
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2629
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2630
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2631
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 2632
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2633
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2628
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2637
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1285
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1286
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1288
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1289
    .local v0, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/android/internal/widget/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 1290
    iget-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_3

    .line 1291
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 1292
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1294
    :cond_2
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1295
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 1297
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1307
    :goto_1
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 2466
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2467
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 2468
    const/4 v0, 0x0

    goto :goto_3

    .line 2469
    :cond_0
    if-eqz v0, :cond_4

    .line 2470
    const/4 v1, 0x0

    .line 2471
    .local v1, "isChild":Z
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2473
    if-ne v2, p0, :cond_1

    .line 2474
    const/4 v1, 0x1

    .line 2475
    goto :goto_1

    .line 2472
    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 2478
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 2480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2481
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2482
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v3, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 2484
    const-string v4, " => "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2483
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_2

    .line 2486
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_3
    const-string v3, "ViewPager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2487
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2486
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    const/4 v0, 0x0

    .line 2492
    .end local v1    # "isChild":Z
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :goto_3
    const/4 v1, 0x0

    .line 2494
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2496
    .local v2, "nextFocused":Landroid/view/View;
    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_8

    if-eq v2, v0, :cond_8

    .line 2497
    if-ne p1, v4, :cond_6

    .line 2500
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2501
    .local v3, "nextLeft":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2502
    .local v4, "currLeft":I
    if-eqz v0, :cond_5

    if-lt v3, v4, :cond_5

    .line 2503
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    move-result v1

    goto :goto_4

    .line 2505
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2507
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :goto_4
    goto :goto_7

    :cond_6
    if-ne p1, v3, :cond_c

    .line 2510
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2511
    .restart local v3    # "nextLeft":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2512
    .restart local v4    # "currLeft":I
    if-eqz v0, :cond_7

    if-gt v3, v4, :cond_7

    .line 2513
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_5

    .line 2515
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2517
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :goto_5
    goto :goto_7

    .line 2518
    :cond_8
    if-eq p1, v4, :cond_b

    const/4 v4, 0x1

    if-ne p1, v4, :cond_9

    goto :goto_6

    .line 2521
    :cond_9
    if-eq p1, v3, :cond_a

    const/4 v3, 0x2

    if-ne p1, v3, :cond_c

    .line 2523
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_7

    .line 2520
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    move-result v1

    .line 2525
    :cond_c
    :goto_7
    if-eqz v1, :cond_d

    .line 2526
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ViewPager;->playSoundEffect(I)V

    .line 2528
    :cond_d
    return v1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    move-object v0, p1

    .line 2408
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2409
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2410
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2411
    .local v3, "scrollX":I
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2412
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 2414
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 2416
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2417
    .local v13, "child":Landroid/view/View;
    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v8, :cond_0

    add-int v7, p5, v4

    .line 2418
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    const/4 v9, 0x1

    add-int v7, p4, v3

    .line 2419
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v11, v7, v8

    add-int v7, p5, v4

    .line 2420
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v12, v7, v8

    .line 2419
    move-object v7, p0

    move-object v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2421
    return v2

    .line 2414
    .end local v13    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2426
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    move/from16 v3, p3

    neg-int v4, v3

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

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 2381
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2382
    return v1

    .line 2385
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v0

    .line 2386
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 2387
    .local v2, "scrollX":I
    const/4 v3, 0x1

    if-gez p1, :cond_2

    .line 2388
    int-to-float v4, v0

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v2, v4, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1

    .line 2389
    :cond_2
    if-lez p1, :cond_4

    .line 2390
    int-to-float v4, v0

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v2, v4, :cond_3

    move v1, v3

    nop

    :cond_3
    return v1

    .line 2392
    :cond_4
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2684
    instance-of v0, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeScroll()V
    .locals 5

    .line 1618
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1619
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1620
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v1

    .line 1621
    .local v1, "oldY":I
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1622
    .local v2, "x":I
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1624
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1625
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1627
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1628
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1629
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1634
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 1635
    return-void

    .line 1639
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1640
    return-void
.end method

.method dataSetChanged()V
    .locals 12

    .line 822
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 823
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 824
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 825
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 826
    .local v1, "needPopulate":Z
    :goto_0
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 828
    .local v2, "newCurrItem":I
    const/4 v5, 0x0

    .line 829
    .local v5, "isUpdating":Z
    move v6, v2

    move v2, v1

    move v1, v4

    .local v1, "i":I
    .local v2, "needPopulate":Z
    .local v6, "newCurrItem":I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 830
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 831
    .local v7, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 833
    .local v8, "newPos":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 834
    goto :goto_2

    .line 837
    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    .line 838
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 839
    add-int/lit8 v1, v1, -0x1

    .line 841
    if-nez v5, :cond_2

    .line 842
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v9, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 843
    const/4 v5, 0x1

    .line 846
    :cond_2
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v10, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v11, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, p0, v10, v11}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 847
    const/4 v2, 0x1

    .line 849
    iget v9, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v10, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v9, v10, :cond_5

    .line 851
    iget v9, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v10, v0, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 852
    const/4 v2, 0x1

    goto :goto_2

    .line 857
    :cond_3
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_5

    .line 858
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v10, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_4

    .line 860
    move v6, v8

    .line 863
    :cond_4
    iput v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 864
    const/4 v2, 0x1

    .line 829
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v8    # "newPos":I
    :cond_5
    :goto_2
    add-int/2addr v1, v3

    goto :goto_1

    .line 868
    .end local v1    # "i":I
    :cond_6
    if-eqz v5, :cond_7

    .line 869
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 872
    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 874
    if-eqz v2, :cond_a

    .line 876
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 877
    .local v1, "childCount":I
    move v7, v4

    .local v7, "i":I
    :goto_3
    if-ge v7, v1, :cond_9

    .line 878
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 879
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 880
    .local v9, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v10, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_8

    .line 881
    const/4 v10, 0x0

    iput v10, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 877
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 885
    .end local v7    # "i":I
    :cond_9
    invoke-virtual {p0, v6, v4, v3}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 886
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 888
    .end local v1    # "childCount":I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2432
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .line 743
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 744
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 745
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2245
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2246
    const/4 v0, 0x0

    .line 2248
    .local v0, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getOverScrollMode()I

    move-result v1

    .line 2249
    .local v1, "overScrollMode":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 2251
    invoke-virtual {v3}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v3

    if-le v3, v2, :cond_0

    goto :goto_0

    .line 2275
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 2276
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    .line 2252
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2254
    .local v2, "restoreCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2255
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v4

    .line 2257
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2258
    neg-int v5, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2259
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2260
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2261
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2263
    .end local v2    # "restoreCount":I
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2265
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v3

    .line 2266
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2268
    .local v4, "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2269
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v3

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2270
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v4, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2271
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2272
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2273
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    nop

    .line 2279
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 2281
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 2283
    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 730
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 732
    .local v0, "marginDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 736
    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2444
    const/4 v0, 0x0

    .line 2445
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 2446
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2451
    :pswitch_0
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2452
    goto :goto_0

    .line 2448
    :pswitch_1
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2449
    goto :goto_0

    .line 2454
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2455
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2456
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2457
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2462
    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2674
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2689
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2679
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/android/internal/widget/PagerAdapter;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 618
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    .line 619
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    iget v1, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .line 620
    .local v1, "result":I
    return v1
.end method

.method public getCurrent()Ljava/lang/Object;
    .locals 2

    .line 1310
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1311
    .local v0, "itemInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_0
    return-object v1
.end method

.method public getCurrentItem()I
    .locals 1

    .line 487
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 643
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 699
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1335
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    .local v1, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1336
    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1339
    :cond_0
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1337
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 1341
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 1324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1325
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1326
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v3, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1327
    return-object v1

    .line 1324
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1330
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .line 1345
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1346
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1347
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v2, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1348
    return-object v1

    .line 1345
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1351
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1356
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 1358
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 366
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 367
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 2287
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2290
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v1, :cond_5

    .line 2291
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 2292
    .local v1, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v2

    .line 2294
    .local v2, "width":I
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2295
    .local v3, "marginOffset":F
    const/4 v4, 0x0

    .line 2296
    .local v4, "itemIndex":I
    iget-object v5, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2297
    .local v5, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v6, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2299
    .local v6, "offset":F
    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2300
    .local v7, "itemCount":I
    iget v8, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2301
    .local v8, "firstPos":I
    iget-object v9, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iget v9, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2302
    .local v9, "lastPos":I
    move v10, v6

    move v6, v4

    move v4, v8

    .local v4, "pos":I
    .local v6, "itemIndex":I
    .local v10, "offset":F
    :goto_0
    if-ge v4, v9, :cond_5

    .line 2303
    :goto_1
    iget v11, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v4, v11, :cond_0

    if-ge v6, v7, :cond_0

    .line 2304
    iget-object v11, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_1

    .line 2309
    :cond_0
    iget v11, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v4, v11, :cond_1

    .line 2310
    iget v11, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2311
    .local v11, "itemOffset":F
    iget v12, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .local v12, "widthFactor":F
    goto :goto_2

    .line 2313
    .end local v11    # "itemOffset":F
    .end local v12    # "widthFactor":F
    :cond_1
    move v11, v10

    .line 2314
    .restart local v11    # "itemOffset":F
    iget-object v12, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12, v4}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2318
    .restart local v12    # "widthFactor":F
    :goto_2
    int-to-float v13, v2

    mul-float/2addr v13, v11

    .line 2319
    .local v13, "scaledOffset":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2320
    const/high16 v14, 0x4b800000    # 1.6777216E7f

    sub-float/2addr v14, v13

    .local v14, "left":F
    goto :goto_3

    .line 2322
    .end local v14    # "left":F
    :cond_2
    int-to-float v14, v2

    mul-float/2addr v14, v12

    add-float/2addr v14, v13

    .line 2325
    .restart local v14    # "left":F
    :goto_3
    add-float v15, v11, v12

    add-float v10, v15, v3

    .line 2327
    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v14

    move/from16 v16, v3

    int-to-float v3, v1

    .end local v3    # "marginOffset":F
    .local v16, "marginOffset":F
    cmpl-float v3, v15, v3

    if-lez v3, :cond_3

    .line 2328
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v15, v14

    move-object/from16 v17, v5

    iget v5, v0, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    .end local v5    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v17, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move/from16 v18, v6

    iget v6, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .end local v6    # "itemIndex":I
    .local v18, "itemIndex":I
    int-to-float v6, v6

    add-float/2addr v6, v14

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v6, v6, v19

    float-to-int v6, v6

    move/from16 v20, v7

    iget v7, v0, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    .end local v7    # "itemCount":I
    .local v20, "itemCount":I
    invoke-virtual {v3, v15, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2330
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 2333
    .end local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v20    # "itemCount":I
    .restart local v5    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v6    # "itemIndex":I
    .restart local v7    # "itemCount":I
    :cond_3
    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v20, v7

    move-object/from16 v5, p1

    .end local v5    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v6    # "itemIndex":I
    .end local v7    # "itemCount":I
    .restart local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v18    # "itemIndex":I
    .restart local v20    # "itemCount":I
    :goto_4
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v14, v3

    if-lez v3, :cond_4

    .line 2334
    goto :goto_5

    .line 2302
    .end local v11    # "itemOffset":F
    .end local v12    # "widthFactor":F
    .end local v13    # "scaledOffset":F
    .end local v14    # "left":F
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v20

    goto :goto_0

    .line 2338
    .end local v1    # "scrollX":I
    .end local v2    # "width":I
    .end local v4    # "pos":I
    .end local v8    # "firstPos":I
    .end local v9    # "lastPos":I
    .end local v10    # "offset":F
    .end local v16    # "marginOffset":F
    .end local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v20    # "itemCount":I
    :cond_5
    move-object/from16 v5, p1

    :goto_5
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2695
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2697
    const-class v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2698
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2700
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v0, :cond_0

    .line 2701
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2702
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2703
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2705
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2709
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2711
    const-class v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2712
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2714
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2715
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2716
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2719
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2720
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2721
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2723
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v6, p0

    .line 1807
    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 1810
    .local v8, "action":I
    const/4 v0, -0x1

    const/4 v9, 0x0

    const/4 v1, 0x3

    if-eq v8, v1, :cond_f

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    goto/16 :goto_3

    .line 1825
    :cond_0
    if-eqz v8, :cond_2

    .line 1826
    iget-boolean v1, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 1828
    return v10

    .line 1830
    :cond_1
    iget-boolean v1, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_2

    .line 1832
    return v9

    .line 1836
    :cond_2
    const/4 v1, 0x2

    if-eqz v8, :cond_b

    if-eq v8, v1, :cond_4

    const/4 v0, 0x6

    if-eq v8, v0, :cond_3

    goto/16 :goto_2

    .line 1927
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 1847
    :cond_4
    iget v11, v6, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1848
    .local v11, "activePointerId":I
    if-ne v11, v0, :cond_5

    .line 1850
    goto/16 :goto_2

    .line 1853
    :cond_5
    invoke-virtual {v7, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 1854
    .local v12, "pointerIndex":I
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 1855
    .local v13, "x":F
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    sub-float v14, v13, v0

    .line 1856
    .local v14, "dx":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1857
    .local v15, "xDiff":F
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1858
    .local v5, "y":F
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1861
    .local v16, "yDiff":F
    const/16 v17, 0x0

    cmpl-float v0, v14, v17

    if-eqz v0, :cond_6

    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    invoke-direct {v6, v0, v14}, Lcom/android/internal/widget/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    float-to-int v3, v14

    float-to-int v4, v13

    float-to-int v1, v5

    .line 1862
    move-object v0, v6

    move/from16 v18, v1

    move-object v1, v6

    move v9, v5

    move/from16 v5, v18

    .end local v5    # "y":F
    .local v9, "y":F
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1864
    iput v13, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1865
    iput v9, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1866
    iput-boolean v10, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1867
    const/4 v0, 0x0

    return v0

    .line 1869
    .end local v9    # "y":F
    .restart local v5    # "y":F
    :cond_6
    move v9, v5

    .end local v5    # "y":F
    .restart local v9    # "y":F
    :cond_7
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v15, v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v15

    cmpl-float v0, v0, v16

    if-lez v0, :cond_9

    .line 1871
    iput-boolean v10, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1872
    invoke-direct {v6, v10}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1873
    invoke-direct {v6, v10}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 1874
    cmpl-float v0, v14, v17

    if-lez v0, :cond_8

    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v1, v6, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    .line 1875
    :cond_8
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v1, v6, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1876
    iput v9, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1877
    invoke-direct {v6, v10}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 1878
    :cond_9
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v16, v0

    if-lez v0, :cond_a

    .line 1884
    iput-boolean v10, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1886
    :cond_a
    :goto_1
    iget-boolean v0, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_d

    .line 1888
    invoke-direct {v6, v13}, Lcom/android/internal/widget/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1889
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    goto :goto_2

    .line 1900
    .end local v9    # "y":F
    .end local v11    # "activePointerId":I
    .end local v12    # "pointerIndex":I
    .end local v13    # "x":F
    .end local v14    # "dx":F
    .end local v15    # "xDiff":F
    .end local v16    # "yDiff":F
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1901
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1902
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v6, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1903
    iput-boolean v0, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1905
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1906
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    if-ne v0, v1, :cond_c

    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 1907
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_c

    .line 1909
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1910
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1911
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1912
    iput-boolean v10, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1913
    invoke-direct {v6, v10}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1914
    invoke-direct {v6, v10}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    goto :goto_2

    .line 1916
    :cond_c
    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1917
    iput-boolean v0, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1923
    nop

    .line 1931
    :cond_d
    :goto_2
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_e

    .line 1932
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1934
    :cond_e
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1940
    iget-boolean v0, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 1813
    :cond_f
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1814
    iput-boolean v1, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1815
    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1816
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    .line 1817
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1818
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1820
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 28
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object/from16 v0, p0

    .line 1496
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 1497
    .local v1, "count":I
    sub-int v4, p4, p2

    .line 1498
    .local v4, "width":I
    sub-int v7, p5, p3

    .line 1499
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v8

    .line 1500
    .local v8, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v9

    .line 1501
    .local v9, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v10

    .line 1502
    .local v10, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v11

    .line 1503
    .local v11, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v12

    .line 1505
    .local v12, "scrollX":I
    const/4 v13, 0x0

    .line 1509
    .local v13, "decorCount":I
    move v15, v13

    move v13, v11

    move v11, v9

    move v9, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .local v9, "paddingLeft":I
    .local v11, "paddingTop":I
    .local v13, "paddingBottom":I
    .local v15, "decorCount":I
    :goto_0
    if-ge v8, v1, :cond_7

    .line 1510
    invoke-virtual {v0, v8}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1511
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_6

    .line 1512
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1513
    .local v2, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    const/4 v3, 0x0

    .line 1514
    .local v3, "childLeft":I
    const/16 v16, 0x0

    .line 1515
    .local v16, "childTop":I
    move/from16 v17, v3

    iget-boolean v3, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .end local v3    # "childLeft":I
    .local v17, "childLeft":I
    if-eqz v3, :cond_6

    .line 1516
    iget v3, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v3, v3, 0x7

    .line 1517
    .local v3, "hgrav":I
    iget v5, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x70

    .line 1518
    .local v5, "vgrav":I
    move-object/from16 v18, v2

    const/4 v2, 0x1

    .end local v2    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .local v18, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eq v3, v2, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_1

    const/4 v2, 0x5

    if-eq v3, v2, :cond_0

    .line 1520
    move v2, v9

    .line 1521
    .end local v17    # "childLeft":I
    .local v2, "childLeft":I
    goto :goto_1

    .line 1531
    .end local v2    # "childLeft":I
    .restart local v17    # "childLeft":I
    :cond_0
    sub-int v2, v4, v10

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    sub-int v2, v2, v19

    .line 1532
    .end local v17    # "childLeft":I
    .restart local v2    # "childLeft":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v10, v10, v17

    goto :goto_1

    .line 1523
    .end local v2    # "childLeft":I
    .restart local v17    # "childLeft":I
    :cond_1
    move v2, v9

    .line 1524
    .end local v17    # "childLeft":I
    .restart local v2    # "childLeft":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v9, v9, v17

    .line 1525
    goto :goto_1

    .line 1527
    .end local v2    # "childLeft":I
    .restart local v17    # "childLeft":I
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1529
    .end local v17    # "childLeft":I
    .restart local v2    # "childLeft":I
    nop

    .line 1535
    :goto_1
    move/from16 v20, v3

    .end local v3    # "hgrav":I
    .local v20, "hgrav":I
    const/16 v3, 0x10

    if-eq v5, v3, :cond_5

    const/16 v3, 0x30

    if-eq v5, v3, :cond_4

    const/16 v3, 0x50

    if-eq v5, v3, :cond_3

    .line 1537
    move v3, v11

    .line 1538
    .end local v16    # "childTop":I
    .local v3, "childTop":I
    goto :goto_2

    .line 1548
    .end local v3    # "childTop":I
    .restart local v16    # "childTop":I
    :cond_3
    sub-int v3, v7, v13

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v3, v3, v17

    .line 1549
    .end local v16    # "childTop":I
    .restart local v3    # "childTop":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v13, v13, v16

    goto :goto_2

    .line 1540
    .end local v3    # "childTop":I
    .restart local v16    # "childTop":I
    :cond_4
    move v3, v11

    .line 1541
    .end local v16    # "childTop":I
    .restart local v3    # "childTop":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v11, v11, v16

    .line 1542
    goto :goto_2

    .line 1544
    .end local v3    # "childTop":I
    .restart local v16    # "childTop":I
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v7, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1546
    .end local v16    # "childTop":I
    .restart local v3    # "childTop":I
    nop

    .line 1552
    :goto_2
    add-int/2addr v2, v12

    .line 1553
    nop

    .line 1554
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v21, v5

    add-int v5, v2, v16

    .line 1555
    .end local v5    # "vgrav":I
    .local v21, "vgrav":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v6, v3, v16

    .line 1553
    invoke-virtual {v14, v2, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1556
    add-int/lit8 v15, v15, 0x1

    .line 1509
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v14    # "child":Landroid/view/View;
    .end local v18    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v20    # "hgrav":I
    .end local v21    # "vgrav":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1561
    .end local v8    # "i":I
    :cond_7
    sub-int v2, v4, v9

    sub-int/2addr v2, v10

    .line 1563
    .local v2, "childWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v1, :cond_d

    .line 1564
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1565
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v8, 0x8

    if-ne v6, v8, :cond_8

    .line 1566
    nop

    .line 1563
    .end local v1    # "count":I
    .end local v2    # "childWidth":I
    .end local v4    # "width":I
    .end local v5    # "child":Landroid/view/View;
    .local v22, "count":I
    .local v23, "width":I
    .local v25, "childWidth":I
    :goto_4
    move/from16 v22, v1

    move/from16 v25, v2

    move/from16 v23, v4

    goto :goto_7

    .line 1569
    .end local v22    # "count":I
    .end local v23    # "width":I
    .end local v25    # "childWidth":I
    .restart local v1    # "count":I
    .restart local v2    # "childWidth":I
    .restart local v4    # "width":I
    .restart local v5    # "child":Landroid/view/View;
    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1570
    .local v6, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v14, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_9

    .line 1571
    goto :goto_4

    .line 1574
    :cond_9
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v14

    .line 1575
    .local v14, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v14, :cond_a

    .line 1576
    goto :goto_4

    .line 1579
    :cond_a
    iget-boolean v8, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v8, :cond_b

    .line 1582
    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1583
    int-to-float v8, v2

    move/from16 v22, v1

    iget v1, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .end local v1    # "count":I
    .restart local v22    # "count":I
    mul-float/2addr v8, v1

    float-to-int v1, v8

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1586
    .local v1, "widthSpec":I
    sub-int v16, v7, v11

    move/from16 v23, v4

    sub-int v4, v16, v13

    .end local v4    # "width":I
    .restart local v23    # "width":I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1589
    .local v4, "heightSpec":I
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    .end local v1    # "widthSpec":I
    .end local v4    # "heightSpec":I
    goto :goto_5

    .line 1592
    .end local v22    # "count":I
    .end local v23    # "width":I
    .local v1, "count":I
    .local v4, "width":I
    :cond_b
    move/from16 v22, v1

    move/from16 v23, v4

    .end local v1    # "count":I
    .end local v4    # "width":I
    .restart local v22    # "count":I
    .restart local v23    # "width":I
    :goto_5
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1593
    .local v1, "childMeasuredWidth":I
    int-to-float v4, v2

    iget v8, v14, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    .line 1595
    .local v4, "startOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1596
    const/high16 v8, 0x1000000

    sub-int/2addr v8, v10

    sub-int/2addr v8, v4

    sub-int/2addr v8, v1

    .local v8, "childLeft":I
    goto :goto_6

    .line 1598
    .end local v8    # "childLeft":I
    :cond_c
    add-int v8, v9, v4

    .line 1601
    .restart local v8    # "childLeft":I
    :goto_6
    move/from16 v24, v11

    .line 1602
    .local v24, "childTop":I
    move/from16 v25, v2

    add-int v2, v8, v1

    .line 1603
    .end local v2    # "childWidth":I
    .restart local v25    # "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v26, v1

    move/from16 v27, v4

    move/from16 v1, v24

    add-int v4, v1, v16

    .line 1602
    .end local v4    # "startOffset":I
    .end local v24    # "childTop":I
    .local v1, "childTop":I
    .local v26, "childMeasuredWidth":I
    .local v27, "startOffset":I
    invoke-virtual {v5, v8, v1, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 1563
    .end local v1    # "childTop":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v8    # "childLeft":I
    .end local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v26    # "childMeasuredWidth":I
    .end local v27    # "startOffset":I
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v22

    move/from16 v4, v23

    move/from16 v2, v25

    goto/16 :goto_3

    .line 1606
    .end local v3    # "i":I
    .end local v22    # "count":I
    .end local v23    # "width":I
    .end local v25    # "childWidth":I
    .local v1, "count":I
    .restart local v2    # "childWidth":I
    .local v4, "width":I
    :cond_d
    move/from16 v22, v1

    move/from16 v25, v2

    move/from16 v23, v4

    .end local v1    # "count":I
    .end local v2    # "childWidth":I
    .end local v4    # "width":I
    .restart local v22    # "count":I
    .restart local v23    # "width":I
    .restart local v25    # "childWidth":I
    iput v11, v0, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    .line 1607
    sub-int v1, v7, v13

    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    .line 1608
    iput v15, v0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    .line 1610
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_e

    .line 1611
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_8

    .line 1613
    :cond_e
    const/4 v2, 0x0

    :goto_8
    iput-boolean v2, v0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 1614
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 1367
    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcom/android/internal/widget/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1368
    move/from16 v4, p2

    invoke-static {v1, v4}, Lcom/android/internal/widget/ViewPager;->getDefaultSize(II)I

    move-result v5

    .line 1367
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/widget/ViewPager;->setMeasuredDimension(II)V

    .line 1370
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v3

    .line 1371
    .local v3, "measuredWidth":I
    div-int/lit8 v5, v3, 0xa

    .line 1372
    .local v5, "maxGutterSize":I
    iget v6, v0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    .line 1375
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1376
    .local v6, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 1383
    .local v7, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v8

    .line 1384
    .local v8, "size":I
    move v9, v7

    move v7, v6

    move v6, v1

    .local v6, "i":I
    .local v7, "childWidthSize":I
    .local v9, "childHeightSize":I
    :goto_0
    const/16 v10, 0x8

    if-ge v6, v8, :cond_b

    .line 1385
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1386
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v10, :cond_9

    .line 1387
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1388
    .local v10, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eqz v10, :cond_9

    iget-boolean v13, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v13, :cond_9

    .line 1389
    iget v13, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x7

    .line 1390
    .local v13, "hgrav":I
    iget v14, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x70

    .line 1391
    .local v14, "vgrav":I
    const/high16 v15, -0x80000000

    .line 1392
    .local v15, "widthMode":I
    const/high16 v16, -0x80000000

    .line 1393
    .local v16, "heightMode":I
    const/16 v1, 0x30

    if-eq v14, v1, :cond_1

    const/16 v1, 0x50

    if-ne v14, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 1394
    .local v1, "consumeVertical":Z
    :goto_2
    const/4 v11, 0x3

    if-eq v13, v11, :cond_3

    const/4 v11, 0x5

    if-ne v13, v11, :cond_2

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/16 v17, 0x1

    :goto_4
    move/from16 v11, v17

    .line 1396
    .local v11, "consumeHorizontal":Z
    if-eqz v1, :cond_4

    .line 1397
    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_5

    .line 1398
    :cond_4
    if-eqz v11, :cond_5

    .line 1399
    const/high16 v16, 0x40000000    # 2.0f

    .line 1402
    :cond_5
    :goto_5
    move/from16 v17, v7

    .line 1403
    .local v17, "widthSize":I
    move/from16 v18, v9

    .line 1404
    .local v18, "heightSize":I
    iget v2, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    move/from16 v19, v3

    .end local v3    # "measuredWidth":I
    .local v19, "measuredWidth":I
    const/4 v3, -0x2

    if-eq v2, v3, :cond_6

    .line 1405
    const/high16 v15, 0x40000000    # 2.0f

    .line 1406
    iget v2, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 1407
    iget v2, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    .end local v17    # "widthSize":I
    .local v2, "widthSize":I
    goto :goto_6

    .line 1410
    .end local v2    # "widthSize":I
    .restart local v17    # "widthSize":I
    :cond_6
    move/from16 v2, v17

    .end local v17    # "widthSize":I
    .restart local v2    # "widthSize":I
    :goto_6
    iget v3, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_7

    .line 1411
    const/high16 v16, 0x40000000    # 2.0f

    .line 1412
    iget v3, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 1413
    iget v3, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    .line 1416
    .end local v18    # "heightSize":I
    .local v3, "heightSize":I
    move/from16 v4, v16

    goto :goto_7

    .end local v3    # "heightSize":I
    .restart local v18    # "heightSize":I
    :cond_7
    move/from16 v4, v16

    move/from16 v3, v18

    .end local v16    # "heightMode":I
    .end local v18    # "heightSize":I
    .restart local v3    # "heightSize":I
    .local v4, "heightMode":I
    :goto_7
    move/from16 v20, v5

    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1417
    .local v5, "widthSpec":I
    .local v20, "maxGutterSize":I
    move/from16 v21, v2

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1418
    .local v2, "heightSpec":I
    .local v21, "widthSize":I
    invoke-virtual {v12, v5, v2}, Landroid/view/View;->measure(II)V

    .line 1420
    if-eqz v1, :cond_8

    .line 1421
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v9, v9, v16

    goto :goto_8

    .line 1422
    :cond_8
    if-eqz v11, :cond_a

    .line 1423
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v7, v7, v16

    .end local v1    # "consumeVertical":Z
    .end local v2    # "heightSpec":I
    .end local v3    # "heightSize":I
    .end local v4    # "heightMode":I
    .end local v5    # "widthSpec":I
    .end local v10    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v11    # "consumeHorizontal":Z
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "hgrav":I
    .end local v14    # "vgrav":I
    .end local v15    # "widthMode":I
    .end local v21    # "widthSize":I
    goto :goto_8

    .line 1384
    .end local v19    # "measuredWidth":I
    .end local v20    # "maxGutterSize":I
    .local v3, "measuredWidth":I
    .local v5, "maxGutterSize":I
    :cond_9
    move/from16 v19, v3

    move/from16 v20, v5

    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    .restart local v20    # "maxGutterSize":I
    :cond_a
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v19

    move/from16 v5, v20

    const/4 v1, 0x0

    move/from16 v2, p1

    move/from16 v4, p2

    goto/16 :goto_0

    .line 1429
    .end local v6    # "i":I
    .end local v19    # "measuredWidth":I
    .end local v20    # "maxGutterSize":I
    .restart local v3    # "measuredWidth":I
    .restart local v5    # "maxGutterSize":I
    :cond_b
    move/from16 v19, v3

    move/from16 v20, v5

    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    .restart local v20    # "maxGutterSize":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ViewPager;->mChildWidthMeasureSpec:I

    .line 1430
    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    .line 1433
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    .line 1434
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1435
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    .line 1438
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v3

    .line 1439
    .end local v8    # "size":I
    .local v3, "size":I
    nop

    .local v2, "i":I
    :goto_9
    if-ge v2, v3, :cond_e

    .line 1440
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1441
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_d

    .line 1445
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1446
    .local v5, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eqz v5, :cond_c

    iget-boolean v6, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_d

    .line 1447
    :cond_c
    int-to-float v6, v7

    iget v8, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1449
    .local v6, "widthSpec":I
    iget v8, v0, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v6, v8}, Landroid/view/View;->measure(II)V

    .line 1439
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v6    # "widthSpec":I
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1453
    .end local v2    # "i":I
    :cond_e
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 18
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1693
    move/from16 v3, p3

    iget v4, v0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    const/4 v6, 0x1

    if-lez v4, :cond_5

    .line 1694
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v4

    .line 1695
    .local v4, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v7

    .line 1696
    .local v7, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v8

    .line 1697
    .local v8, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v9

    .line 1698
    .local v9, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v10

    .line 1699
    .local v10, "childCount":I
    move v11, v8

    move v8, v7

    const/4 v7, 0x0

    .local v7, "i":I
    .local v8, "paddingLeft":I
    .local v11, "paddingRight":I
    :goto_0
    if-ge v7, v10, :cond_5

    .line 1700
    invoke-virtual {v0, v7}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1701
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1702
    .local v13, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v14, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v14, :cond_0

    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    goto :goto_2

    .line 1704
    .restart local v12    # "child":Landroid/view/View;
    .restart local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_0
    iget v14, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x7

    .line 1705
    .local v14, "hgrav":I
    const/4 v15, 0x0

    .line 1706
    .local v15, "childLeft":I
    if-eq v14, v6, :cond_3

    const/4 v5, 0x3

    if-eq v14, v5, :cond_2

    const/4 v5, 0x5

    if-eq v14, v5, :cond_1

    .line 1708
    move v5, v8

    .line 1709
    .end local v15    # "childLeft":I
    .local v5, "childLeft":I
    goto :goto_1

    .line 1719
    .end local v5    # "childLeft":I
    .restart local v15    # "childLeft":I
    :cond_1
    sub-int v5, v9, v11

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v5, v5, v17

    .line 1720
    .end local v15    # "childLeft":I
    .restart local v5    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    goto :goto_1

    .line 1711
    .end local v5    # "childLeft":I
    .restart local v15    # "childLeft":I
    :cond_2
    move v5, v8

    .line 1712
    .end local v15    # "childLeft":I
    .restart local v5    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v8, v15

    .line 1713
    goto :goto_1

    .line 1715
    .end local v5    # "childLeft":I
    .restart local v15    # "childLeft":I
    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v9, v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1717
    .end local v15    # "childLeft":I
    .restart local v5    # "childLeft":I
    nop

    .line 1723
    :goto_1
    add-int/2addr v5, v4

    .line 1725
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v15, v5, v15

    .line 1726
    .local v15, "childOffset":I
    if-eqz v15, :cond_4

    .line 1727
    invoke-virtual {v12, v15}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1699
    .end local v5    # "childLeft":I
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v14    # "hgrav":I
    .end local v15    # "childOffset":I
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1732
    .end local v4    # "scrollX":I
    .end local v7    # "i":I
    .end local v8    # "paddingLeft":I
    .end local v9    # "width":I
    .end local v10    # "childCount":I
    .end local v11    # "paddingRight":I
    :cond_5
    iget-object v4, v0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_6

    .line 1733
    iget-object v4, v0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v4, v1, v2, v3}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1735
    :cond_6
    iget-object v4, v0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_7

    .line 1736
    iget-object v4, v0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v4, v1, v2, v3}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1739
    :cond_7
    iget-object v4, v0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v4, :cond_9

    .line 1740
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v4

    .line 1741
    .restart local v4    # "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v5

    .line 1742
    .local v5, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v7, v16

    .end local v16    # "i":I
    .restart local v7    # "i":I
    if-ge v7, v5, :cond_9

    .line 1743
    invoke-virtual {v0, v7}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1744
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1746
    .local v9, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v10, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v10, :cond_8

    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    goto :goto_4

    .line 1748
    .restart local v8    # "child":Landroid/view/View;
    .restart local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v10, v4

    int-to-float v10, v10

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 1749
    .local v10, "transformPos":F
    iget-object v11, v0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    invoke-interface {v11, v8, v10}, Lcom/android/internal/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 1742
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v10    # "transformPos":F
    :goto_4
    add-int/lit8 v16, v7, 0x1

    .end local v7    # "i":I
    .restart local v16    # "i":I
    goto :goto_3

    .line 1753
    .end local v4    # "scrollX":I
    .end local v5    # "childCount":I
    .end local v16    # "i":I
    :cond_9
    iput-boolean v6, v0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1754
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2648
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 2649
    .local v0, "count":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 2650
    const/4 v1, 0x0

    .line 2651
    .local v1, "index":I
    const/4 v2, 0x1

    .line 2652
    .local v2, "increment":I
    move v3, v0

    .local v3, "end":I
    goto :goto_0

    .line 2654
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 2655
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 2656
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 2658
    .restart local v3    # "end":I
    :goto_0
    move v4, v1

    .local v4, "i":I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 2659
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2660
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2661
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v6

    .line 2662
    .local v6, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v6, :cond_1

    iget v7, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2663
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2664
    const/4 v7, 0x1

    return v7

    .line 2658
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1
    add-int/2addr v4, v2

    goto :goto_1

    .line 2669
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1265
    instance-of v0, p1, Lcom/android/internal/widget/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1266
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1267
    return-void

    .line 1270
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ViewPager$SavedState;

    .line 1271
    .local v0, "ss":Lcom/android/internal/widget/ViewPager$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1273
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1274
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1275
    iget v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    goto :goto_0

    .line 1277
    :cond_1
    iget v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 1278
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1279
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 1281
    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 2567
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 2569
    if-nez p1, :cond_0

    .line 2570
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    goto :goto_0

    .line 2572
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    .line 2574
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1254
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1255
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/internal/widget/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1256
    .local v1, "ss":Lcom/android/internal/widget/ViewPager$SavedState;
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iput v2, v1, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    .line 1257
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1258
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1260
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1457
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1460
    if-eq p1, p3, :cond_0

    .line 1461
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1463
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 1945
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1948
    return v3

    .line 1951
    :cond_0
    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 1956
    :cond_1
    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2

    .line 1957
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1959
    :cond_2
    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1961
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1962
    .local v2, "action":I
    const/4 v4, 0x0

    .line 1964
    .local v4, "needsInvalidate":Z
    and-int/lit16 v5, v2, 0xff

    const/4 v6, -0x1

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 2060
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2061
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    goto/16 :goto_2

    .line 2053
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 2054
    .local v3, "index":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 2055
    .local v5, "x":F
    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2056
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2057
    goto/16 :goto_2

    .line 2043
    .end local v3    # "index":I
    .end local v5    # "x":F
    :pswitch_3
    iget-boolean v5, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v5, :cond_6

    .line 2044
    iget v5, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-direct {v0, v5, v7, v3, v3}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 2045
    iput v6, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2046
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    .line 2047
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2048
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2049
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1977
    :pswitch_4
    iget-boolean v3, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-nez v3, :cond_4

    .line 1978
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1979
    .local v3, "pointerIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1980
    .restart local v5    # "x":F
    iget v6, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    sub-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1981
    .local v6, "xDiff":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1982
    .local v8, "y":F
    iget v9, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1984
    .local v9, "yDiff":F
    iget v10, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-lez v10, :cond_4

    cmpl-float v10, v6, v9

    if-lez v10, :cond_4

    .line 1986
    iput-boolean v7, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1987
    invoke-direct {v0, v7}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1988
    iget v10, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    sub-float v10, v5, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    iget v10, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v11, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    goto :goto_0

    .line 1989
    :cond_3
    iget v10, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v11, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    :goto_0
    iput v10, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1990
    iput v8, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1991
    invoke-direct {v0, v7}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 1992
    invoke-direct {v0, v7}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1995
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 1996
    .local v10, "parent":Landroid/view/ViewParent;
    if-eqz v10, :cond_4

    .line 1997
    invoke-interface {v10, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2002
    .end local v3    # "pointerIndex":I
    .end local v5    # "x":F
    .end local v6    # "xDiff":F
    .end local v8    # "y":F
    .end local v9    # "yDiff":F
    .end local v10    # "parent":Landroid/view/ViewParent;
    :cond_4
    iget-boolean v3, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v3, :cond_6

    .line 2004
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 2005
    .local v3, "activePointerIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 2006
    .restart local v5    # "x":F
    invoke-direct {v0, v5}, Lcom/android/internal/widget/ViewPager;->performDrag(F)Z

    move-result v6

    or-int/2addr v4, v6

    .line 2007
    .end local v3    # "activePointerIndex":I
    .end local v5    # "x":F
    goto/16 :goto_2

    .line 2010
    :pswitch_5
    iget-boolean v3, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v3, :cond_6

    .line 2011
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2012
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    iget v8, v0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v3, v5, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2013
    iget v5, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    float-to-int v5, v5

    .line 2015
    .local v5, "initialVelocity":I
    iput-boolean v7, v0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 2017
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    move-result v8

    int-to-float v8, v8

    .line 2018
    .local v8, "scrollStart":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v8, v9

    .line 2019
    .local v9, "scrolledPages":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v10

    .line 2020
    .local v10, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v11, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2022
    .local v11, "currentPage":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2023
    iget v12, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v12, v9

    iget v13, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v12, v13

    .local v12, "nextPageOffset":F
    goto :goto_1

    .line 2025
    .end local v12    # "nextPageOffset":F
    :cond_5
    iget v12, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float v12, v9, v12

    iget v13, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v12, v13

    .line 2028
    .restart local v12    # "nextPageOffset":F
    :goto_1
    iget v13, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 2029
    .local v13, "activePointerIndex":I
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 2030
    .local v14, "x":F
    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    sub-float v15, v14, v15

    float-to-int v15, v15

    .line 2031
    .local v15, "totalDelta":I
    invoke-direct {v0, v11, v12, v5, v15}, Lcom/android/internal/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v6

    .line 2033
    .local v6, "nextPage":I
    invoke-virtual {v0, v6, v7, v7, v5}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    .line 2035
    const/4 v7, -0x1

    iput v7, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2036
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    .line 2037
    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2038
    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2039
    const/4 v4, 0x1

    .line 2040
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v5    # "initialVelocity":I
    .end local v6    # "nextPage":I
    .end local v8    # "scrollStart":F
    .end local v9    # "scrolledPages":F
    .end local v10    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v11    # "currentPage":I
    .end local v12    # "nextPageOffset":F
    .end local v13    # "activePointerIndex":I
    .end local v14    # "x":F
    .end local v15    # "totalDelta":I
    goto :goto_2

    .line 1966
    :pswitch_6
    iget-object v5, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1967
    iput-boolean v3, v0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1968
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1971
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1972
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1973
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1974
    nop

    .line 2064
    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 2065
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 2067
    :cond_7
    const/4 v3, 0x1

    return v3

    .line 1953
    .end local v2    # "action":I
    .end local v4    # "needsInvalidate":Z
    :cond_8
    :goto_3
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

.method pageLeft()Z
    .locals 3

    .line 2558
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method pageRight()Z
    .locals 3

    .line 2562
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 2727
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2728
    return v1

    .line 2731
    :cond_0
    const/16 v0, 0x1000

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_1

    const v0, 0x1020039

    if-eq p1, v0, :cond_1

    const v0, 0x102003b

    if-eq p1, v0, :cond_3

    .line 2748
    return v2

    .line 2741
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2742
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 2743
    return v1

    .line 2745
    :cond_2
    return v2

    .line 2734
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2735
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 2736
    return v1

    .line 2738
    :cond_4
    return v2
.end method

.method public populate()V
    .locals 1

    .line 891
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    .line 892
    return-void
.end method

.method populate(I)V
    .locals 23
    .param p1, "newCurrentItem"    # I

    move-object/from16 v1, p0

    .line 895
    move/from16 v2, p1

    const/4 v0, 0x0

    .line 896
    .local v0, "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    const/4 v3, 0x2

    .line 897
    .local v3, "focusDirection":I
    iget v4, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v4, v2, :cond_1

    .line 898
    iget v4, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ge v4, v2, :cond_0

    const/16 v4, 0x42

    goto :goto_0

    :cond_0
    const/16 v4, 0x11

    :goto_0
    move v3, v4

    .line 899
    iget v4, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 900
    iput v2, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 903
    .end local v0    # "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v3, "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v4, "focusDirection":I
    :cond_1
    move v4, v3

    move-object v3, v0

    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-nez v0, :cond_2

    .line 904
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 905
    return-void

    .line 912
    :cond_2
    iget-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_3

    .line 914
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 915
    return-void

    .line 921
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_4

    .line 922
    return-void

    .line 925
    :cond_4
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 927
    iget v5, v1, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 928
    .local v5, "pageLimit":I
    iget v0, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    sub-int/2addr v0, v5

    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 929
    .local v7, "startPos":I
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v8

    .line 930
    .local v8, "N":I
    add-int/lit8 v0, v8, -0x1

    iget v9, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/2addr v9, v5

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 932
    .local v9, "endPos":I
    iget v0, v1, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    if-ne v8, v0, :cond_27

    .line 948
    const/4 v0, -0x1

    .line 949
    .local v0, "curIndex":I
    const/4 v10, 0x0

    .line 950
    .local v10, "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    const/4 v0, 0x0

    :goto_1
    iget-object v11, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_6

    .line 951
    iget-object v11, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 952
    .local v11, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v12, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v13, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-lt v12, v13, :cond_5

    .line 953
    iget v12, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v13, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v12, v13, :cond_6

    move-object v10, v11

    goto :goto_2

    .line 950
    .end local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 958
    :cond_6
    :goto_2
    if-nez v10, :cond_7

    if-lez v8, :cond_7

    .line 959
    iget v11, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {v1, v11, v0}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v10

    .line 965
    :cond_7
    if-eqz v10, :cond_1d

    .line 966
    const/4 v13, 0x0

    .line 967
    .local v13, "extraWidthLeft":F
    add-int/lit8 v14, v0, -0x1

    .line 968
    .local v14, "itemIndex":I
    if-ltz v14, :cond_8

    iget-object v15, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_3

    :cond_8
    const/4 v15, 0x0

    .line 969
    .local v15, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v6

    .line 970
    .local v6, "clientWidth":I
    const/high16 v17, 0x40000000    # 2.0f

    if-gtz v6, :cond_9

    .line 971
    move/from16 v19, v0

    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    iget v12, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    sub-float v12, v17, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    move/from16 v19, v0

    int-to-float v0, v6

    .end local v0    # "curIndex":I
    .local v19, "curIndex":I
    div-float/2addr v11, v0

    add-float/2addr v11, v12

    :goto_4
    move v0, v11

    .line 972
    .local v0, "leftWidthNeeded":F
    iget v11, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v11, v11, -0x1

    move/from16 v12, v19

    .end local v19    # "curIndex":I
    .local v11, "pos":I
    .local v12, "curIndex":I
    :goto_5
    if-ltz v11, :cond_11

    .line 973
    cmpl-float v19, v13, v0

    if-ltz v19, :cond_c

    if-ge v11, v7, :cond_c

    .line 974
    if-nez v15, :cond_a

    .line 975
    nop

    .line 1000
    move/from16 v20, v0

    goto/16 :goto_a

    .line 977
    :cond_a
    move/from16 v20, v0

    iget v0, v15, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .end local v0    # "leftWidthNeeded":F
    .local v20, "leftWidthNeeded":F
    if-ne v11, v0, :cond_10

    iget-boolean v0, v15, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v0, :cond_10

    .line 978
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 979
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v2, v15, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 984
    add-int/lit8 v14, v14, -0x1

    .line 985
    add-int/lit8 v12, v12, -0x1

    .line 986
    if-ltz v14, :cond_b

    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    goto :goto_7

    .line 988
    .end local v20    # "leftWidthNeeded":F
    .restart local v0    # "leftWidthNeeded":F
    :cond_c
    move/from16 v20, v0

    .end local v0    # "leftWidthNeeded":F
    .restart local v20    # "leftWidthNeeded":F
    if-eqz v15, :cond_e

    iget v0, v15, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v11, v0, :cond_e

    .line 989
    iget v0, v15, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v0

    .line 990
    add-int/lit8 v14, v14, -0x1

    .line 991
    if-ltz v14, :cond_d

    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    .end local v15    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v0, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_7
    goto :goto_9

    .line 993
    .end local v0    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v15    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_e
    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v1, v11, v0}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 994
    .end local v15    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v0    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v2, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v2

    .line 995
    add-int/lit8 v12, v12, 0x1

    .line 996
    if-ltz v14, :cond_f

    iget-object v2, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_8
    move-object v0, v2

    .line 972
    .end local v0    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v15    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_9
    move-object v15, v0

    :cond_10
    add-int/lit8 v11, v11, -0x1

    move/from16 v0, v20

    move/from16 v2, p1

    goto :goto_5

    .line 1000
    .end local v11    # "pos":I
    .end local v20    # "leftWidthNeeded":F
    .local v0, "leftWidthNeeded":F
    :cond_11
    move/from16 v20, v0

    .end local v0    # "leftWidthNeeded":F
    .restart local v20    # "leftWidthNeeded":F
    :goto_a
    iget v0, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 1001
    .local v0, "extraWidthRight":F
    add-int/lit8 v2, v12, 0x1

    .line 1002
    .end local v14    # "itemIndex":I
    .local v2, "itemIndex":I
    cmpg-float v11, v0, v17

    if-gez v11, :cond_1c

    .line 1003
    iget-object v11, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_12

    iget-object v11, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_b

    :cond_12
    const/4 v11, 0x0

    .line 1004
    .end local v15    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v11, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_b
    if-gtz v6, :cond_13

    .line 1005
    const/4 v14, 0x0

    goto :goto_c

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v6

    div-float/2addr v14, v15

    add-float v14, v14, v17

    .line 1006
    .local v14, "rightWidthNeeded":F
    :goto_c
    iget v15, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v15, v15, 0x1

    .local v15, "pos":I
    :goto_d
    if-ge v15, v8, :cond_1b

    .line 1007
    cmpl-float v17, v0, v14

    if-ltz v17, :cond_17

    if-le v15, v9, :cond_17

    .line 1008
    if-nez v11, :cond_14

    .line 1009
    nop

    .line 1033
    move/from16 v21, v5

    move/from16 v22, v6

    goto/16 :goto_12

    .line 1011
    :cond_14
    move/from16 v21, v5

    iget v5, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .end local v5    # "pageLimit":I
    .local v21, "pageLimit":I
    if-ne v15, v5, :cond_16

    iget-boolean v5, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v5, :cond_16

    .line 1012
    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1013
    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move/from16 v22, v6

    iget-object v6, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .end local v6    # "clientWidth":I
    .local v22, "clientWidth":I
    invoke-virtual {v5, v1, v15, v6}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1018
    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_15

    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_e

    :cond_15
    const/4 v5, 0x0

    :goto_e
    move-object v11, v5

    goto :goto_11

    .line 1006
    .end local v22    # "clientWidth":I
    .restart local v6    # "clientWidth":I
    :cond_16
    move/from16 v22, v6

    .end local v6    # "clientWidth":I
    .restart local v22    # "clientWidth":I
    goto :goto_11

    .line 1020
    .end local v21    # "pageLimit":I
    .end local v22    # "clientWidth":I
    .restart local v5    # "pageLimit":I
    .restart local v6    # "clientWidth":I
    :cond_17
    move/from16 v21, v5

    move/from16 v22, v6

    .end local v5    # "pageLimit":I
    .end local v6    # "clientWidth":I
    .restart local v21    # "pageLimit":I
    .restart local v22    # "clientWidth":I
    if-eqz v11, :cond_19

    iget v5, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v15, v5, :cond_19

    .line 1021
    iget v5, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v5

    .line 1022
    add-int/lit8 v2, v2, 0x1

    .line 1023
    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_18

    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_f

    :cond_18
    const/4 v5, 0x0

    :goto_f
    move-object v11, v5

    goto :goto_11

    .line 1025
    :cond_19
    invoke-virtual {v1, v15, v2}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v5

    .line 1026
    .end local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v5, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v2, v2, 0x1

    .line 1027
    iget v6, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v6

    .line 1028
    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1a

    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_10

    :cond_1a
    const/4 v6, 0x0

    :goto_10
    move-object v11, v6

    .line 1006
    .end local v5    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_11
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v21

    move/from16 v6, v22

    goto/16 :goto_d

    .line 1033
    .end local v14    # "rightWidthNeeded":F
    .end local v15    # "pos":I
    .end local v21    # "pageLimit":I
    .end local v22    # "clientWidth":I
    .local v5, "pageLimit":I
    .restart local v6    # "clientWidth":I
    :cond_1b
    move/from16 v21, v5

    move/from16 v22, v6

    .end local v5    # "pageLimit":I
    .end local v6    # "clientWidth":I
    .restart local v21    # "pageLimit":I
    .restart local v22    # "clientWidth":I
    :goto_12
    move-object v15, v11

    goto :goto_13

    .end local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v21    # "pageLimit":I
    .end local v22    # "clientWidth":I
    .restart local v5    # "pageLimit":I
    .restart local v6    # "clientWidth":I
    .local v15, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1c
    move/from16 v21, v5

    move/from16 v22, v6

    .end local v5    # "pageLimit":I
    .end local v6    # "clientWidth":I
    .restart local v21    # "pageLimit":I
    .restart local v22    # "clientWidth":I
    :goto_13
    invoke-direct {v1, v10, v12, v3}, Lcom/android/internal/widget/ViewPager;->calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V

    .end local v0    # "extraWidthRight":F
    .end local v2    # "itemIndex":I
    .end local v13    # "extraWidthLeft":F
    .end local v15    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v20    # "leftWidthNeeded":F
    .end local v22    # "clientWidth":I
    goto :goto_14

    .line 1043
    .end local v12    # "curIndex":I
    .end local v21    # "pageLimit":I
    .local v0, "curIndex":I
    .restart local v5    # "pageLimit":I
    :cond_1d
    move/from16 v19, v0

    move/from16 v21, v5

    move/from16 v12, v19

    .end local v0    # "curIndex":I
    .end local v5    # "pageLimit":I
    .restart local v12    # "curIndex":I
    .restart local v21    # "pageLimit":I
    :goto_14
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v2, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eqz v10, :cond_1e

    iget-object v5, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_15

    :cond_1e
    const/4 v5, 0x0

    :goto_15
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1045
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1049
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1050
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_21

    .line 1051
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1052
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1053
    .local v6, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iput v2, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .line 1054
    iget-boolean v11, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_1f

    iget v11, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-nez v11, :cond_20

    .line 1056
    invoke-virtual {v1, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v11

    .line 1057
    .restart local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v11, :cond_20

    .line 1058
    iget v14, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    iput v14, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 1059
    iget v14, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iput v14, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_17

    .line 1050
    :cond_1f
    const/4 v13, 0x0

    :cond_20
    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1063
    .end local v2    # "i":I
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1065
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1066
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 1067
    .local v2, "currentFocused":Landroid/view/View;
    if-eqz v2, :cond_22

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v5

    move-object/from16 v18, v5

    goto :goto_18

    :cond_22
    const/16 v18, 0x0

    :goto_18
    move-object/from16 v5, v18

    .line 1068
    .local v5, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v5, :cond_23

    iget v6, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v11, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v6, v11, :cond_26

    .line 1069
    :cond_23
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_19
    move/from16 v6, v16

    .end local v16    # "i":I
    .local v6, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_26

    .line 1070
    invoke-virtual {v1, v6}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1071
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v1, v11}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v5

    .line 1072
    if-eqz v5, :cond_25

    iget v13, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v14, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v13, v14, :cond_25

    .line 1074
    if-nez v2, :cond_24

    .line 1075
    const/4 v13, 0x0

    .local v13, "focusRect":Landroid/graphics/Rect;
    goto :goto_1a

    .line 1077
    .end local v13    # "focusRect":Landroid/graphics/Rect;
    :cond_24
    iget-object v13, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 1078
    .restart local v13    # "focusRect":Landroid/graphics/Rect;
    iget-object v14, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v14}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1079
    iget-object v14, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v14}, Lcom/android/internal/widget/ViewPager;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1080
    iget-object v14, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11, v14}, Lcom/android/internal/widget/ViewPager;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1082
    :goto_1a
    invoke-virtual {v11, v4, v13}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v14

    if-eqz v14, :cond_25

    .line 1083
    goto :goto_1b

    .line 1069
    .end local v11    # "child":Landroid/view/View;
    .end local v13    # "focusRect":Landroid/graphics/Rect;
    :cond_25
    add-int/lit8 v16, v6, 0x1

    .end local v6    # "i":I
    .restart local v16    # "i":I
    goto :goto_19

    .line 1089
    .end local v2    # "currentFocused":Landroid/view/View;
    .end local v5    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v16    # "i":I
    :cond_26
    :goto_1b
    return-void

    .line 935
    .end local v0    # "childCount":I
    .end local v10    # "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v12    # "curIndex":I
    .end local v21    # "pageLimit":I
    .local v5, "pageLimit":I
    :cond_27
    move/from16 v21, v5

    .end local v5    # "pageLimit":I
    .restart local v21    # "pageLimit":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    .local v0, "resName":Ljava/lang/String;
    goto :goto_1c

    .line 936
    .end local v0    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 937
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "resName":Ljava/lang/String;
    :goto_1c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Pager id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Pager class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " Problematic adapter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 944
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1316
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1317
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1319
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1321
    :goto_0
    return-void
.end method

.method public setAdapter(Lcom/android/internal/widget/PagerAdapter;)V
    .locals 8
    .param p1, "adapter"    # Lcom/android/internal/widget/PagerAdapter;

    .line 390
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 393
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 394
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 395
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v4, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v5, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 393
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 399
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->removeNonDecorViews()V

    .line 400
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 401
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 405
    .local v0, "oldAdapter":Lcom/android/internal/widget/PagerAdapter;
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 406
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 408
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v2, :cond_5

    .line 409
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 410
    new-instance v2, Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/widget/ViewPager$PagerObserver;-><init>(Lcom/android/internal/widget/ViewPager;Lcom/android/internal/widget/ViewPager$1;)V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    .line 412
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 413
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 414
    iget-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 415
    .local v2, "wasFirstLayout":Z
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 416
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v5}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 417
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_3

    .line 418
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 419
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v5, v1, v4}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 420
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 421
    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 422
    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 423
    :cond_3
    if-nez v2, :cond_4

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    goto :goto_1

    .line 426
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 430
    .end local v2    # "wasFirstLayout":Z
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_6

    if-eq v0, p1, :cond_6

    .line 431
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/android/internal/widget/PagerAdapter;Lcom/android/internal/widget/PagerAdapter;)V

    .line 433
    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 472
    iget-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 473
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 483
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 484
    return-void
.end method

.method setCurrentItemInternal(IZZ)Z
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    move-result v0

    return v0
.end method

.method setCurrentItemInternal(IZZI)Z
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .line 495
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 501
    if-nez p3, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 503
    return v1

    .line 506
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 507
    .local v0, "pageLimit":I
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/2addr v3, v0

    if-gt p1, v3, :cond_2

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_3

    .line 511
    :cond_2
    move v3, v1

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 512
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iput-boolean v2, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 511
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 516
    .end local v3    # "i":I
    :cond_3
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v3, p1, :cond_4

    move v1, v2

    nop

    .line 517
    .local v1, "dispatchSelected":Z
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    if-eqz v3, :cond_7

    .line 520
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 521
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_5

    .line 522
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 524
    :cond_5
    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_6

    .line 525
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 527
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    goto :goto_1

    .line 529
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    .line 530
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 533
    :goto_1
    return v2

    .line 496
    .end local v0    # "pageLimit":I
    .end local v1    # "dispatchSelected":Z
    :cond_8
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 497
    return v1
.end method

.method setInternalPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 630
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 631
    .local v0, "oldListener":Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 632
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .line 664
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 665
    const-string v1, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " too small; defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 p1, 0x1

    .line 669
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 670
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 671
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 673
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    .line 456
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    .line 457
    return-void
.end method

.method public setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 588
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 589
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .line 684
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 685
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 687
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v1

    .line 688
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 690
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 691
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 720
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 721
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 708
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 709
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->refreshDrawableState()V

    .line 710
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setWillNotDraw(Z)V

    .line 711
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->invalidate()V

    .line 712
    return-void
.end method

.method public setPageTransformer(ZLcom/android/internal/widget/ViewPager$PageTransformer;)V
    .locals 4
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 604
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 605
    .local v2, "hasTransformer":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eq v2, v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    .line 606
    .local v3, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 607
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    .line 608
    if-eqz v2, :cond_4

    .line 609
    if-eqz p1, :cond_3

    const/4 v1, 0x2

    nop

    :cond_3
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    goto :goto_3

    .line 611
    :cond_4
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    .line 613
    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 614
    :cond_5
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 755
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    .line 756
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 17
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    move-object/from16 v0, p0

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 768
    invoke-direct {v0, v2}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 769
    return-void

    .line 771
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 772
    .local v1, "sx":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v9

    .line 773
    .local v9, "sy":I
    sub-int v10, p1, v1

    .line 774
    .local v10, "dx":I
    sub-int v11, p2, v9

    .line 775
    .local v11, "dy":I
    if-nez v10, :cond_1

    if-nez v11, :cond_1

    .line 776
    invoke-direct {v0, v2}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 778
    invoke-direct {v0, v2}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 779
    return-void

    .line 782
    :cond_1
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 783
    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 785
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v2

    .line 786
    .local v2, "width":I
    div-int/lit8 v12, v2, 0x2

    .line 787
    .local v12, "halfWidth":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v5, v2

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 788
    .local v13, "distanceRatio":F
    int-to-float v3, v12

    int-to-float v5, v12

    .line 789
    invoke-virtual {v0, v13}, Lcom/android/internal/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float v14, v3, v5

    .line 791
    .local v14, "distance":F
    const/4 v3, 0x0

    .line 792
    .local v3, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 793
    .end local p3    # "velocity":I
    .local v8, "velocity":I
    if-lez v8, :cond_2

    .line 794
    const/4 v4, 0x4

    const/high16 v5, 0x447a0000    # 1000.0f

    int-to-float v6, v8

    div-float v6, v14, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/2addr v4, v5

    .end local v3    # "duration":I
    .local v4, "duration":I
    goto :goto_0

    .line 796
    .end local v4    # "duration":I
    .restart local v3    # "duration":I
    :cond_2
    int-to-float v5, v2

    iget-object v6, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v7, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v6

    mul-float/2addr v5, v6

    .line 797
    .local v5, "pageWidth":F
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    div-float/2addr v6, v7

    .line 798
    .local v6, "pageDelta":F
    add-float/2addr v4, v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    .line 800
    .end local v3    # "duration":I
    .end local v5    # "pageWidth":F
    .end local v6    # "pageDelta":F
    .restart local v4    # "duration":I
    :goto_0
    const/16 v3, 0x258

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 802
    .end local v4    # "duration":I
    .local v15, "duration":I
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move v4, v1

    move v5, v9

    move v6, v10

    move v7, v11

    move/from16 v16, v8

    move v8, v15

    .end local v8    # "velocity":I
    .local v16, "velocity":I
    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 803
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 804
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 725
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
