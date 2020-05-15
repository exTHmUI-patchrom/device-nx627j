.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# static fields
.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x4

.field private static final OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAP_TIMEOUT:J

.field private static final THUMB_POSITION_INSIDE:I = 0x1

.field private static final THUMB_POSITION_MIDPOINT:I

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private final mMinimumTouchTarget:I

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mThumbOffset:F

.field private mThumbPosition:I

.field private mThumbRange:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 97
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    .line 1611
    new-instance v0, Landroid/widget/FastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    .line 1627
    new-instance v0, Landroid/widget/FastScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    .line 1643
    new-instance v0, Landroid/widget/FastScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    .line 1659
    new-instance v0, Landroid/widget/FastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "styleResId"    # I

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 170
    iput v0, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 222
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 231
    new-instance v0, Landroid/widget/FastScroller$1;

    invoke-direct {v0, p0}, Landroid/widget/FastScroller$1;-><init>(Landroid/widget/FastScroller;)V

    iput-object v0, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 241
    new-instance v0, Landroid/widget/FastScroller$2;

    invoke-direct {v0, p0}, Landroid/widget/FastScroller$2;-><init>(Landroid/widget/FastScroller;)V

    iput-object v0, p0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 249
    iput-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 250
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    .line 251
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    .line 253
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 254
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    .line 255
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 258
    iput v1, p0, Landroid/widget/FastScroller;->mState:I

    .line 259
    nop

    .line 260
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    .line 262
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 263
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 264
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 265
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 266
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 267
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 269
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 270
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 272
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    .line 275
    invoke-virtual {p0, p2}, Landroid/widget/FastScroller;->setStyle(I)V

    .line 277
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    .line 278
    .local v1, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v1, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 279
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 280
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 281
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 282
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 283
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 285
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 286
    iget v2, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    iget v3, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    invoke-direct {p0, v2, v3}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 287
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 288
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 289
    return-void
.end method

.method static synthetic access$000(Landroid/widget/FastScroller;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/FastScroller;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/FastScroller;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/FastScroller;

    .line 55
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/FastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/FastScroller;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .line 1604
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 8
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1675
    sget-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1676
    .local v0, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v2, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    new-array v3, v1, [I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1677
    .local v2, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v1, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v4

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1678
    .local v3, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v5, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    new-array v6, v1, [I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    aput v7, v6, v4

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 1679
    .local v5, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v4

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v5, v6, v1

    invoke-static {p0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .line 1597
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 602
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 603
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 604
    return-void
.end method

.method private beginDrag()V
    .locals 2

    .line 1367
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 1369
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 1371
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 1372
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1375
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 1376
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1377
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1380
    :cond_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 1381
    return-void
.end method

.method private cancelFling()V
    .locals 8

    .line 1343
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1345
    .local v0, "cancelFling":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1346
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1347
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .line 1355
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 1356
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 542
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 544
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 545
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 547
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 548
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 549
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 552
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 554
    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .locals 22
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1250
    move/from16 v3, p3

    iget-object v4, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1251
    .local v4, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v4, :cond_0

    iget-object v5, v0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_1

    .line 1252
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1255
    :cond_1
    const/4 v5, 0x0

    if-eqz v2, :cond_10

    if-nez v3, :cond_2

    goto/16 :goto_9

    .line 1260
    :cond_2
    const/4 v6, 0x0

    if-eqz v4, :cond_3

    iget-object v7, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v7, :cond_3

    iget-object v7, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v7, v7

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    move v7, v6

    .line 1262
    .local v7, "hasSections":Z
    :goto_0
    if-eqz v7, :cond_e

    iget-boolean v8, v0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    if-nez v8, :cond_4

    goto/16 :goto_8

    .line 1272
    :cond_4
    iget v8, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    sub-int/2addr v1, v8

    .line 1273
    .end local p1    # "firstVisibleItem":I
    .local v1, "firstVisibleItem":I
    if-gez v1, :cond_5

    .line 1274
    return v5

    .line 1276
    :cond_5
    iget v5, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    sub-int/2addr v3, v5

    .line 1279
    .end local p3    # "totalItemCount":I
    .local v3, "totalItemCount":I
    iget-object v5, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1281
    .local v5, "child":Landroid/view/View;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    .line 1284
    :cond_6
    iget-object v6, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    goto :goto_2

    .line 1282
    :cond_7
    :goto_1
    const/4 v6, 0x0

    .line 1284
    .local v6, "incrementalPos":F
    :goto_2
    nop

    .line 1288
    invoke-interface {v4, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v8

    .line 1289
    .local v8, "section":I
    invoke-interface {v4, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1290
    .local v9, "sectionPos":I
    iget-object v10, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v10, v10

    .line 1292
    .local v10, "sectionCount":I
    add-int/lit8 v11, v10, -0x1

    if-ge v8, v11, :cond_9

    .line 1294
    add-int/lit8 v11, v8, 0x1

    if-ge v11, v10, :cond_8

    .line 1295
    add-int/lit8 v11, v8, 0x1

    invoke-interface {v4, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .local v11, "nextSectionPos":I
    goto :goto_3

    .line 1297
    .end local v11    # "nextSectionPos":I
    :cond_8
    add-int/lit8 v11, v3, -0x1

    .line 1299
    .restart local v11    # "nextSectionPos":I
    :goto_3
    sub-int/2addr v11, v9

    .line 1300
    .local v11, "positionsInSection":I
    goto :goto_4

    .line 1301
    .end local v11    # "positionsInSection":I
    :cond_9
    sub-int v11, v3, v9

    .line 1306
    .restart local v11    # "positionsInSection":I
    :goto_4
    if-nez v11, :cond_a

    .line 1307
    const/4 v12, 0x0

    .local v12, "posWithinSection":F
    goto :goto_5

    .line 1309
    .end local v12    # "posWithinSection":F
    :cond_a
    int-to-float v12, v1

    add-float/2addr v12, v6

    int-to-float v13, v9

    sub-float/2addr v12, v13

    int-to-float v13, v11

    div-float/2addr v12, v13

    .line 1313
    .restart local v12    # "posWithinSection":F
    :goto_5
    int-to-float v13, v8

    add-float/2addr v13, v12

    int-to-float v14, v10

    div-float/2addr v13, v14

    .line 1318
    .local v13, "result":F
    if-lez v1, :cond_d

    add-int v14, v1, v2

    if-ne v14, v3, :cond_d

    .line 1319
    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    add-int/lit8 v15, v2, -0x1

    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1320
    .local v14, "lastChild":Landroid/view/View;
    iget-object v15, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v15

    .line 1323
    .local v15, "bottomPadding":I
    move/from16 v16, v1

    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .end local v1    # "firstVisibleItem":I
    .local v16, "firstVisibleItem":I
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1324
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1325
    .local v1, "maxSize":I
    move/from16 v17, v1

    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .end local v1    # "maxSize":I
    .local v17, "maxSize":I
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v1, v1, v18

    .line 1328
    .local v1, "currentVisibleSize":I
    move/from16 v0, v17

    goto :goto_6

    .line 1327
    .end local v1    # "currentVisibleSize":I
    .end local v17    # "maxSize":I
    :cond_b
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v15

    .line 1328
    .local v1, "maxSize":I
    move/from16 v19, v1

    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .end local v1    # "maxSize":I
    .local v19, "maxSize":I
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v1, v1, v17

    move/from16 v0, v19

    .line 1330
    .end local v19    # "maxSize":I
    .local v0, "maxSize":I
    .local v1, "currentVisibleSize":I
    :goto_6
    if-lez v1, :cond_c

    if-lez v0, :cond_c

    .line 1331
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v13

    move/from16 v20, v3

    int-to-float v3, v1

    .end local v3    # "totalItemCount":I
    .local v20, "totalItemCount":I
    move/from16 v21, v1

    int-to-float v1, v0

    .end local v1    # "currentVisibleSize":I
    .local v21, "currentVisibleSize":I
    div-float/2addr v3, v1

    mul-float v17, v17, v3

    add-float v13, v13, v17

    .end local v0    # "maxSize":I
    .end local v14    # "lastChild":Landroid/view/View;
    .end local v15    # "bottomPadding":I
    .end local v21    # "currentVisibleSize":I
    goto :goto_7

    .line 1335
    .end local v20    # "totalItemCount":I
    .restart local v3    # "totalItemCount":I
    :cond_c
    move/from16 v20, v3

    .end local v3    # "totalItemCount":I
    .restart local v20    # "totalItemCount":I
    goto :goto_7

    .end local v16    # "firstVisibleItem":I
    .end local v20    # "totalItemCount":I
    .local v1, "firstVisibleItem":I
    .restart local v3    # "totalItemCount":I
    :cond_d
    move/from16 v16, v1

    move/from16 v20, v3

    .end local v1    # "firstVisibleItem":I
    .end local v3    # "totalItemCount":I
    .restart local v16    # "firstVisibleItem":I
    .restart local v20    # "totalItemCount":I
    :goto_7
    return v13

    .line 1263
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "incrementalPos":F
    .end local v8    # "section":I
    .end local v9    # "sectionPos":I
    .end local v10    # "sectionCount":I
    .end local v11    # "positionsInSection":I
    .end local v12    # "posWithinSection":F
    .end local v13    # "result":F
    .end local v16    # "firstVisibleItem":I
    .end local v20    # "totalItemCount":I
    .restart local p1    # "firstVisibleItem":I
    .restart local p3    # "totalItemCount":I
    :cond_e
    :goto_8
    if-ne v2, v3, :cond_f

    .line 1265
    return v5

    .line 1267
    :cond_f
    int-to-float v0, v1

    sub-int v5, v3, v2

    int-to-float v5, v5

    div-float/2addr v0, v5

    return v0

    .line 1257
    .end local v7    # "hasSections":Z
    :cond_10
    :goto_9
    return v5
.end method

.method private getPosFromMotionEvent(F)F
    .locals 3
    .param p1, "y"    # F

    .line 1233
    iget v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1234
    return v1

    .line 1237
    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    sub-float v0, p1, v0

    iget v2, p0, Landroid/widget/FastScroller;->mThumbRange:F

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private getSectionsFromIndexer()V
    .locals 3

    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 957
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 958
    .local v1, "adapter":Landroid/widget/Adapter;
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    .line 959
    move-object v2, v1

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 960
    move-object v2, v1

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 963
    :cond_0
    instance-of v2, v1, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_2

    .line 964
    move-object v0, v1

    check-cast v0, Landroid/widget/ExpandableListConnector;

    .line 965
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 966
    .local v0, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 967
    move-object v2, v0

    check-cast v2, Landroid/widget/SectionIndexer;

    iput-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 968
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 969
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 971
    .end local v0    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    :cond_1
    goto :goto_0

    :cond_2
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    .line 972
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 973
    move-object v0, v1

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 974
    iget-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 976
    :cond_3
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 977
    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 979
    :goto_0
    return-void
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 1578
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1579
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    .line 1581
    .local v1, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1582
    aget-object v4, p2, v2

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1583
    .local v4, "anim":Landroid/animation/Animator;
    if-nez v1, :cond_0

    .line 1584
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_1

    .line 1586
    :cond_0
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1581
    .end local v4    # "anim":Landroid/animation/Animator;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1590
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1535
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/FastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPointInsideX(F)Z
    .locals 8
    .param p1, "x"    # F

    .line 1539
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    .line 1540
    .local v0, "offset":F
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1541
    .local v1, "left":F
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 1544
    .local v2, "right":F
    iget v3, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    int-to-float v3, v3

    sub-float v4, v2, v1

    sub-float/2addr v3, v4

    .line 1545
    .local v3, "targetSizeDiff":F
    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    move v4, v3

    nop

    .line 1547
    .local v4, "adjust":F
    :cond_0
    iget-boolean v5, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 1548
    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    move v6, v7

    nop

    :cond_1
    return v6

    .line 1550
    :cond_2
    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_3

    move v6, v7

    nop

    :cond_3
    return v6
.end method

.method private isPointInsideY(F)Z
    .locals 6
    .param p1, "y"    # F

    .line 1555
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    .line 1556
    .local v0, "offset":F
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1557
    .local v1, "top":F
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 1560
    .local v2, "bottom":F
    iget v3, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    int-to-float v3, v3

    sub-float v4, v2, v1

    sub-float/2addr v3, v4

    .line 1561
    .local v3, "targetSizeDiff":F
    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    nop

    .line 1563
    .local v4, "adjust":F
    :cond_0
    sub-float v5, v1, v4

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    add-float v5, v2, v4

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method private layoutThumb()V
    .locals 3

    .line 760
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 761
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 762
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 763
    return-void
.end method

.method private layoutTrack()V
    .locals 13

    .line 770
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 771
    .local v0, "track":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 772
    .local v1, "thumb":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 773
    .local v2, "container":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 774
    .local v3, "maxWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 775
    .local v5, "maxHeight":I
    const/high16 v6, -0x80000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 776
    .local v6, "widthMeasureSpec":I
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    .line 778
    .local v4, "heightMeasureSpec":I
    invoke-virtual {v0, v6, v4}, Landroid/view/View;->measure(II)V

    .line 782
    iget v7, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 783
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 784
    .local v7, "top":I
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    .line 788
    .local v8, "bottom":I
    move v12, v8

    move v8, v7

    move v7, v12

    goto :goto_0

    .line 786
    .end local v7    # "top":I
    .end local v8    # "bottom":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 787
    .local v7, "thumbHalfHeight":I
    iget v8, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v7

    .line 788
    .local v8, "top":I
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v9, v7

    .line 791
    .local v7, "bottom":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 792
    .local v9, "trackWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v11, v9

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    .line 793
    .local v10, "left":I
    add-int v11, v10, v9

    .line 794
    .local v11, "right":I
    invoke-virtual {v0, v10, v8, v11, v7}, Landroid/view/View;->layout(IIII)V

    .line 795
    return-void
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 19
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    move-object/from16 v0, p2

    .line 694
    if-nez v0, :cond_0

    .line 695
    const/4 v1, 0x0

    .line 696
    .local v1, "marginLeft":I
    const/4 v2, 0x0

    .line 697
    .local v2, "marginTop":I
    const/4 v3, 0x0

    .local v3, "marginRight":I
    goto :goto_0

    .line 699
    .end local v1    # "marginLeft":I
    .end local v2    # "marginTop":I
    .end local v3    # "marginRight":I
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 700
    .restart local v1    # "marginLeft":I
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 701
    .restart local v2    # "marginTop":I
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 704
    .restart local v3    # "marginRight":I
    :goto_0
    move-object/from16 v4, p0

    iget-object v5, v4, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 705
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 706
    .local v6, "containerWidth":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 707
    .local v7, "adjMaxHeight":I
    sub-int v9, v6, v1

    sub-int/2addr v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 708
    .local v9, "adjMaxWidth":I
    const/high16 v10, -0x80000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 709
    .local v10, "widthMeasureSpec":I
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v8

    .line 711
    .local v8, "heightMeasureSpec":I
    move-object/from16 v11, p1

    invoke-virtual {v11, v10, v8}, Landroid/view/View;->measure(II)V

    .line 714
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 715
    .local v12, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 716
    .local v13, "width":I
    div-int/lit8 v14, v12, 0xa

    add-int/2addr v14, v2

    iget v15, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v15

    .line 717
    .local v14, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v14

    .line 718
    .local v15, "bottom":I
    sub-int v16, v6, v13

    div-int/lit8 v16, v16, 0x2

    iget v0, v5, Landroid/graphics/Rect;->left:I

    add-int v0, v16, v0

    .line 719
    .local v0, "left":I
    move/from16 v17, v1

    add-int v1, v0, v13

    .line 720
    .local v1, "right":I
    .local v17, "marginLeft":I
    move/from16 v18, v2

    move-object/from16 v2, p3

    invoke-virtual {v2, v0, v14, v1, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 721
    .end local v2    # "marginTop":I
    .local v18, "marginTop":I
    return-void
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 616
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 617
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 618
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 619
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 620
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 622
    iget v1, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 623
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/FastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 625
    :cond_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 627
    :goto_0
    return-void
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    .line 644
    if-nez v2, :cond_0

    .line 645
    const/4 v3, 0x0

    .line 646
    .local v3, "marginLeft":I
    const/4 v4, 0x0

    .line 647
    .local v4, "marginTop":I
    const/4 v5, 0x0

    .local v5, "marginRight":I
    goto :goto_0

    .line 649
    .end local v3    # "marginLeft":I
    .end local v4    # "marginTop":I
    .end local v5    # "marginRight":I
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 650
    .restart local v3    # "marginLeft":I
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 651
    .restart local v4    # "marginTop":I
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 654
    .restart local v5    # "marginRight":I
    :goto_0
    iget-object v6, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 655
    .local v6, "container":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 657
    .local v7, "containerWidth":I
    if-nez p2, :cond_1

    .line 658
    move v8, v7

    .local v8, "maxWidth":I
    :goto_1
    goto :goto_2

    .line 659
    .end local v8    # "maxWidth":I
    :cond_1
    iget-boolean v8, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v8, :cond_2

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v8

    goto :goto_1

    .line 662
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int v8, v7, v8

    .line 665
    .restart local v8    # "maxWidth":I
    :goto_2
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 666
    .local v9, "adjMaxHeight":I
    sub-int v11, v8, v3

    sub-int/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 667
    .local v11, "adjMaxWidth":I
    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 668
    .local v12, "widthMeasureSpec":I
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v10

    .line 670
    .local v10, "heightMeasureSpec":I
    move-object/from16 v13, p1

    invoke-virtual {v13, v12, v10}, Landroid/view/View;->measure(II)V

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 676
    .local v14, "width":I
    iget-boolean v15, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_4

    .line 677
    if-nez p2, :cond_3

    iget v15, v6, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    :goto_3
    sub-int/2addr v15, v5

    .line 678
    .local v15, "right":I
    sub-int v16, v15, v14

    .line 681
    .local v0, "left":I
    :goto_4
    move/from16 v0, v16

    goto :goto_6

    .line 680
    .end local v0    # "left":I
    .end local v15    # "right":I
    :cond_4
    if-nez p2, :cond_5

    iget v15, v6, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    :goto_5
    add-int v16, v15, v3

    .line 681
    .local v16, "left":I
    add-int v15, v16, v14

    goto :goto_4

    .line 685
    .end local v16    # "left":I
    .restart local v0    # "left":I
    .restart local v15    # "right":I
    :goto_6
    move/from16 v17, v4

    .line 686
    .local v17, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v1, v17

    add-int v2, v1, v16

    .line 687
    .end local v17    # "top":I
    .local v1, "top":I
    .local v2, "bottom":I
    move/from16 v18, v3

    move-object/from16 v3, p4

    invoke-virtual {v3, v0, v1, v15, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 688
    .end local v3    # "marginLeft":I
    .local v18, "marginLeft":I
    return-void
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2
    .param p1, "peekIfEnabled"    # Z

    .line 446
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 448
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    goto :goto_0

    .line 449
    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v1, :cond_1

    .line 450
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_0

    .line 451
    :cond_1
    if-eqz p1, :cond_3

    .line 452
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 453
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_0

    .line 456
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FastScroller;->stop()V

    .line 459
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 460
    return-void
.end method

.method private postAutoHide()V
    .locals 4

    .line 926
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 927
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 928
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 2

    .line 852
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 853
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 854
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 855
    return-void
.end method

.method private scrollTo(F)V
    .locals 21
    .param p1, "position"    # F

    move-object/from16 v0, p0

    .line 990
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 992
    iget-object v2, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    .line 993
    .local v2, "count":I
    iget-object v3, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 994
    .local v3, "sections":[Ljava/lang/Object;
    if-nez v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    array-length v4, v3

    .line 996
    .local v4, "sectionCount":I
    :goto_0
    if-eqz v3, :cond_a

    const/4 v5, 0x1

    if-le v4, v5, :cond_a

    .line 997
    int-to-float v5, v4

    mul-float v5, v5, p1

    float-to-int v5, v5

    add-int/lit8 v6, v4, -0x1

    invoke-static {v5, v1, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 999
    .local v5, "exactSection":I
    move v6, v5

    .line 1000
    .local v6, "targetSection":I
    iget-object v7, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 1001
    .local v7, "targetIndex":I
    move v8, v6

    .line 1009
    .local v8, "sectionIndex":I
    move v9, v2

    .line 1010
    .local v9, "nextIndex":I
    move v10, v7

    .line 1011
    .local v10, "prevIndex":I
    move v11, v6

    .line 1012
    .local v11, "prevSection":I
    add-int/lit8 v12, v6, 0x1

    .line 1015
    .local v12, "nextSection":I
    add-int/lit8 v13, v4, -0x1

    if-ge v6, v13, :cond_1

    .line 1016
    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v6, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1020
    :cond_1
    if-ne v9, v7, :cond_4

    .line 1022
    :cond_2
    if-lez v6, :cond_4

    .line 1023
    add-int/lit8 v6, v6, -0x1

    .line 1024
    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .line 1025
    if-eq v10, v7, :cond_3

    .line 1026
    move v11, v6

    .line 1027
    move v8, v6

    .line 1028
    goto :goto_1

    .line 1029
    :cond_3
    if-nez v6, :cond_2

    .line 1032
    const/4 v8, 0x0

    .line 1033
    nop

    .line 1043
    :cond_4
    :goto_1
    add-int/lit8 v13, v12, 0x1

    .line 1044
    .local v13, "nextNextSection":I
    :goto_2
    if-ge v13, v4, :cond_5

    iget-object v14, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1045
    invoke-interface {v14, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    if-ne v14, v9, :cond_5

    .line 1046
    add-int/lit8 v13, v13, 0x1

    .line 1047
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1054
    :cond_5
    int-to-float v14, v11

    int-to-float v1, v4

    div-float/2addr v14, v1

    .line 1055
    .local v14, "prevPosition":F
    int-to-float v1, v12

    move-object v15, v3

    int-to-float v3, v4

    .end local v3    # "sections":[Ljava/lang/Object;
    .local v15, "sections":[Ljava/lang/Object;
    div-float/2addr v1, v3

    .line 1056
    .local v1, "nextPosition":F
    if-nez v2, :cond_6

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v16, v4

    goto :goto_3

    :cond_6
    const/high16 v3, 0x3e000000    # 0.125f

    move/from16 v16, v4

    int-to-float v4, v2

    .end local v4    # "sectionCount":I
    .local v16, "sectionCount":I
    div-float/2addr v3, v4

    .line 1057
    .local v3, "snapThreshold":F
    :goto_3
    if-ne v11, v5, :cond_7

    sub-float v4, p1, v14

    cmpg-float v4, v4, v3

    if-gez v4, :cond_7

    .line 1058
    move v4, v10

    goto :goto_4

    .line 1060
    :cond_7
    sub-int v4, v9, v10

    int-to-float v4, v4

    sub-float v17, p1, v14

    mul-float v4, v4, v17

    sub-float v17, v1, v14

    div-float v4, v4, v17

    float-to-int v4, v4

    add-int/2addr v4, v10

    .line 1065
    .end local v7    # "targetIndex":I
    .local v4, "targetIndex":I
    :goto_4
    add-int/lit8 v7, v2, -0x1

    move/from16 v18, v1

    const/4 v1, 0x0

    invoke-static {v4, v1, v7}, Landroid/util/MathUtils;->constrain(III)I

    move-result v4

    .line 1067
    .end local v1    # "nextPosition":F
    .local v18, "nextPosition":F
    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_8

    .line 1068
    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 1069
    .local v1, "expList":Landroid/widget/ExpandableListView;
    iget v7, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v7, v4

    .line 1070
    move/from16 v19, v5

    move/from16 v20, v6

    invoke-static {v7}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v5

    .line 1069
    .end local v5    # "exactSection":I
    .end local v6    # "targetSection":I
    .local v19, "exactSection":I
    .local v20, "targetSection":I
    invoke-virtual {v1, v5, v6}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1072
    .end local v1    # "expList":Landroid/widget/ExpandableListView;
    goto :goto_5

    .end local v19    # "exactSection":I
    .end local v20    # "targetSection":I
    .restart local v5    # "exactSection":I
    .restart local v6    # "targetSection":I
    :cond_8
    move/from16 v19, v5

    move/from16 v20, v6

    .end local v5    # "exactSection":I
    .end local v6    # "targetSection":I
    .restart local v19    # "exactSection":I
    .restart local v20    # "targetSection":I
    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_9

    .line 1073
    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    iget v5, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v5, v4

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_5

    .line 1075
    :cond_9
    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v5, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 1077
    .end local v3    # "snapThreshold":F
    .end local v4    # "targetIndex":I
    .end local v9    # "nextIndex":I
    .end local v10    # "prevIndex":I
    .end local v11    # "prevSection":I
    .end local v12    # "nextSection":I
    .end local v13    # "nextNextSection":I
    .end local v14    # "prevPosition":F
    .end local v18    # "nextPosition":F
    .end local v19    # "exactSection":I
    .end local v20    # "targetSection":I
    :goto_5
    goto :goto_7

    .line 1078
    .end local v8    # "sectionIndex":I
    .end local v15    # "sections":[Ljava/lang/Object;
    .end local v16    # "sectionCount":I
    .local v3, "sections":[Ljava/lang/Object;
    .local v4, "sectionCount":I
    :cond_a
    move-object v15, v3

    move/from16 v16, v4

    .end local v3    # "sections":[Ljava/lang/Object;
    .end local v4    # "sectionCount":I
    .restart local v15    # "sections":[Ljava/lang/Object;
    .restart local v16    # "sectionCount":I
    int-to-float v1, v2

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 1080
    .local v1, "index":I
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v3, v3, Landroid/widget/ExpandableListView;

    if-eqz v3, :cond_b

    .line 1081
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v3, Landroid/widget/ExpandableListView;

    .line 1082
    .local v3, "expList":Landroid/widget/ExpandableListView;
    iget v4, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v4, v1

    .line 1083
    invoke-static {v4}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    .line 1082
    invoke-virtual {v3, v4, v5}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1084
    .end local v3    # "expList":Landroid/widget/ExpandableListView;
    goto :goto_6

    :cond_b
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_c

    .line 1085
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v3, Landroid/widget/ListView;

    iget v4, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    .line 1087
    :cond_c
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v4, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 1090
    :goto_6
    nop

    .end local v1    # "index":I
    const/4 v8, -0x1

    .restart local v8    # "sectionIndex":I
    :goto_7
    move v1, v8

    .line 1093
    .end local v8    # "sectionIndex":I
    .local v1, "sectionIndex":I
    iget v3, v0, Landroid/widget/FastScroller;->mCurrentSection:I

    if-eq v3, v1, :cond_e

    .line 1094
    iput v1, v0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 1096
    invoke-direct {v0, v1}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v3

    .line 1097
    .local v3, "hasPreview":Z
    iget-boolean v4, v0, Landroid/widget/FastScroller;->mShowingPreview:Z

    if-nez v4, :cond_d

    if-eqz v3, :cond_d

    .line 1098
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    goto :goto_8

    .line 1099
    :cond_d
    iget-boolean v4, v0, Landroid/widget/FastScroller;->mShowingPreview:Z

    if-eqz v4, :cond_e

    if-nez v3, :cond_e

    .line 1100
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    .line 1103
    .end local v3    # "hasPreview":Z
    :cond_e
    :goto_8
    return-void
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 820
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 822
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 823
    const/4 p1, 0x1

    .line 826
    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 827
    return-void

    .line 830
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 838
    :pswitch_0
    iget v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 839
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    goto :goto_0

    .line 841
    :cond_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto :goto_0

    .line 835
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    .line 836
    goto :goto_0

    .line 832
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToHidden()V

    .line 833
    nop

    .line 846
    :goto_0
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    .line 848
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    .line 849
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 12
    .param p1, "position"    # F

    .line 1197
    iget v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    add-float/2addr v0, v1

    .line 1198
    .local v0, "thumbMiddle":F
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1200
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 1201
    .local v1, "previewImage":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 1203
    .local v2, "previewHalfHeight":F
    iget v3, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    packed-switch v3, :pswitch_data_0

    .line 1212
    const/4 v3, 0x0

    goto :goto_0

    .line 1208
    :pswitch_0
    sub-float v3, v0, v2

    .line 1209
    .local v3, "previewPos":F
    goto :goto_0

    .line 1205
    .end local v3    # "previewPos":F
    :pswitch_1
    move v3, v0

    .line 1206
    .restart local v3    # "previewPos":F
    nop

    .line 1212
    :goto_0
    nop

    .line 1217
    iget-object v4, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1218
    .local v4, "container":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 1219
    .local v5, "top":I
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 1220
    .local v6, "bottom":I
    int-to-float v7, v5

    add-float/2addr v7, v2

    .line 1221
    .local v7, "minP":F
    int-to-float v8, v6

    sub-float/2addr v8, v2

    .line 1222
    .local v8, "maxP":F
    invoke-static {v3, v7, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v9

    .line 1223
    .local v9, "previewMiddle":F
    sub-float v10, v9, v2

    .line 1224
    .local v10, "previewTop":F
    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 1226
    iget-object v11, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1227
    iget-object v11, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1228
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startPendingDrag()V
    .locals 4

    .line 1363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 1364
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 20
    .param p1, "sectionIndex"    # I

    move-object/from16 v0, p0

    .line 1114
    move/from16 v1, p1

    iget-object v2, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 1115
    .local v2, "sections":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1116
    .local v3, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 1117
    aget-object v4, v2, v1

    .line 1118
    .local v4, "section":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 1119
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1123
    .end local v4    # "section":Ljava/lang/Object;
    :cond_0
    iget-object v4, v0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1124
    .local v4, "bounds":Landroid/graphics/Rect;
    iget-object v5, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 1127
    .local v5, "preview":Landroid/view/View;
    iget-boolean v6, v0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    if-eqz v6, :cond_1

    .line 1128
    iget-object v6, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1129
    .local v6, "showing":Landroid/widget/TextView;
    iget-object v7, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .local v7, "target":Landroid/widget/TextView;
    goto :goto_0

    .line 1131
    .end local v6    # "showing":Landroid/widget/TextView;
    .end local v7    # "target":Landroid/widget/TextView;
    :cond_1
    iget-object v6, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1132
    .restart local v6    # "showing":Landroid/widget/TextView;
    iget-object v7, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1136
    .restart local v7    # "target":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    invoke-direct {v0, v7, v4}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1138
    invoke-direct {v0, v7, v4}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1140
    iget-object v8, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_2

    .line 1141
    iget-object v8, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1145
    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 1146
    .local v9, "showTarget":Landroid/animation/Animator;
    const/4 v12, 0x0

    invoke-static {v6, v12}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v10

    .line 1147
    .local v10, "hideShowing":Landroid/animation/Animator;
    iget-object v11, v0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1150
    iget v11, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->left:I

    .line 1151
    iget v11, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->top:I

    .line 1152
    iget v11, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->right:I

    .line 1153
    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    .line 1154
    invoke-static {v5, v4}, Landroid/widget/FastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v11

    .line 1155
    .local v11, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v12, 0x64

    invoke-virtual {v11, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1157
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1158
    iget-object v14, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    .line 1159
    .local v14, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1163
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    .line 1164
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    .line 1168
    .local v15, "previewWidth":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    .line 1169
    .local v12, "targetWidth":I
    if-le v12, v15, :cond_3

    .line 1170
    int-to-float v13, v15

    int-to-float v8, v12

    div-float/2addr v13, v8

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1171
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    move-object/from16 v17, v2

    const-wide/16 v1, 0x64

    invoke-virtual {v8, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v8

    .line 1172
    .end local v2    # "sections":[Ljava/lang/Object;
    .local v8, "scaleAnim":Landroid/animation/Animator;
    .local v17, "sections":[Ljava/lang/Object;
    invoke-virtual {v14, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1173
    .end local v8    # "scaleAnim":Landroid/animation/Animator;
    goto :goto_1

    .line 1174
    .end local v17    # "sections":[Ljava/lang/Object;
    .restart local v2    # "sections":[Ljava/lang/Object;
    :cond_3
    move-object/from16 v17, v2

    .end local v2    # "sections":[Ljava/lang/Object;
    .restart local v17    # "sections":[Ljava/lang/Object;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1178
    :goto_1
    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 1179
    .local v1, "showingWidth":I
    if-le v1, v12, :cond_4

    .line 1180
    int-to-float v2, v12

    int-to-float v8, v1

    div-float/2addr v2, v8

    .line 1181
    .local v2, "scale":F
    invoke-static {v6, v2}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    move/from16 v18, v1

    move/from16 v19, v2

    const-wide/16 v1, 0x64

    invoke-virtual {v8, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 1182
    .end local v2    # "scale":F
    .local v1, "scaleAnim":Landroid/animation/Animator;
    .local v18, "showingWidth":I
    .local v19, "scale":F
    invoke-virtual {v14, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .end local v1    # "scaleAnim":Landroid/animation/Animator;
    .end local v19    # "scale":F
    goto :goto_2

    .line 1185
    .end local v18    # "showingWidth":I
    .local v1, "showingWidth":I
    :cond_4
    move/from16 v18, v1

    .end local v1    # "showingWidth":I
    .restart local v18    # "showingWidth":I
    :goto_2
    iget-object v1, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1187
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private transitionToDragging()V
    .locals 10

    .line 908
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 912
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 914
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 915
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x0

    new-array v8, v6, [Landroid/view/View;

    iget-object v9, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v9, v8, v5

    invoke-static {v3, v7, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 916
    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 918
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 919
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 920
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 922
    iput-boolean v5, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 923
    return-void
.end method

.method private transitionToHidden()V
    .locals 10

    .line 861
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 865
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v7, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v2, v3

    const/4 v3, 0x4

    iget-object v7, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 866
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 869
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    :goto_0
    int-to-float v3, v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    neg-int v3, v3

    goto :goto_0

    .line 870
    .local v3, "offset":F
    :goto_1
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v6, [Landroid/view/View;

    iget-object v9, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v9, v8, v5

    invoke-static {v7, v3, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v7

    .line 872
    invoke-virtual {v7, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 874
    .local v1, "slideOut":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 875
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v4

    aput-object v1, v6, v5

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 876
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 878
    iput-boolean v4, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 879
    return-void
.end method

.method private transitionToVisible()V
    .locals 12

    .line 885
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 889
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 890
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 891
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x3

    new-array v8, v7, [Landroid/view/View;

    iget-object v9, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v9, v8, v5

    iget-object v9, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v9, v8, v6

    iget-object v9, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v9, v8, v2

    const/4 v9, 0x0

    invoke-static {v1, v9, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v10, 0x12c

    .line 893
    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 894
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v2, [Landroid/view/View;

    iget-object v11, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v11, v10, v5

    iget-object v11, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v11, v10, v6

    invoke-static {v8, v9, v10}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v8

    .line 895
    invoke-virtual {v8, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    .line 897
    .local v3, "slideIn":Landroid/animation/Animator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 898
    iget-object v4, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v5

    aput-object v1, v7, v6

    aput-object v3, v7, v2

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 899
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 901
    iput-boolean v5, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 902
    return-void
.end method

.method private updateAppearance()V
    .locals 4

    .line 292
    const/4 v0, 0x0

    .line 295
    .local v0, "width":I
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 301
    :cond_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 303
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbMinHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 304
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 309
    :cond_1
    iget v1, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mWidth:I

    .line 311
    iget v1, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 313
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 316
    :cond_2
    iget-object v1, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    .line 317
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 318
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 321
    :cond_3
    iget v1, p0, Landroid/widget/FastScroller;->mTextSize:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_4

    .line 322
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/FastScroller;->mTextSize:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 323
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/FastScroller;->mTextSize:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 326
    :cond_4
    iget v1, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    .line 327
    .local v1, "padding":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 328
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 329
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 330
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 332
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    .line 333
    return-void
.end method

.method private updateContainerRect()V
    .locals 6

    .line 727
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 728
    .local v0, "list":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 730
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 731
    .local v1, "container":Landroid/graphics/Rect;
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 732
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 733
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 734
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 736
    iget v2, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 737
    .local v2, "scrollbarStyle":I
    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_2

    .line 739
    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 740
    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 741
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 742
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 745
    if-ne v2, v3, :cond_2

    .line 746
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getWidth()I

    move-result v3

    .line 747
    .local v3, "width":I
    iget v4, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 748
    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 750
    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 754
    .end local v3    # "width":I
    :cond_2
    :goto_0
    return-void
.end method

.method private updateLongList(II)V
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .line 530
    const/4 v0, 0x0

    if-lez p1, :cond_0

    div-int v1, p2, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 531
    .local v1, "longList":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-eq v2, v1, :cond_1

    .line 532
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 534
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 536
    :cond_1
    return-void
.end method

.method private updateOffsetAndRange()V
    .locals 5

    .line 802
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 803
    .local v0, "trackImage":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 806
    .local v1, "thumbImage":Landroid/view/View;
    iget v2, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 807
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 808
    .local v2, "halfThumbHeight":F
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 809
    .local v3, "min":F
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    .line 810
    .end local v2    # "halfThumbHeight":F
    .local v4, "max":F
    goto :goto_0

    .line 811
    .end local v3    # "min":F
    .end local v4    # "max":F
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v2

    .line 812
    .restart local v3    # "min":F
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v4, v2

    .restart local v4    # "max":F
    :goto_0
    move v2, v4

    .line 815
    .end local v4    # "max":F
    .local v2, "max":F
    iput v3, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    .line 816
    sub-float v4, v2, v3

    iput v4, p0, Landroid/widget/FastScroller;->mThumbRange:F

    .line 817
    return-void
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    .line 507
    iget v0, p0, Landroid/widget/FastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .line 437
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1430
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1431
    return v1

    .line 1434
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1435
    .local v0, "actionMasked":I
    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    :cond_1
    iget v2, p0, Landroid/widget/FastScroller;->mState:I

    if-nez v2, :cond_2

    .line 1437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1438
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 1439
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 1442
    :cond_2
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1384
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1385
    return v1

    .line 1388
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1407
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1408
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1409
    :cond_1
    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 1410
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1412
    iget v0, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1413
    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 1417
    invoke-virtual {p0, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1422
    .end local v0    # "pos":F
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1390
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1396
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1399
    const/4 v0, 0x1

    return v0

    .line 1402
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 1403
    invoke-direct {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    .line 1426
    :cond_3
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .line 515
    iget v0, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    if-eq v0, p1, :cond_3

    .line 516
    :cond_0
    iput p2, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    .line 517
    iput p1, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    .line 519
    sub-int v0, p2, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 520
    .local v0, "hasMoreItems":Z
    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 521
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 522
    .local v1, "firstVisibleItem":I
    invoke-direct {p0, v1, p1, p2}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 525
    .end local v1    # "firstVisibleItem":I
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 527
    .end local v0    # "hasMoreItems":Z
    :cond_3
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1446
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1449
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1447
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(III)V
    .locals 4
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .line 931
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 932
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 933
    return-void

    .line 936
    :cond_0
    sub-int v0, p3, p2

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    .line 937
    .local v0, "hasMoreItems":Z
    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v3, v1, :cond_2

    .line 938
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 941
    :cond_2
    iput-boolean v2, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 943
    iget v3, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    if-eq v3, p1, :cond_3

    .line 944
    iput p1, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    .line 947
    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v3, v1, :cond_3

    .line 948
    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 949
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 952
    :cond_3
    return-void
.end method

.method public onSectionsChanged()V
    .locals 1

    .line 982
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 983
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 511
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 512
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 1453
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1454
    return v1

    .line 1457
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1517
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1496
    :pswitch_1
    iget-wide v6, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    cmp-long v0, v6, v3

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 1497
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1502
    :cond_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_5

    .line 1504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1505
    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 1508
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_2

    .line 1509
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 1512
    :cond_2
    return v5

    .line 1468
    .end local v0    # "pos":F
    :pswitch_2
    iget-wide v6, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    cmp-long v0, v6, v3

    if-ltz v0, :cond_3

    .line 1470
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1473
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 1474
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 1479
    .end local v0    # "pos":F
    :cond_3
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_5

    .line 1480
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_4

    .line 1484
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1485
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1488
    :cond_4
    invoke-direct {p0, v5}, Landroid/widget/FastScroller;->setState(I)V

    .line 1489
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 1491
    return v5

    .line 1459
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1460
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1461
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1462
    return v5

    .line 1521
    :cond_5
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    .line 396
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 397
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 399
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 400
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 401
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .line 425
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 426
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    .line 428
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 430
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 407
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 408
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mEnabled:Z

    .line 410
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 412
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 463
    iget v0, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 464
    iput p1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 466
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 468
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 5
    .param p1, "position"    # I

    .line 478
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 479
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move p1, v1

    .line 483
    :cond_1
    iget v1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    if-eq v1, p1, :cond_3

    .line 484
    iput p1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 485
    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    .line 487
    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    iget-boolean v2, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    aget v0, v0, v2

    .line 488
    .local v0, "previewResId":I
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 491
    iget v2, p0, Landroid/widget/FastScroller;->mPreviewMinWidth:I

    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 492
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 491
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 493
    .local v2, "textMinWidth":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 494
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 496
    iget v3, p0, Landroid/widget/FastScroller;->mPreviewMinHeight:I

    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 497
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 496
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 498
    .local v1, "textMinHeight":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 499
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 502
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 504
    .end local v0    # "previewResId":I
    .end local v1    # "textMinHeight":I
    .end local v2    # "textMinWidth":I
    :cond_3
    return-void
.end method

.method public setStyle(I)V
    .locals 9
    .param p1, "resId"    # I

    .line 336
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 337
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/android/internal/R$styleable;->FastScroll:[I

    const/4 v2, 0x0

    const v3, 0x10103f7

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 339
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 340
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 341
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 342
    .local v5, "index":I
    packed-switch v5, :pswitch_data_0

    .end local v5    # "index":I
    goto/16 :goto_1

    .line 356
    .restart local v5    # "index":I
    :pswitch_0
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 357
    goto :goto_1

    .line 374
    :pswitch_1
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    .line 375
    goto :goto_1

    .line 377
    :pswitch_2
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mThumbMinHeight:I

    .line 378
    goto :goto_1

    .line 353
    :pswitch_3
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 354
    goto :goto_1

    .line 344
    :pswitch_4
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    .line 345
    goto :goto_1

    .line 350
    :pswitch_5
    iget-object v6, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x1

    aput v7, v6, v8

    .line 351
    goto :goto_1

    .line 347
    :pswitch_6
    iget-object v6, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v6, v3

    .line 348
    goto :goto_1

    .line 383
    :pswitch_7
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    .end local v5    # "index":I
    goto :goto_1

    .line 371
    .restart local v5    # "index":I
    :pswitch_8
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mPreviewMinHeight:I

    .line 372
    goto :goto_1

    .line 368
    :pswitch_9
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mPreviewMinWidth:I

    .line 369
    goto :goto_1

    .line 380
    :pswitch_a
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    .line 381
    goto :goto_1

    .line 362
    :pswitch_b
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    .line 363
    goto :goto_1

    .line 365
    :pswitch_c
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Landroid/widget/FastScroller;->mTextSize:F

    .line 366
    goto :goto_1

    .line 359
    :pswitch_d
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    .line 360
    nop

    .line 340
    .end local v5    # "index":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 387
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 389
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateAppearance()V

    .line 390
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 475
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .line 563
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    if-eqz v0, :cond_0

    .line 564
    return-void

    .line 567
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    .line 569
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateContainerRect()V

    .line 571
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutThumb()V

    .line 572
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutTrack()V

    .line 574
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateOffsetAndRange()V

    .line 576
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 577
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 578
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 579
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 580
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 582
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 584
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 585
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 586
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 587
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 588
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 591
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    .line 592
    return-void
.end method
