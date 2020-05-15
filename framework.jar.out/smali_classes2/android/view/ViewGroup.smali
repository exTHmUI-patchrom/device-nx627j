.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$IMagnifierListener;,
        Landroid/view/ViewGroup$ViewLocationHolder;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$ChildListForAutoFill;,
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FLAG_ANIMATION_CACHE:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field static final FLAG_IS_TRANSITION_GROUP:I = 0x1000000

.field static final FLAG_IS_TRANSITION_GROUP_SET:I = 0x2000000

.field private static final FLAG_LAYOUT_MODE_WAS_EXPLICITLY_SET:I = 0x800000

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SHOW_CONTEXT_MENU_WITH_COORDS:I = 0x20000000

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field private static final FLAG_START_ACTION_MODE_FOR_CHILD_IS_NOT_TYPED:I = 0x10000000

.field private static final FLAG_START_ACTION_MODE_FOR_CHILD_IS_TYPED:I = 0x8000000

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field static final FLAG_TOUCHSCREEN_BLOCKS_FOCUS:I = 0x4000000

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static LAYOUT_MODE_DEFAULT:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1

.field private static final LAYOUT_MODE_UNDEFINED:I = -0x1

.field public static final PERSISTENT_ALL_CACHES:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PERSISTENT_NO_CACHE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

.field private static final TAG:Ljava/lang/String; = "ViewGroup"

.field private static sDebugLines:[F


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mCachePaint:Landroid/graphics/Paint;

.field private mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mChildTransformation:Landroid/view/animation/Transformation;

.field mChildUnhandledKeyListeners:I

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mChildrenInterestedInDrag:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDragChild:Landroid/view/View;

.field private mCurrentDragStartEvent:Landroid/view/DragEvent;

.field private mDefaultFocus:Landroid/view/View;

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field mFocusedInCluster:Landroid/view/View;

.field protected mGroupFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CLIP_CHILDREN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "CLIP_TO_PADDING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "PADDING_NOT_NULL"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mHoveredSelf:Z

.field mInvalidateRegion:Landroid/graphics/RectF;

.field mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private mIsInterestedInDrag:Z

.field private mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mLayoutCalledWhileSuppressed:Z

.field private mLayoutMode:I

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private mLocalPoint:Landroid/graphics/PointF;

.field private mMagnifierListener:Landroid/view/ViewGroup$IMagnifierListener;

.field private mNestedScrollAxes:I

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mPreSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mSuppressLayout:Z

.field private mTempPoint:[F

.field private mTooltipHoverTarget:Landroid/view/View;

.field private mTooltipHoveredSelf:Z

.field private mTransientIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransition:Landroid/animation/LayoutTransition;

.field private mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 351
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    .line 519
    const/4 v0, 0x0

    sput v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    .line 601
    new-instance v0, Landroid/view/ViewGroup$1;

    invoke-direct {v0}, Landroid/view/ViewGroup$1;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-void

    nop

    :array_0
    .array-data 4
        0x20000
        0x40000
        0x60000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 650
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 651
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 654
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 655
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 658
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 659
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 662
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 238
    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 545
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 572
    iput v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 582
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mMagnifierListener:Landroid/view/ViewGroup$IMagnifierListener;

    .line 586
    iput-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 587
    iput-object v1, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 593
    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 6993
    new-instance v0, Landroid/view/ViewGroup$4;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$4;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 664
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 665
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 666
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .line 120
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .line 120
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .line 120
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .line 120
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return v0
.end method

.method static synthetic access$302(Landroid/view/ViewGroup;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewGroup;
    .param p1, "x1"    # Z

    .line 120
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .line 120
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Landroid/graphics/Paint;

    .line 120
    invoke-static/range {p0 .. p9}, Landroid/view/ViewGroup;->fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    return-void
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 6886
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 6888
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 6889
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object v0, v1

    .line 6892
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6893
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 5157
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5158
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5159
    .local v1, "count":I
    array-length v2, v0

    .line 5160
    .local v2, "size":I
    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    .line 5161
    if-ne v2, v1, :cond_0

    .line 5162
    add-int/lit8 v4, v2, 0xc

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5163
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5164
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5166
    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    goto :goto_1

    .line 5167
    :cond_1
    if-ge p2, v1, :cond_4

    .line 5168
    if-ne v2, v1, :cond_2

    .line 5169
    add-int/lit8 v4, v2, 0xc

    new-array v4, v4, [Landroid/view/View;

    iput-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5170
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v3, v4, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5171
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5172
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    goto :goto_0

    .line 5174
    :cond_2
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5176
    :goto_0
    aput-object p1, v0, p2

    .line 5177
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5178
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_3

    .line 5179
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 5184
    :cond_3
    :goto_1
    return-void

    .line 5182
    :cond_4
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerIdBits"    # I

    .line 2891
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 2892
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2893
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2894
    return-object v0
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .line 5046
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 5049
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 5052
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_12

    .line 5057
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 5058
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5061
    :cond_1
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5062
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 5065
    :cond_2
    if-eqz p4, :cond_3

    .line 5066
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    .line 5068
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5071
    :goto_0
    if-gez p2, :cond_4

    .line 5072
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5075
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 5078
    if-eqz p4, :cond_5

    .line 5079
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    goto :goto_1

    .line 5081
    :cond_5
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5083
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasUnhandledKeyListener()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5084
    invoke-virtual {p0}, Landroid/view/ViewGroup;->incrementChildUnhandledKeyListeners()V

    .line 5087
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    .line 5088
    .local v0, "childHasFocus":Z
    if-eqz v0, :cond_7

    .line 5089
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 5092
    :cond_7
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5093
    .local v1, "ai":Landroid/view/View$AttachInfo;
    const/4 v2, 0x0

    const/high16 v3, 0x400000

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v5, v3

    if-nez v5, :cond_9

    .line 5094
    iget-boolean v5, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5095
    .local v5, "lastKeepOn":Z
    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5096
    iget-object v6, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v7, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    invoke-virtual {p1, v6, v7}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 5097
    iget-boolean v6, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v6, :cond_8

    .line 5098
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5100
    :cond_8
    iput-boolean v5, v1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 5103
    .end local v5    # "lastKeepOn":Z
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5104
    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    .line 5107
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewAdded(Landroid/view/View;)V

    .line 5109
    iget v5, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_b

    .line 5110
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x10000

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5113
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5114
    invoke-virtual {p0, p1, v4}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5117
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_d

    .line 5118
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5121
    :cond_d
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-eqz v3, :cond_f

    .line 5122
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 5123
    .local v3, "transientCount":I
    nop

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_f

    .line 5124
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 5125
    .local v4, "oldIndex":I
    if-gt p2, v4, :cond_e

    .line 5126
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5123
    .end local v4    # "oldIndex":I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5131
    .end local v2    # "i":I
    .end local v3    # "transientCount":I
    :cond_f
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    .line 5132
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 5135
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5138
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    .line 5141
    :cond_11
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->touchAccessibilityNodeProviderIfNeeded(Landroid/view/View;)V

    .line 5142
    return-void

    .line 5053
    .end local v0    # "childHasFocus":Z
    .end local v1    # "ai":Landroid/view/View$AttachInfo;
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 5244
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 5245
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 5246
    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .line 2954
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    .line 2955
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2954
    :goto_1
    return v0
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2851
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v0, :cond_2

    .line 2852
    const/4 v0, 0x0

    .line 2853
    .local v0, "syntheticEvent":Z
    if-nez p1, :cond_0

    .line 2854
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2855
    .local v9, "now":J
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2857
    const/16 v1, 0x1002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2858
    const/4 v0, 0x1

    .line 2861
    .end local v9    # "now":J
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v1, :cond_1

    .line 2862
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2863
    const/4 v2, 0x1

    iget-object v3, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v4, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v2, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 2861
    iget-object v1, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 2865
    .end local v1    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2867
    if-eqz v0, :cond_2

    .line 2868
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2871
    .end local v0    # "syntheticEvent":Z
    :cond_2
    return-void
.end method

.method private cancelHoverTarget(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .line 2244
    const/4 v0, 0x0

    .line 2245
    .local v0, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2246
    .local v1, "target":Landroid/view/ViewGroup$HoverTarget;
    :goto_0
    if-eqz v1, :cond_2

    .line 2247
    iget-object v2, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2248
    .local v2, "next":Landroid/view/ViewGroup$HoverTarget;
    iget-object v3, v1, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 2249
    if-nez v0, :cond_0

    .line 2250
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_1

    .line 2252
    :cond_0
    iput-object v2, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2254
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 2256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2257
    .local v12, "now":J
    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 2259
    .local v3, "event":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2260
    invoke-virtual {p1, v3}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2261
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 2262
    return-void

    .line 2264
    .end local v3    # "event":Landroid/view/MotionEvent;
    .end local v12    # "now":J
    :cond_1
    move-object v0, v1

    .line 2265
    move-object v1, v2

    .line 2266
    .end local v2    # "next":Landroid/view/ViewGroup$HoverTarget;
    goto :goto_0

    .line 2267
    :cond_2
    return-void
.end method

.method private cancelTouchTarget(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .line 2924
    const/4 v0, 0x0

    .line 2925
    .local v0, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2926
    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v1, :cond_2

    .line 2927
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2928
    .local v2, "next":Landroid/view/ViewGroup$TouchTarget;
    iget-object v3, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 2929
    if-nez v0, :cond_0

    .line 2930
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 2932
    :cond_0
    iput-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2934
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2936
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2937
    .local v12, "now":J
    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 2939
    .local v3, "event":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2940
    invoke-virtual {p1, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2941
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 2942
    return-void

    .line 2944
    .end local v3    # "event":Landroid/view/MotionEvent;
    .end local v12    # "now":J
    :cond_1
    move-object v0, v1

    .line 2945
    move-object v1, v2

    .line 2946
    .end local v2    # "next":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_0

    .line 2947
    :cond_2
    return-void
.end method

.method private clearCachedLayoutMode()V
    .locals 1

    .line 4968
    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4969
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 4971
    :cond_0
    return-void
.end method

.method private clearTouchTargets()V
    .locals 2

    .line 2836
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2837
    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v0, :cond_1

    .line 2839
    :cond_0
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2840
    .local v1, "next":Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v0}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2841
    move-object v0, v1

    .line 2842
    .end local v1    # "next":Landroid/view/ViewGroup$TouchTarget;
    if-nez v0, :cond_0

    .line 2843
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2845
    :cond_1
    return-void
.end method

.method private dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "child"    # Landroid/view/View;

    .line 2013
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2014
    invoke-direct {p0, p1, p3}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2015
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p3, v0, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    .line 2016
    .local v1, "pointerIcon":Landroid/view/PointerIcon;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2017
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_0

    .line 2018
    .end local v1    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2019
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2020
    .local v1, "offsetY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2021
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v2

    .line 2022
    .local v2, "pointerIcon":Landroid/view/PointerIcon;
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2024
    .end local v0    # "offsetX":F
    .end local v1    # "offsetY":F
    move-object v1, v2

    .end local v2    # "pointerIcon":Landroid/view/PointerIcon;
    .local v1, "pointerIcon":Landroid/view/PointerIcon;
    :goto_0
    return-object v1
.end method

.method private dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 2343
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2344
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2345
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2, v0}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2346
    .local v1, "result":Z
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2347
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_0

    .line 2348
    .end local v1    # "result":Z
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2349
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2350
    .local v1, "offsetY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2351
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2352
    .local v2, "result":Z
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2354
    .end local v0    # "offsetX":F
    .end local v1    # "offsetY":F
    move v1, v2

    .end local v2    # "result":Z
    .local v1, "result":Z
    :goto_0
    return v1
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 2510
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2511
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2512
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2513
    .local v1, "handled":Z
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2514
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_0

    .line 2515
    .end local v1    # "handled":Z
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2516
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2517
    .local v1, "offsetY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2518
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2519
    .local v2, "handled":Z
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2521
    .end local v0    # "offsetX":F
    .end local v1    # "offsetY":F
    move v1, v2

    .end local v2    # "handled":Z
    .local v1, "handled":Z
    :goto_0
    return v1
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "cancel"    # Z
    .param p3, "child"    # Landroid/view/View;
    .param p4, "desiredPointerIdBits"    # I

    .line 3007
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3008
    .local v0, "oldAction":I
    const/4 v1, 0x3

    if-nez p2, :cond_8

    if-ne v0, v1, :cond_0

    goto :goto_4

    .line 3020
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 3021
    .local v1, "oldPointerIdBits":I
    and-int v2, v1, p4

    .line 3025
    .local v2, "newPointerIdBits":I
    if-nez v2, :cond_1

    .line 3026
    const/4 v3, 0x0

    return v3

    .line 3034
    :cond_1
    if-ne v2, v1, :cond_5

    .line 3035
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 3049
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_2

    .line 3036
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_3
    :goto_0
    if-nez p3, :cond_4

    .line 3037
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .local v3, "handled":Z
    goto :goto_1

    .line 3039
    .end local v3    # "handled":Z
    :cond_4
    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v4, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 3040
    .local v3, "offsetX":F
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v5, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 3041
    .local v4, "offsetY":F
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3043
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 3045
    .local v5, "handled":Z
    neg-float v6, v3

    neg-float v7, v4

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3047
    .end local v3    # "offsetX":F
    .end local v4    # "offsetY":F
    move v3, v5

    .end local v5    # "handled":Z
    .local v3, "handled":Z
    :goto_1
    return v3

    .line 3051
    .end local v3    # "handled":Z
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v3

    .line 3055
    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    :goto_2
    if-nez p3, :cond_6

    .line 3056
    invoke-super {p0, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .local v4, "handled":Z
    goto :goto_3

    .line 3058
    .end local v4    # "handled":Z
    :cond_6
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v5, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 3059
    .local v4, "offsetX":F
    iget v5, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v6, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 3060
    .local v5, "offsetY":F
    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3061
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_7

    .line 3062
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 3065
    :cond_7
    invoke-virtual {p3, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 3069
    .end local v5    # "offsetY":F
    .local v4, "handled":Z
    :goto_3
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 3070
    return v4

    .line 3009
    .end local v1    # "oldPointerIdBits":I
    .end local v2    # "newPointerIdBits":I
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    .end local v4    # "handled":Z
    :cond_8
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3010
    if-nez p3, :cond_9

    .line 3011
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_5

    .line 3013
    .end local v1    # "handled":Z
    :cond_9
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3015
    .restart local v1    # "handled":Z
    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3016
    return v1
.end method

.method private static drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .locals 7
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "lw"    # I

    .line 3970
    add-int v4, p2, p4

    invoke-static {p5}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3971
    invoke-static {p4}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v5, p2, v0

    add-int v6, p3, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3972
    return-void
.end method

.method private static drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .line 8739
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    if-nez v0, :cond_0

    .line 8741
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    .line 8744
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x0

    int-to-float v2, p2

    aput v2, v0, v1

    .line 8745
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x1

    int-to-float v2, p3

    aput v2, v0, v1

    .line 8746
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x2

    int-to-float v2, p4

    aput v2, v0, v1

    .line 8747
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x3

    int-to-float v2, p3

    aput v2, v0, v1

    .line 8749
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x4

    int-to-float v2, p4

    aput v2, v0, v1

    .line 8750
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x5

    int-to-float v2, p3

    aput v2, v0, v1

    .line 8751
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x6

    int-to-float v2, p4

    aput v2, v0, v1

    .line 8752
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x7

    int-to-float v2, p5

    aput v2, v0, v1

    .line 8754
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x8

    int-to-float v2, p4

    aput v2, v0, v1

    .line 8755
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x9

    int-to-float v2, p5

    aput v2, v0, v1

    .line 8756
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xa

    int-to-float v2, p2

    aput v2, v0, v1

    .line 8757
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xb

    int-to-float v2, p5

    aput v2, v0, v1

    .line 8759
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xc

    int-to-float v2, p2

    aput v2, v0, v1

    .line 8760
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xd

    int-to-float v2, p5

    aput v2, v0, v1

    .line 8761
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xe

    int-to-float v2, p2

    aput v2, v0, v1

    .line 8762
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xf

    int-to-float v2, p3

    aput v2, v0, v1

    .line 8764
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 8765
    return-void
.end method

.method private static drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V
    .locals 15
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "lineLength"    # I
    .param p7, "lineWidth"    # I

    move/from16 v7, p6

    .line 3976
    move-object v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p1

    move/from16 v3, p2

    move v4, v7

    move v5, v7

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3977
    neg-int v5, v7

    move/from16 v3, p4

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3978
    neg-int v4, v7

    move/from16 v2, p3

    move/from16 v3, p2

    move v5, v7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3979
    neg-int v12, v7

    neg-int v13, v7

    move-object v8, p0

    move-object/from16 v9, p5

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v14, p7

    invoke-static/range {v8 .. v14}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 3980
    return-void
.end method

.method private exitHoverTargets()V
    .locals 11

    .line 2233
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_1

    .line 2234
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2235
    .local v9, "now":J
    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2237
    .local v0, "event":Landroid/view/MotionEvent;
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2238
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2239
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2241
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v9    # "now":J
    :cond_1
    return-void
.end method

.method private exitTooltipHoverTargets()V
    .locals 11

    .line 2358
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2359
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2360
    .local v9, "now":J
    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2362
    .local v0, "event":Landroid/view/MotionEvent;
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2363
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2364
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2366
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v9    # "now":J
    :cond_1
    return-void
.end method

.method private static fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 10
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x2"    # I
    .param p2, "y2"    # I
    .param p3, "x3"    # I
    .param p4, "y3"    # I
    .param p5, "dx1"    # I
    .param p6, "dy1"    # I
    .param p7, "dx2"    # I
    .param p8, "dy2"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 3985
    sub-int v6, p1, p5

    .line 3986
    .local v6, "x1":I
    sub-int v7, p2, p6

    .line 3988
    .local v7, "y1":I
    add-int v8, p3, p7

    .line 3989
    .local v8, "x4":I
    add-int v9, p4, p8

    .line 3991
    .local v9, "y4":I
    move-object v0, p0

    move-object/from16 v1, p9

    move v2, v6

    move v3, v7

    move v4, v8

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3992
    move v3, p2

    move v4, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3993
    move v2, p3

    move v4, v8

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3994
    move v2, v6

    move v3, p4

    move v5, v9

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 3995
    return-void
.end method

.method private static fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .line 3954
    if-eq p2, p4, :cond_2

    if-eq p3, p5, :cond_2

    .line 3955
    if-le p2, p4, :cond_0

    .line 3956
    move v0, p2

    .local v0, "tmp":I
    move p2, p4

    move p4, v0

    .line 3958
    .end local v0    # "tmp":I
    :cond_0
    if-le p3, p5, :cond_1

    .line 3959
    move v0, p3

    .restart local v0    # "tmp":I
    move p3, p5

    move p5, v0

    .line 3961
    .end local v0    # "tmp":I
    :cond_1
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3963
    :cond_2
    return-void
.end method

.method private findChildWithAccessibilityFocus()Landroid/view/View;
    .locals 5

    .line 2783
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2784
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2785
    return-object v1

    .line 2788
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v2

    .line 2789
    .local v2, "current":Landroid/view/View;
    if-nez v2, :cond_1

    .line 2790
    return-object v1

    .line 2793
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2794
    .local v3, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_3

    .line 2795
    if-ne v3, p0, :cond_2

    .line 2796
    return-object v2

    .line 2798
    :cond_2
    move-object v2, v3

    check-cast v2, Landroid/view/View;

    .line 2799
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    .line 2802
    :cond_3
    return-object v1
.end method

.method private getAndVerifyPreorderedIndex(IIZ)I
    .locals 4
    .param p1, "childrenCount"    # I
    .param p2, "i"    # I
    .param p3, "customOrder"    # Z

    .line 2029
    if-eqz p3, :cond_1

    .line 2030
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 2031
    .local v0, "childIndex1":I
    if-ge v0, p1, :cond_0

    .line 2036
    nop

    .line 2037
    .local v0, "childIndex":I
    goto :goto_0

    .line 2032
    .local v0, "childIndex1":I
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChildDrawingOrder() returned invalid index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (child count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2038
    .end local v0    # "childIndex1":I
    :cond_1
    move v0, p2

    .line 2040
    .local v0, "childIndex":I
    :goto_0
    return v0
.end method

.method private static getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p1, "children"    # [Landroid/view/View;
    .param p2, "childIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;[",
            "Landroid/view/View;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 3636
    .local p0, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_1

    .line 3637
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3638
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 3639
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid preorderedList contained null child at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3643
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    aget-object v0, p1, p2

    .line 3645
    .restart local v0    # "child":Landroid/view/View;
    :goto_0
    return-object v0
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9
    .param p0, "spec"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I

    .line 6791
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 6792
    .local v0, "specMode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 6794
    .local v1, "specSize":I
    sub-int v2, v1, p1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6796
    .local v2, "size":I
    const/4 v4, 0x0

    .line 6797
    .local v4, "resultSize":I
    const/4 v5, 0x0

    .line 6799
    .local v5, "resultMode":I
    const/high16 v6, -0x80000000

    const/4 v7, -0x2

    const/4 v8, -0x1

    if-eq v0, v6, :cond_8

    if-eqz v0, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v3, :cond_0

    goto :goto_2

    .line 6802
    :cond_0
    if-ltz p2, :cond_1

    .line 6803
    move v4, p2

    .line 6804
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_2

    .line 6805
    :cond_1
    if-ne p2, v8, :cond_2

    .line 6807
    move v4, v2

    .line 6808
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_2

    .line 6809
    :cond_2
    if-ne p2, v7, :cond_b

    .line 6812
    move v4, v2

    .line 6813
    const/high16 v5, -0x80000000

    goto :goto_2

    .line 6838
    :cond_3
    if-ltz p2, :cond_4

    .line 6840
    move v4, p2

    .line 6841
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_2

    .line 6842
    :cond_4
    if-ne p2, v8, :cond_6

    .line 6845
    sget-boolean v6, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v6, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    move v4, v3

    .line 6846
    const/4 v5, 0x0

    goto :goto_2

    .line 6847
    :cond_6
    if-ne p2, v7, :cond_b

    .line 6850
    sget-boolean v6, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    move v3, v2

    :goto_1
    move v4, v3

    .line 6851
    const/4 v5, 0x0

    goto :goto_2

    .line 6819
    :cond_8
    if-ltz p2, :cond_9

    .line 6821
    move v4, p2

    .line 6822
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_2

    .line 6823
    :cond_9
    if-ne p2, v8, :cond_a

    .line 6826
    move v4, v2

    .line 6827
    const/high16 v5, -0x80000000

    goto :goto_2

    .line 6828
    :cond_a
    if-ne p2, v7, :cond_b

    .line 6831
    move v4, v2

    .line 6832
    const/high16 v5, -0x80000000

    .line 6856
    :cond_b
    :goto_2
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3
.end method

.method private getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFill;
    .locals 1
    .param p1, "flags"    # I

    .line 3606
    invoke-static {}, Landroid/view/ViewGroup$ChildListForAutoFill;->obtain()Landroid/view/ViewGroup$ChildListForAutoFill;

    move-result-object v0

    .line 3607
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAutoFill;
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    .line 3608
    return-object v0
.end method

.method private getLocalPoint()Landroid/graphics/PointF;
    .locals 1

    .line 1621
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 1622
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method private getTempPoint()[F
    .locals 1

    .line 2959
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    if-nez v0, :cond_0

    .line 2960
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    .line 2962
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    return-object v0
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 2878
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v0, :cond_1

    .line 2879
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 2880
    return-object v0

    .line 2878
    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 2883
    .end local v0    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 2534
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2535
    .local v0, "offsetX":F
    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2536
    .local v1, "offsetY":F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 2537
    .local v2, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2538
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2539
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2541
    :cond_0
    return-object v2
.end method

.method private hasBooleanFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 6432
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasChildWithZ()Z
    .locals 4

    .line 4234
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v2, :cond_1

    .line 4235
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4234
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4237
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 693
    sget-object v0, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 696
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 697
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 698
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 699
    .local v4, "attr":I
    const/4 v5, -0x1

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    .end local v4    # "attr":I
    goto/16 :goto_1

    .line 743
    .restart local v4    # "attr":I
    :pswitch_0
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    .end local v4    # "attr":I
    goto/16 :goto_1

    .line 740
    .restart local v4    # "attr":I
    :pswitch_1
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 741
    goto/16 :goto_1

    .line 737
    :pswitch_2
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 738
    goto :goto_1

    .line 731
    :pswitch_3
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 732
    .local v5, "animateLayoutChanges":Z
    if-eqz v5, :cond_0

    .line 733
    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    .line 728
    .end local v5    # "animateLayoutChanges":Z
    :pswitch_4
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 729
    goto :goto_1

    .line 725
    :pswitch_5
    sget-object v5, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 726
    goto :goto_1

    .line 713
    :pswitch_6
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 714
    goto :goto_1

    .line 716
    :pswitch_7
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 717
    goto :goto_1

    .line 710
    :pswitch_8
    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    .line 711
    goto :goto_1

    .line 707
    :pswitch_9
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    .line 708
    goto :goto_1

    .line 719
    :pswitch_a
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 720
    .local v5, "id":I
    if-lez v5, :cond_0

    .line 721
    iget-object v6, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    .line 704
    .end local v5    # "id":I
    :pswitch_b
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 705
    goto :goto_1

    .line 701
    :pswitch_c
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 702
    nop

    .line 697
    .end local v4    # "attr":I
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 748
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 749
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private initViewGroup()V
    .locals 3

    .line 670
    invoke-virtual {p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    const/16 v0, 0x80

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 673
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 674
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 675
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 676
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 677
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 679
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 680
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 683
    :cond_1
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 685
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 686
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 688
    iput v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 689
    return-void
.end method

.method private notifyAnimationListener()V
    .locals 1

    .line 4278
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4279
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4281
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 4282
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    .line 4288
    .local v0, "end":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 4291
    .end local v0    # "end":Ljava/lang/Runnable;
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4292
    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 2449
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_0

    .line 2450
    return-object p0

    .line 2452
    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private populateChildrenForAutofill(Ljava/util/ArrayList;I)V
    .locals 7
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 3613
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3614
    .local v0, "childrenCount":I
    if-gtz v0, :cond_0

    .line 3615
    return-void

    .line 3617
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3618
    .local v1, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3619
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 3620
    .local v3, "customOrder":Z
    :goto_0
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 3621
    invoke-direct {p0, v0, v2, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v4

    .line 3622
    .local v4, "childIndex":I
    if-nez v1, :cond_2

    .line 3623
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3624
    .local v5, "child":Landroid/view/View;
    :goto_2
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_4

    .line 3625
    invoke-virtual {v5}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 3627
    :cond_3
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_5

    .line 3628
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {v6, p1, p2}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    .end local v4    # "childIndex":I
    .end local v5    # "child":Landroid/view/View;
    goto :goto_4

    .line 3626
    .restart local v4    # "childIndex":I
    .restart local v5    # "child":Landroid/view/View;
    :cond_4
    :goto_3
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3620
    .end local v4    # "childIndex":I
    .end local v5    # "child":Landroid/view/View;
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3631
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method private recreateChildDisplayList(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 4334
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 4335
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4336
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    .line 4337
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 4338
    return-void
.end method

.method private removeFromArray(I)V
    .locals 5
    .param p1, "index"    # I

    .line 5188
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5189
    .local v0, "children":[Landroid/view/View;
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5190
    :cond_0
    aget-object v1, v0, p1

    iput-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5192
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5193
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    if-ne p1, v3, :cond_2

    .line 5194
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v2, v0, v3

    goto :goto_0

    .line 5195
    :cond_2
    if-ltz p1, :cond_5

    if-ge p1, v1, :cond_5

    .line 5196
    add-int/lit8 v3, p1, 0x1

    sub-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5197
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v2, v0, v3

    .line 5201
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_3

    .line 5202
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 5203
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1

    .line 5204
    :cond_3
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-le v2, p1, :cond_4

    .line 5205
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 5207
    :cond_4
    :goto_1
    return-void

    .line 5199
    :cond_5
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private removeFromArray(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5211
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5212
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5214
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5215
    add-int v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5217
    .local v2, "end":I
    if-ne p1, v2, :cond_0

    .line 5218
    return-void

    .line 5221
    :cond_0
    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 5222
    move v4, p1

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 5223
    aget-object v5, v0, v4

    iput-object v3, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5224
    aput-object v3, v0, v4

    .line 5222
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5227
    .end local v4    # "i":I
    :cond_1
    move v4, p1

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 5228
    aget-object v5, v0, v4

    iput-object v3, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5227
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5233
    .end local v4    # "i":I
    :cond_2
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5235
    sub-int v4, v2, p1

    sub-int v4, v1, v4

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v1, :cond_3

    .line 5236
    aput-object v3, v0, v4

    .line 5235
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 5240
    .end local v4    # "i":I
    :cond_3
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v4, v2, p1

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5241
    return-void
.end method

.method private removePointersFromTouchTargets(I)V
    .locals 5
    .param p1, "pointerIdBits"    # I

    .line 2901
    const/4 v0, 0x0

    .line 2902
    .local v0, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2903
    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v1, :cond_2

    .line 2904
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2905
    .local v2, "next":Landroid/view/ViewGroup$TouchTarget;
    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 2906
    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    not-int v4, p1

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2907
    iget v3, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    .line 2908
    if-nez v0, :cond_0

    .line 2909
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 2911
    :cond_0
    iput-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2913
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2914
    move-object v1, v2

    .line 2915
    goto :goto_0

    .line 2918
    :cond_1
    move-object v0, v1

    .line 2919
    move-object v1, v2

    .line 2920
    .end local v2    # "next":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_0

    .line 2921
    :cond_2
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 5356
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 5357
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5360
    :cond_0
    const/4 v0, 0x0

    .line 5361
    .local v0, "clearChildFocus":Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_1

    .line 5362
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5363
    const/4 v0, 0x1

    .line 5365
    :cond_1
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p2, v1, :cond_2

    .line 5366
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5369
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5371
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5372
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5374
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5375
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 5377
    :cond_3
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_5

    .line 5378
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_1

    .line 5376
    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 5381
    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 5382
    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5385
    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5387
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 5389
    invoke-virtual {p2}, Landroid/view/View;->hasUnhandledKeyListener()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5390
    invoke-virtual {p0}, Landroid/view/ViewGroup;->decrementChildUnhandledKeyListeners()V

    .line 5393
    :cond_7
    iget-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p2, v1, :cond_8

    .line 5394
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5396
    :cond_8
    if-eqz v0, :cond_9

    .line 5397
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 5398
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v1

    if-nez v1, :cond_9

    .line 5399
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5403
    :cond_9
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5405
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_a

    .line 5406
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5409
    :cond_a
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_2

    :cond_b
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5410
    .local v1, "transientCount":I
    :goto_2
    nop

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_d

    .line 5411
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5412
    .local v3, "oldIndex":I
    if-ge p1, v3, :cond_c

    .line 5413
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5410
    .end local v3    # "oldIndex":I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5417
    .end local v2    # "i":I
    :cond_d
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_e

    .line 5418
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5420
    :cond_e
    return-void
.end method

.method private removeViewInternal(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 5347
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 5348
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 5349
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 5350
    const/4 v1, 0x1

    return v1

    .line 5352
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private removeViewsInternal(II)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5462
    add-int v0, p1, p2

    .line 5464
    .local v0, "end":I
    if-ltz p1, :cond_c

    if-ltz p2, :cond_c

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gt v0, v1, :cond_c

    .line 5468
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 5469
    .local v1, "focused":Landroid/view/View;
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 5470
    .local v2, "detach":Z
    :goto_0
    const/4 v4, 0x0

    .line 5471
    .local v4, "clearChildFocus":Z
    const/4 v5, 0x0

    .line 5473
    .local v5, "clearDefaultFocus":Landroid/view/View;
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5475
    .local v6, "children":[Landroid/view/View;
    move v7, v4

    move v4, p1

    .local v4, "i":I
    .local v7, "clearChildFocus":Z
    :goto_1
    if-ge v4, v0, :cond_9

    .line 5476
    aget-object v8, v6, v4

    .line 5478
    .local v8, "view":Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v9, :cond_1

    .line 5479
    iget-object v9, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v9, p0, v8}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5482
    :cond_1
    if-ne v8, v1, :cond_2

    .line 5483
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5484
    const/4 v7, 0x1

    .line 5486
    :cond_2
    iget-object v9, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne v8, v9, :cond_3

    .line 5487
    move-object v5, v8

    .line 5489
    :cond_3
    iget-object v9, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne v8, v9, :cond_4

    .line 5490
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5493
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5495
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5496
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5498
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_6

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5499
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    .line 5501
    :cond_5
    if-eqz v2, :cond_7

    .line 5502
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 5500
    :cond_6
    :goto_2
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 5505
    :cond_7
    :goto_3
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 5506
    invoke-virtual {p0, v8, v3}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5509
    :cond_8
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5511
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5475
    .end local v8    # "view":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5514
    .end local v4    # "i":I
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 5516
    if-eqz v5, :cond_a

    .line 5517
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5519
    :cond_a
    if-eqz v7, :cond_b

    .line 5520
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 5521
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v3

    if-nez v3, :cond_b

    .line 5522
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5525
    :cond_b
    return-void

    .line 5465
    .end local v1    # "focused":Landroid/view/View;
    .end local v2    # "detach":Z
    .end local v5    # "clearDefaultFocus":Landroid/view/View;
    .end local v6    # "children":[Landroid/view/View;
    .end local v7    # "clearChildFocus":Z
    :cond_c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method private static resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 2821
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2822
    return v0

    .line 2825
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 2826
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2827
    const/4 v0, 0x1

    return v0

    .line 2829
    :cond_1
    return v0
.end method

.method private resetTouchState()V
    .locals 2

    .line 2809
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2810
    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2811
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2812
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 2813
    return-void
.end method

.method private restoreFocusInClusterInternal(I)Z
    .locals 2
    .param p1, "direction"    # I

    .line 3335
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 3337
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3338
    const/4 v0, 0x1

    return v0

    .line 3340
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v0

    return v0
.end method

.method private setBooleanFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 6436
    if-eqz p2, :cond_0

    .line 6437
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 6439
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6441
    :goto_0
    return-void
.end method

.method private setLayoutMode(IZ)V
    .locals 1
    .param p1, "layoutMode"    # I
    .param p2, "explicitly"    # Z

    .line 6507
    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 6508
    const/high16 v0, 0x800000

    invoke-direct {p0, v0, p2}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6509
    return-void
.end method

.method private setTouchscreenBlocksFocusNoRefocus(Z)V
    .locals 2
    .param p1, "touchscreenBlocksFocus"    # Z

    .line 1372
    if-eqz p1, :cond_0

    .line 1373
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 1375
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1377
    :goto_0
    return-void
.end method

.method private static sign(I)I
    .locals 1
    .param p0, "x"    # I

    .line 3966
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private touchAccessibilityNodeProviderIfNeeded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 5151
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isAutofillCompatibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5152
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 5154
    :cond_0
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2376
    .local p1, "outChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2377
    return-void

    .line 2379
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v0

    .line 2381
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    .line 2382
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2383
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2384
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_2

    .line 2385
    invoke-virtual {v3}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2386
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2388
    :cond_1
    invoke-virtual {v3, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2382
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2393
    .end local v1    # "childrenCount":I
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2394
    nop

    .line 2395
    return-void

    .line 2393
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 10
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

    .line 1262
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1264
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    .line 1265
    .local v1, "descendantFocusability":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v2

    .line 1266
    .local v2, "blockFocusForTouchscreen":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 1268
    .local v3, "focusSelf":Z
    :goto_1
    const/high16 v5, 0x60000

    if-ne v1, v5, :cond_3

    .line 1269
    if-eqz v3, :cond_2

    .line 1270
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1272
    :cond_2
    return-void

    .line 1275
    :cond_3
    if-eqz v2, :cond_4

    .line 1276
    or-int/lit8 p3, p3, 0x1

    .line 1279
    :cond_4
    const/high16 v5, 0x20000

    if-ne v1, v5, :cond_5

    if-eqz v3, :cond_5

    .line 1280
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1283
    :cond_5
    const/4 v5, 0x0

    .line 1284
    .local v5, "count":I
    iget v6, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    new-array v6, v6, [Landroid/view/View;

    .line 1285
    .local v6, "children":[Landroid/view/View;
    move v7, v5

    move v5, v4

    .local v5, "i":I
    .local v7, "count":I
    :goto_2
    iget v8, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v5, v8, :cond_7

    .line 1286
    iget-object v8, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v8, v8, v5

    .line 1287
    .local v8, "child":Landroid/view/View;
    iget v9, v8, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v9, v9, 0xc

    if-nez v9, :cond_6

    .line 1288
    add-int/lit8 v9, v7, 0x1

    .local v9, "count":I
    aput-object v8, v6, v7

    .line 1285
    .end local v7    # "count":I
    .end local v8    # "child":Landroid/view/View;
    move v7, v9

    .end local v9    # "count":I
    .restart local v7    # "count":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1291
    .end local v5    # "i":I
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v5

    invoke-static {v6, v4, v7, p0, v5}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 1292
    nop

    .local v4, "i":I
    :goto_3
    if-ge v4, v7, :cond_8

    .line 1293
    aget-object v5, v6, v4

    invoke-virtual {v5, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1292
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1300
    .end local v4    # "i":I
    :cond_8
    const/high16 v4, 0x40000

    if-ne v1, v4, :cond_9

    if-eqz v3, :cond_9

    .line 1301
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v0, v4, :cond_9

    .line 1302
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1304
    :cond_9
    return-void
.end method

.method public addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    .locals 7
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1308
    .local p1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1310
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1313
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v1

    .line 1315
    .local v1, "blockedFocus":Z
    :try_start_0
    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 1316
    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 1319
    nop

    .line 1320
    .end local v1    # "blockedFocus":Z
    goto :goto_0

    .line 1318
    .restart local v1    # "blockedFocus":Z
    :catchall_0
    move-exception v2

    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    throw v2

    .line 1321
    .end local v1    # "blockedFocus":Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 1324
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1326
    return-void

    .line 1329
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v3, 0x60000

    if-ne v1, v3, :cond_2

    .line 1330
    return-void

    .line 1333
    :cond_2
    const/4 v1, 0x0

    .line 1334
    .local v1, "count":I
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    new-array v3, v3, [Landroid/view/View;

    .line 1335
    .local v3, "visibleChildren":[Landroid/view/View;
    move v4, v1

    move v1, v2

    .local v1, "i":I
    .local v4, "count":I
    :goto_1
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v5, :cond_4

    .line 1336
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v5, v5, v1

    .line 1337
    .local v5, "child":Landroid/view/View;
    iget v6, v5, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_3

    .line 1338
    add-int/lit8 v6, v4, 0x1

    .local v6, "count":I
    aput-object v5, v3, v4

    .line 1335
    .end local v4    # "count":I
    .end local v5    # "child":Landroid/view/View;
    move v4, v6

    .end local v6    # "count":I
    .restart local v4    # "count":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1341
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v1

    invoke-static {v3, v2, v4, p0, v1}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 1342
    nop

    .local v2, "i":I
    :goto_2
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-ge v1, v4, :cond_5

    .line 1343
    aget-object v2, v3, v1

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 1342
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 1345
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    .line 7202
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 1469
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1471
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1472
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1474
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1475
    aget-object v3, v1, v2

    .line 1476
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 1477
    invoke-virtual {v3, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1474
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1480
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public addTransientView(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 4683
    if-gez p2, :cond_0

    .line 4684
    return-void

    .line 4686
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v0, :cond_1

    .line 4687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 4688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 4690
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4691
    .local v0, "oldSize":I
    if-lez v0, :cond_4

    .line 4693
    const/4 v1, 0x0

    .local v1, "insertionIndex":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 4694
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 4695
    goto :goto_1

    .line 4693
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4698
    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4699
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4700
    .end local v1    # "insertionIndex":I
    goto :goto_2

    .line 4701
    :cond_4
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4702
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4704
    :goto_2
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4705
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 4706
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4707
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 4797
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 4798
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 4814
    if-eqz p1, :cond_2

    .line 4817
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4818
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 4819
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4820
    if-eqz v0, :cond_0

    goto :goto_0

    .line 4821
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4824
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4825
    return-void

    .line 4815
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 4838
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4839
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4840
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4841
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4842
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 4875
    if-eqz p1, :cond_0

    .line 4882
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4883
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4884
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 4885
    return-void

    .line 4876
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 4856
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4857
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5007
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .line 5025
    if-eqz p1, :cond_0

    .line 5028
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5029
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 5030
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5031
    const/4 v0, 0x1

    return v0

    .line 5026
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .line 5260
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 5262
    .local v0, "animationParams":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 5263
    new-instance v1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    invoke-direct {v1}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    move-object v0, v1

    .line 5264
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 5267
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 5268
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 5269
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5695
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 5697
    if-gez p2, :cond_0

    .line 5698
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5701
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 5703
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5704
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5707
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5709
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5710
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 5712
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 5713
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 5712
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchVisibilityAggregated(Z)Z

    .line 5714
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 5715
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1610
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1611
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1612
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 1613
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 1614
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1615
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1616
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1618
    :cond_0
    return-void
.end method

.method buildOrderedChildList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 4249
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4250
    .local v0, "childrenCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-direct {p0}, Landroid/view/ViewGroup;->hasChildWithZ()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 4252
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 4253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 4256
    :cond_1
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4257
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 4260
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v1

    .line 4261
    .local v1, "customOrder":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 4263
    invoke-direct {p0, v0, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v3

    .line 4264
    .local v3, "childIndex":I
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v4, v4, v3

    .line 4265
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getZ()F

    move-result v5

    .line 4268
    .local v5, "currentZ":F
    move v6, v2

    .line 4269
    .local v6, "insertIndex":I
    :goto_2
    if-lez v6, :cond_2

    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getZ()F

    move-result v7

    cmpl-float v7, v7, v5

    if-lez v7, :cond_2

    .line 4270
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 4272
    :cond_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4261
    .end local v3    # "childIndex":I
    .end local v4    # "nextChild":Landroid/view/View;
    .end local v5    # "currentZ":F
    .end local v6    # "insertIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4274
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    return-object v2

    .line 4250
    .end local v1    # "customOrder":Z
    :cond_4
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 2774
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected canAnimate()Z
    .locals 1

    .line 6231
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public captureTransitioningViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 7544
    .local p1, "transitioningViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 7545
    return-void

    .line 7547
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7548
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7550
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7551
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7552
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7553
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 7551
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7556
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 4899
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 7211
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 7212
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 7214
    :cond_0
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childHasTransientState"    # Z

    .line 1095
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v0

    .line 1096
    .local v0, "oldHasTransientState":Z
    if-eqz p2, :cond_0

    .line 1097
    iget v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    goto :goto_0

    .line 1099
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 1102
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v1

    .line 1103
    .local v1, "newHasTransientState":Z
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 1105
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, v1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    goto :goto_1

    .line 1106
    :catch_0
    move-exception v2

    .line 1107
    .local v2, "e":Ljava/lang/AbstractMethodError;
    const-string v3, "ViewGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not fully implement ViewParent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1111
    .end local v2    # "e":Ljava/lang/AbstractMethodError;
    :cond_1
    :goto_1
    return-void
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 5040
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5041
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1131
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 1134
    :cond_0
    return-void
.end method

.method clearDefaultFocus(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 847
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 848
    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    return-void

    .line 852
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 855
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_3

    .line 856
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    .line 857
    .local v1, "sibling":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 858
    iput-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 859
    return-void

    .line 860
    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 861
    iput-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 855
    .end local v1    # "sibling":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 865
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 866
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 868
    :cond_4
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 5

    .line 6865
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 6866
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_2

    .line 6867
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6868
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6869
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6870
    .local v3, "view":Landroid/view/View;
    iget-object v4, v3, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    .line 6871
    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6873
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 6868
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6875
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6876
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 6878
    .end local v1    # "count":I
    :cond_2
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .line 1141
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1142
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    .line 1144
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1145
    .local v0, "focused":Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1146
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1148
    .end local v0    # "focused":Landroid/view/View;
    :goto_0
    return-void
.end method

.method clearFocusedInCluster()V
    .locals 4

    .line 893
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findKeyboardNavigationCluster()Landroid/view/View;

    move-result-object v0

    .line 894
    .local v0, "top":Landroid/view/View;
    move-object v1, p0

    .line 896
    .local v1, "parent":Landroid/view/ViewParent;
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 897
    if-ne v1, v0, :cond_1

    .line 898
    goto :goto_0

    .line 900
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 901
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 902
    :goto_0
    return-void
.end method

.method clearFocusedInCluster(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 883
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 884
    return-void

    .line 886
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocusedInCluster()V

    .line 887
    return-void
.end method

.method computeOpticalInsets()Landroid/graphics/Insets;
    .locals 8

    .line 3932
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3933
    const/4 v0, 0x0

    .line 3934
    .local v0, "left":I
    const/4 v1, 0x0

    .line 3935
    .local v1, "top":I
    const/4 v2, 0x0

    .line 3936
    .local v2, "right":I
    const/4 v3, 0x0

    .line 3937
    .local v3, "bottom":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v4, v5, :cond_1

    .line 3938
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3939
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 3940
    invoke-virtual {v5}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v6

    .line 3941
    .local v6, "insets":Landroid/graphics/Insets;
    iget v7, v6, Landroid/graphics/Insets;->left:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3942
    iget v7, v6, Landroid/graphics/Insets;->top:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3943
    iget v7, v6, Landroid/graphics/Insets;->right:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3944
    iget v7, v6, Landroid/graphics/Insets;->bottom:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3937
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "insets":Landroid/graphics/Insets;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3947
    .end local v4    # "i":I
    :cond_1
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    return-object v4

    .line 3949
    .end local v0    # "left":I
    .end local v1    # "top":I
    .end local v2    # "right":I
    .end local v3    # "bottom":I
    :cond_2
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "canvasProvider"    # Landroid/view/ViewDebug$CanvasProvider;
    .param p2, "skipChildren"    # Z

    .line 3897
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3898
    .local v0, "count":I
    const/4 v1, 0x0

    .line 3900
    .local v1, "visibilities":[I
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 3901
    new-array v1, v0, [I

    .line 3902
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3903
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3904
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v1, v3

    .line 3905
    aget v5, v1, v3

    if-nez v5, :cond_0

    .line 3906
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/view/View;->mViewFlags:I

    .line 3902
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3913
    .end local v3    # "i":I
    :cond_1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->createSnapshot(Landroid/view/ViewDebug$CanvasProvider;Z)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3915
    if-eqz p2, :cond_2

    .line 3916
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3917
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3918
    .restart local v4    # "child":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    aget v6, v1, v2

    and-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/View;->mViewFlags:I

    .line 3916
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3913
    .end local v2    # "i":I
    :cond_2
    return-object v3

    .line 3915
    :catchall_0
    move-exception v3

    if-eqz p2, :cond_3

    .line 3916
    nop

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 3917
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3918
    .restart local v4    # "child":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    aget v6, v1, v2

    and-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/View;->mViewFlags:I

    .line 3916
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    :cond_3
    throw v3
.end method

.method protected debug(I)V
    .locals 4
    .param p1, "depth"    # I

    .line 6620
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 6623
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6624
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6625
    .local v0, "output":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mFocused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6626
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6627
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->debug(I)V

    .line 6629
    .end local v0    # "output":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 6630
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6631
    .restart local v0    # "output":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mDefaultFocus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6632
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6633
    iget-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->debug(I)V

    .line 6635
    .end local v0    # "output":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 6636
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6637
    .restart local v0    # "output":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mFocusedInCluster"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6638
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6639
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->debug(I)V

    .line 6641
    .end local v0    # "output":Ljava/lang/String;
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v0, :cond_3

    .line 6642
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 6643
    .restart local v0    # "output":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6644
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6646
    .end local v0    # "output":Ljava/lang/String;
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6647
    .local v0, "count":I
    const/4 v1, 0x0

    .line 6647
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 6648
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    .line 6649
    .local v2, "child":Landroid/view/View;
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->debug(I)V

    .line 6647
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6652
    .end local v1    # "i":I
    :cond_4
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v1, :cond_5

    .line 6653
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 6654
    .local v1, "output":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6655
    const-string v2, "View"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6657
    .end local v1    # "output":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method decrementChildUnhandledKeyListeners()V
    .locals 1

    .line 7587
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 7588
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    if-nez v0, :cond_0

    .line 7589
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 7590
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->decrementChildUnhandledKeyListeners()V

    .line 7593
    :cond_0
    return-void
.end method

.method protected destroyHardwareResources()V
    .locals 3

    .line 4988
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 4989
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4990
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4991
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->destroyHardwareResources()V

    .line 4990
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4993
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .locals 5

    .line 5797
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5798
    .local v0, "count":I
    if-gtz v0, :cond_0

    .line 5799
    return-void

    .line 5802
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5803
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5805
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 5806
    aget-object v3, v1, v2

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5807
    aput-object v4, v1, v2

    .line 5805
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5809
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected detachViewFromParent(I)V
    .locals 0
    .param p1, "index"    # I

    .line 5756
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 5757
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 5735
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 5736
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5778
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 5779
    return-void
.end method

.method public dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z
    .locals 6
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .line 1003
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1004
    return v1

    .line 1006
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1007
    .local v0, "childCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1008
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1009
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1010
    return v1

    .line 1007
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1013
    .end local v3    # "i":I
    :cond_2
    return v2
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 7095
    invoke-super {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 7096
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7097
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7098
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7099
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 7100
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7101
    goto :goto_1

    .line 7098
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7105
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object p1
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 6
    .param p1, "info"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .line 3409
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3410
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3411
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3413
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3414
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3415
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 3416
    aget-object v4, v1, v3

    .line 3417
    .local v4, "child":Landroid/view/View;
    nop

    .line 3418
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {p0, p2, v5}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v5

    .line 3417
    invoke-virtual {v4, p1, v5}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3415
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3420
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 3421
    .local v3, "transientCount":I
    :goto_1
    nop

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 3422
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3423
    .local v4, "view":Landroid/view/View;
    nop

    .line 3424
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {p0, p2, v5}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v5

    .line 3423
    invoke-virtual {v4, p1, v5}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3421
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3426
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method dispatchCancelPendingInputEvents()V
    .locals 4

    .line 4513
    invoke-super {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 4515
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4516
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4517
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4518
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 4517
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4520
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1948
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1950
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1951
    return v2

    .line 1953
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1955
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1956
    return v2

    .line 1959
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 5
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .line 1596
    and-int/lit8 v0, p2, 0xc

    if-nez v0, :cond_0

    .line 1597
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1598
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1599
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1600
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1601
    aget-object v3, v1, v2

    .line 1602
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1600
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1606
    .end local v0    # "count":I
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1578
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1579
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1580
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1581
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1582
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1581
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1584
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 5

    .line 3768
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 3771
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 3772
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitTooltipHoverTargets()V

    .line 3775
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 3778
    iput-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 3779
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 3780
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v2, :cond_0

    .line 3781
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    .line 3782
    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 3785
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3786
    .local v0, "count":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3787
    .local v2, "children":[Landroid/view/View;
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3788
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3787
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3790
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 3791
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 3792
    .local v3, "transientCount":I
    :goto_1
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_3

    .line 3793
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3794
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3792
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3796
    .end local v1    # "i":I
    :cond_3
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3797
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4
    .param p1, "hint"    # I

    .line 1497
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1498
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1499
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1500
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1501
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 1500
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1503
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 1627
    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1634
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1636
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 1642
    const/4 v0, 0x0

    .line 1643
    .local v0, "retval":Z
    iget v1, p1, Landroid/view/DragEvent;->mX:F

    .line 1644
    .local v1, "tx":F
    iget v2, p1, Landroid/view/DragEvent;->mY:F

    .line 1645
    .local v2, "ty":F
    iget-object v3, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1648
    .local v3, "td":Landroid/content/ClipData;
    invoke-direct {p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    move-result-object v4

    .line 1650
    .local v4, "localPoint":Landroid/graphics/PointF;
    iget v5, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    .line 1692
    :pswitch_0
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 1693
    .local v5, "childrenInterestedInDrag":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    if-eqz v5, :cond_2

    .line 1694
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1696
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1697
    const/4 v0, 0x1

    .line 1699
    .end local v9    # "child":Landroid/view/View;
    :cond_0
    goto :goto_0

    .line 1700
    :cond_1
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1702
    :cond_2
    iget-object v8, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v8, :cond_3

    .line 1703
    iget-object v8, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    .line 1704
    iput-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1707
    :cond_3
    iget-boolean v7, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v7, :cond_5

    .line 1708
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1709
    const/4 v0, 0x1

    .line 1711
    :cond_4
    iput-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 1713
    .end local v5    # "childrenInterestedInDrag":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    :cond_5
    goto/16 :goto_4

    .line 1718
    :pswitch_1
    iget v5, p1, Landroid/view/DragEvent;->mX:F

    iget v6, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {p0, v5, v6, v4}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v5

    .line 1720
    .local v5, "target":Landroid/view/View;
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eq v5, v6, :cond_9

    .line 1721
    sget-boolean v6, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v6, :cond_8

    .line 1726
    iget v6, p1, Landroid/view/DragEvent;->mAction:I

    .line 1729
    .local v6, "action":I
    const/4 v8, 0x0

    iput v8, p1, Landroid/view/DragEvent;->mX:F

    .line 1730
    iput v8, p1, Landroid/view/DragEvent;->mY:F

    .line 1731
    iput-object v7, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1733
    iget-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 1734
    const/4 v7, 0x6

    iput v7, p1, Landroid/view/DragEvent;->mAction:I

    .line 1735
    iget-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1738
    :cond_6
    if-eqz v5, :cond_7

    .line 1739
    const/4 v7, 0x5

    iput v7, p1, Landroid/view/DragEvent;->mAction:I

    .line 1740
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 1743
    :cond_7
    iput v6, p1, Landroid/view/DragEvent;->mAction:I

    .line 1744
    iput v1, p1, Landroid/view/DragEvent;->mX:F

    .line 1745
    iput v2, p1, Landroid/view/DragEvent;->mY:F

    .line 1746
    iput-object v3, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 1748
    .end local v6    # "action":I
    :cond_8
    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1751
    :cond_9
    if-nez v5, :cond_a

    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_a

    .line 1752
    move-object v5, p0

    .line 1756
    :cond_a
    if-eqz v5, :cond_13

    .line 1757
    if-eq v5, p0, :cond_d

    .line 1758
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iput v6, p1, Landroid/view/DragEvent;->mX:F

    .line 1759
    iget v6, v4, Landroid/graphics/PointF;->y:F

    iput v6, p1, Landroid/view/DragEvent;->mY:F

    .line 1761
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1763
    iput v1, p1, Landroid/view/DragEvent;->mX:F

    .line 1764
    iput v2, p1, Landroid/view/DragEvent;->mY:F

    .line 1766
    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_13

    .line 1768
    sget-boolean v6, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v6, :cond_b

    .line 1769
    move v6, v0

    .local v6, "eventWasConsumed":Z
    goto :goto_1

    .line 1771
    .end local v6    # "eventWasConsumed":Z
    :cond_b
    iget-boolean v6, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 1774
    .restart local v6    # "eventWasConsumed":Z
    :goto_1
    if-nez v6, :cond_c

    .line 1775
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1777
    .end local v6    # "eventWasConsumed":Z
    :cond_c
    goto :goto_4

    .line 1779
    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .end local v5    # "target":Landroid/view/View;
    goto :goto_4

    .line 1653
    :pswitch_2
    iput-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 1656
    invoke-static {p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1657
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    if-nez v5, :cond_e

    .line 1658
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    goto :goto_2

    .line 1660
    :cond_e
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1664
    :goto_2
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1665
    .local v5, "count":I
    iget-object v8, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1666
    .local v8, "children":[Landroid/view/View;
    nop

    .local v6, "i":I
    :goto_3
    if-ge v6, v5, :cond_10

    .line 1667
    aget-object v9, v8, v6

    .line 1668
    .restart local v9    # "child":Landroid/view/View;
    iget v10, v9, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v10, v10, -0x4

    iput v10, v9, Landroid/view/View;->mPrivateFlags2:I

    .line 1669
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_f

    .line 1670
    aget-object v10, v8, v6

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1671
    const/4 v0, 0x1

    .line 1666
    .end local v9    # "child":Landroid/view/View;
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1677
    .end local v6    # "i":I
    :cond_10
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    iput-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 1678
    iget-boolean v6, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v6, :cond_11

    .line 1679
    const/4 v0, 0x1

    .line 1682
    :cond_11
    if-nez v0, :cond_12

    .line 1685
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v6}, Landroid/view/DragEvent;->recycle()V

    .line 1686
    iput-object v7, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 1688
    .end local v5    # "count":I
    .end local v8    # "children":[Landroid/view/View;
    :cond_12
    nop

    .line 1785
    :cond_13
    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 4059
    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/ViewGroup;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->isRecordingFor(Ljava/lang/Object;)Z

    move-result v2

    .line 4060
    .local v2, "usingRenderNodeProperties":Z
    iget v3, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4061
    .local v3, "childrenCount":I
    iget-object v4, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4062
    .local v4, "children":[Landroid/view/View;
    iget v5, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4064
    .local v5, "flags":I
    and-int/lit8 v6, v5, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4065
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v6

    xor-int/2addr v6, v8

    .line 4066
    .local v6, "buildCache":Z
    move v9, v7

    .local v9, "i":I
    :goto_0
    if-ge v9, v3, :cond_1

    .line 4067
    aget-object v10, v4, v9

    .line 4068
    .local v10, "child":Landroid/view/View;
    iget v11, v10, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v11, v11, 0xc

    if-nez v11, :cond_0

    .line 4069
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 4070
    .local v11, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v10, v11, v9, v3}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 4071
    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 4066
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 4075
    .end local v9    # "i":I
    :cond_1
    iget-object v9, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4076
    .local v9, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4077
    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v10, v10, 0x80

    iput v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4080
    :cond_2
    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 4082
    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v10, v10, -0x9

    iput v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4083
    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v10, v10, -0x11

    iput v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4085
    iget-object v10, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v10, :cond_3

    .line 4086
    iget-object v10, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 4090
    .end local v6    # "buildCache":Z
    .end local v9    # "controller":Landroid/view/animation/LayoutAnimationController;
    :cond_3
    const/4 v6, 0x0

    .line 4091
    .local v6, "clipSaveCount":I
    and-int/lit8 v9, v5, 0x22

    const/16 v10, 0x22

    if-ne v9, v10, :cond_4

    move v9, v8

    goto :goto_1

    :cond_4
    move v9, v7

    .line 4092
    .local v9, "clipToPadding":Z
    :goto_1
    if-eqz v9, :cond_5

    .line 4093
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->save(I)I

    move-result v6

    .line 4094
    iget v10, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v11, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int/2addr v10, v11

    iget v11, v0, Landroid/view/ViewGroup;->mScrollY:I

    iget v12, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int/2addr v11, v12

    iget v12, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v13, v0, Landroid/view/ViewGroup;->mRight:I

    add-int/2addr v12, v13

    iget v13, v0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v12, v13

    iget v13, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v12, v13

    iget v13, v0, Landroid/view/ViewGroup;->mScrollY:I

    iget v14, v0, Landroid/view/ViewGroup;->mBottom:I

    add-int/2addr v13, v14

    iget v14, v0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v13, v14

    iget v14, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v13, v14

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4100
    :cond_5
    iget v10, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v10, v10, -0x41

    iput v10, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 4101
    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v10, v10, -0x5

    iput v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4103
    const/4 v10, 0x0

    .line 4104
    .local v10, "more":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v11

    .line 4106
    .local v11, "drawingTime":J
    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertReorderBarrier()V

    .line 4107
    :cond_6
    iget-object v13, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v13, :cond_7

    move v13, v7

    goto :goto_2

    :cond_7
    iget-object v13, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    .line 4108
    .local v13, "transientCount":I
    :goto_2
    if-eqz v13, :cond_8

    move v14, v7

    goto :goto_3

    :cond_8
    const/4 v14, -0x1

    .line 4111
    .local v14, "transientIndex":I
    :goto_3
    if-eqz v2, :cond_9

    .line 4112
    const/4 v15, 0x0

    goto :goto_4

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v15

    .line 4113
    .local v15, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_4
    if-nez v15, :cond_a

    .line 4114
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v16

    if-eqz v16, :cond_a

    move/from16 v16, v8

    goto :goto_5

    :cond_a
    move/from16 v16, v7

    :goto_5
    move/from16 v17, v16

    .line 4115
    .local v17, "customOrder":Z
    nop

    .local v7, "i":I
    :goto_6
    if-ge v7, v3, :cond_11

    .line 4116
    :goto_7
    if-ltz v14, :cond_e

    iget-object v8, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_e

    .line 4117
    iget-object v8, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 4118
    .local v8, "transientChild":Landroid/view/View;
    move/from16 v18, v5

    iget v5, v8, Landroid/view/View;->mViewFlags:I

    .end local v5    # "flags":I
    .local v18, "flags":I
    and-int/lit8 v5, v5, 0xc

    if-eqz v5, :cond_b

    .line 4119
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 4120
    :cond_b
    invoke-virtual {v0, v1, v8, v11, v12}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    or-int/2addr v5, v10

    .line 4122
    .end local v10    # "more":Z
    .local v5, "more":Z
    move v10, v5

    .end local v5    # "more":Z
    .restart local v10    # "more":Z
    :cond_c
    add-int/lit8 v14, v14, 0x1

    .line 4123
    if-lt v14, v13, :cond_d

    .line 4124
    const/4 v5, -0x1

    .line 4126
    .end local v8    # "transientChild":Landroid/view/View;
    .end local v14    # "transientIndex":I
    .local v5, "transientIndex":I
    move v14, v5

    .line 4116
    .end local v5    # "transientIndex":I
    .restart local v14    # "transientIndex":I
    :cond_d
    move/from16 v5, v18

    const/4 v8, 0x1

    goto :goto_7

    .line 4128
    .end local v18    # "flags":I
    .local v5, "flags":I
    :cond_e
    move/from16 v18, v5

    .end local v5    # "flags":I
    .restart local v18    # "flags":I
    move/from16 v5, v17

    invoke-direct {v0, v3, v7, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v8

    .line 4129
    .end local v17    # "customOrder":Z
    .local v5, "customOrder":Z
    .local v8, "childIndex":I
    move/from16 v19, v3

    invoke-static {v15, v4, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 4130
    .local v3, "child":Landroid/view/View;
    .local v19, "childrenCount":I
    move-object/from16 v20, v4

    iget v4, v3, Landroid/view/View;->mViewFlags:I

    .end local v4    # "children":[Landroid/view/View;
    .local v20, "children":[Landroid/view/View;
    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 4131
    :cond_f
    invoke-virtual {v0, v1, v3, v11, v12}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    or-int v3, v10, v4

    .line 4115
    .end local v8    # "childIndex":I
    .end local v10    # "more":Z
    .local v3, "more":Z
    move v10, v3

    .end local v3    # "more":Z
    .restart local v10    # "more":Z
    :cond_10
    add-int/lit8 v7, v7, 0x1

    move/from16 v17, v5

    move/from16 v5, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    const/4 v8, 0x1

    goto :goto_6

    .line 4134
    .end local v7    # "i":I
    .end local v18    # "flags":I
    .end local v19    # "childrenCount":I
    .end local v20    # "children":[Landroid/view/View;
    .local v3, "childrenCount":I
    .restart local v4    # "children":[Landroid/view/View;
    .local v5, "flags":I
    .restart local v17    # "customOrder":Z
    :cond_11
    move/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v18, v5

    move/from16 v5, v17

    .end local v3    # "childrenCount":I
    .end local v4    # "children":[Landroid/view/View;
    .end local v17    # "customOrder":Z
    .local v5, "customOrder":Z
    .restart local v18    # "flags":I
    .restart local v19    # "childrenCount":I
    .restart local v20    # "children":[Landroid/view/View;
    :goto_8
    if-ltz v14, :cond_15

    .line 4136
    iget-object v3, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4137
    .local v3, "transientChild":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_12

    .line 4138
    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 4139
    :cond_12
    invoke-virtual {v0, v1, v3, v11, v12}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    or-int/2addr v4, v10

    .line 4141
    .end local v10    # "more":Z
    .local v4, "more":Z
    move v10, v4

    .end local v4    # "more":Z
    .restart local v10    # "more":Z
    :cond_13
    add-int/lit8 v14, v14, 0x1

    .line 4142
    if-lt v14, v13, :cond_14

    .line 4143
    goto :goto_9

    .line 4145
    .end local v3    # "transientChild":Landroid/view/View;
    :cond_14
    goto :goto_8

    .line 4146
    :cond_15
    :goto_9
    if-eqz v15, :cond_16

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 4149
    :cond_16
    iget-object v3, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_17

    .line 4150
    iget-object v3, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4151
    .local v3, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    .line 4153
    .local v4, "disappearingCount":I
    move v7, v4

    .restart local v7    # "i":I
    :goto_a
    if-ltz v7, :cond_17

    .line 4154
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 4155
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v0, v1, v8, v11, v12}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v16

    or-int v10, v10, v16

    .line 4153
    .end local v8    # "child":Landroid/view/View;
    add-int/lit8 v7, v7, -0x1

    goto :goto_a

    .line 4158
    .end local v3    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "disappearingCount":I
    .end local v7    # "i":I
    :cond_17
    if-eqz v2, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertInorderBarrier()V

    .line 4160
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 4161
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    .line 4164
    :cond_19
    if-eqz v9, :cond_1a

    .line 4165
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4169
    :cond_1a
    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4171
    .end local v18    # "flags":I
    .local v3, "flags":I
    and-int/lit8 v4, v3, 0x4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_1b

    .line 4172
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4175
    :cond_1b
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_1c

    and-int/lit16 v4, v3, 0x200

    if-nez v4, :cond_1c

    iget-object v4, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4176
    invoke-virtual {v4}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1c

    if-nez v10, :cond_1c

    .line 4180
    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4181
    new-instance v4, Landroid/view/ViewGroup$2;

    invoke-direct {v4, v0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 4187
    .local v4, "end":Ljava/lang/Runnable;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 4189
    .end local v4    # "end":Ljava/lang/Runnable;
    :cond_1c
    return-void
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 4489
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4490
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 4491
    return-void

    .line 4494
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4495
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 4496
    aget-object v4, v1, v3

    .line 4499
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isLongClickable()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v2

    .line 4500
    .local v5, "nonActionable":Z
    :goto_1
    iget v7, v4, Landroid/view/View;->mViewFlags:I

    const/high16 v8, 0x400000

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v2

    .line 4501
    .local v7, "duplicatesState":Z
    :goto_2
    if-nez v5, :cond_3

    if-eqz v7, :cond_4

    .line 4502
    :cond_3
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    move-result-object v8

    .line 4503
    .local v8, "point":[F
    aput p1, v8, v2

    .line 4504
    aput p2, v8, v6

    .line 4505
    invoke-virtual {p0, v8, v4}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4506
    aget v9, v8, v2

    aget v6, v8, v6

    invoke-virtual {v4, v9, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4495
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "nonActionable":Z
    .end local v7    # "duplicatesState":Z
    .end local v8    # "point":[F
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4509
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    .line 3399
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3400
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3401
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3402
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3403
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3405
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 3835
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 3836
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2490
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2492
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2493
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2495
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2497
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2458
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2459
    .local v0, "childrenCount":I
    if-eqz v0, :cond_5

    .line 2460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2461
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2463
    .local v2, "y":F
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2464
    .local v3, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 2465
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 2466
    .local v5, "customOrder":Z
    :goto_0
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2467
    .local v6, "children":[Landroid/view/View;
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_4

    .line 2468
    invoke-direct {p0, v0, v7, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v8

    .line 2469
    .local v8, "childIndex":I
    invoke-static {v3, v6, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 2470
    .local v9, "child":Landroid/view/View;
    invoke-static {v9}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    .line 2471
    invoke-virtual {p0, v1, v2, v9, v10}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2472
    goto :goto_2

    .line 2475
    :cond_1
    invoke-direct {p0, p1, v9}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2476
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2477
    :cond_2
    return v4

    .line 2467
    .end local v8    # "childIndex":I
    .end local v9    # "child":Landroid/view/View;
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 2480
    .end local v7    # "i":I
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2484
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v3    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "customOrder":Z
    .end local v6    # "children":[Landroid/view/View;
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected dispatchGetDisplayList()V
    .locals 7

    .line 4304
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4305
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4306
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 4307
    aget-object v4, v1, v3

    .line 4308
    .local v4, "child":Landroid/view/View;
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4309
    :cond_0
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4306
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4312
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 4313
    .local v3, "transientCount":I
    :goto_1
    move v4, v2

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_6

    .line 4314
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 4315
    .local v5, "child":Landroid/view/View;
    iget v6, v5, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 4316
    :cond_4
    invoke-direct {p0, v5}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4313
    .end local v5    # "child":Landroid/view/View;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4319
    .end local v4    # "i":I
    :cond_6
    iget-object v4, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v4, :cond_7

    .line 4320
    iget-object v4, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v4}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v4

    .line 4321
    .local v4, "overlayView":Landroid/view/View;
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4323
    .end local v4    # "overlayView":Landroid/view/View;
    :cond_7
    iget-object v4, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    .line 4324
    iget-object v4, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4325
    .local v4, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4326
    .local v5, "disappearingCount":I
    nop

    .local v2, "i":I
    :goto_3
    if-ge v2, v5, :cond_8

    .line 4327
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 4328
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 4326
    .end local v6    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4331
    .end local v2    # "i":I
    .end local v4    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "disappearingCount":I
    :cond_8
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 2046
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2049
    .local v2, "action":I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 2050
    .local v3, "interceptHover":Z
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2052
    move-object v4, v1

    .line 2053
    .local v4, "eventNoHistory":Landroid/view/MotionEvent;
    const/4 v5, 0x0

    .line 2057
    .local v5, "handled":Z
    iget-object v6, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2058
    .local v6, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    const/4 v7, 0x0

    iput-object v7, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2059
    const/16 v12, 0xa

    if-nez v3, :cond_c

    if-eq v2, v12, :cond_c

    .line 2060
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    .line 2061
    .local v13, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    .line 2062
    .local v14, "y":F
    iget v15, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2063
    .local v15, "childrenCount":I
    if-eqz v15, :cond_c

    .line 2064
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v8

    .line 2065
    .local v8, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v8, :cond_0

    .line 2066
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    move/from16 v17, v16

    .line 2067
    .local v17, "customOrder":Z
    iget-object v11, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2068
    .local v11, "children":[Landroid/view/View;
    const/16 v16, 0x0

    .line 2069
    .local v16, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v18, v15, -0x1

    move-object v12, v4

    move-object/from16 v4, v16

    .end local v16    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v4, "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v12, "eventNoHistory":Landroid/view/MotionEvent;
    .local v18, "i":I
    :goto_1
    move/from16 v19, v18

    .end local v18    # "i":I
    .local v19, "i":I
    move/from16 v9, v19

    if-ltz v9, :cond_b

    .line 2070
    .end local v19    # "i":I
    .local v9, "i":I
    move/from16 v10, v17

    invoke-direct {v0, v15, v9, v10}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v7

    .line 2072
    .end local v17    # "customOrder":Z
    .local v7, "childIndex":I
    .local v10, "customOrder":Z
    move/from16 v20, v3

    invoke-static {v8, v11, v7}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2074
    .local v3, "child":Landroid/view/View;
    .local v20, "interceptHover":Z
    invoke-static {v3}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 2075
    move/from16 v21, v7

    const/4 v7, 0x0

    invoke-virtual {v0, v13, v14, v3, v7}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v16

    .end local v7    # "childIndex":I
    .local v21, "childIndex":I
    if-nez v16, :cond_1

    .line 2076
    nop

    .line 2069
    move-object/from16 v22, v6

    move/from16 v23, v10

    goto/16 :goto_7

    .line 2081
    :cond_1
    move-object v7, v6

    .line 2083
    .local v7, "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    move-object/from16 v22, v6

    const/4 v7, 0x0

    .line 2084
    .local v6, "hoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v7, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .local v22, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :goto_2
    if-nez v6, :cond_2

    .line 2085
    invoke-static {v3}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v6

    .line 2086
    const/16 v16, 0x0

    .line 2087
    .local v16, "wasHovered":Z
    nop

    .line 2102
    move/from16 v23, v10

    const/4 v10, 0x0

    goto :goto_4

    .line 2090
    .end local v16    # "wasHovered":Z
    :cond_2
    move/from16 v23, v10

    iget-object v10, v6, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .end local v10    # "customOrder":Z
    .local v23, "customOrder":Z
    if-ne v10, v3, :cond_8

    .line 2091
    if-eqz v7, :cond_3

    .line 2092
    iget-object v10, v6, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    iput-object v10, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_3

    .line 2094
    :cond_3
    iget-object v10, v6, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2096
    .end local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v10, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    move-object/from16 v22, v10

    .end local v10    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    :goto_3
    const/4 v10, 0x0

    iput-object v10, v6, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2097
    const/16 v16, 0x1

    .line 2098
    .restart local v16    # "wasHovered":Z
    nop

    .line 2102
    .end local v7    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    :goto_4
    move/from16 v7, v16

    .line 2106
    .end local v16    # "wasHovered":Z
    .local v7, "wasHovered":Z
    if-eqz v4, :cond_4

    .line 2107
    iput-object v6, v4, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_5

    .line 2109
    :cond_4
    iput-object v6, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2111
    :goto_5
    move-object v4, v6

    .line 2114
    const/16 v10, 0x9

    if-ne v2, v10, :cond_5

    .line 2115
    if-nez v7, :cond_7

    .line 2117
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v10

    or-int/2addr v5, v10

    goto :goto_6

    .line 2120
    :cond_5
    const/4 v10, 0x7

    if-ne v2, v10, :cond_7

    .line 2121
    if-nez v7, :cond_6

    .line 2123
    invoke-static {v12}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 2124
    const/16 v10, 0x9

    invoke-virtual {v12, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2125
    invoke-direct {v0, v12, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v10

    or-int/2addr v5, v10

    .line 2127
    invoke-virtual {v12, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2129
    invoke-direct {v0, v12, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v10

    or-int/2addr v5, v10

    goto :goto_6

    .line 2133
    :cond_6
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v10

    or-int/2addr v5, v10

    .line 2136
    :cond_7
    :goto_6
    if-eqz v5, :cond_a

    .line 2137
    nop

    .line 2140
    move-object/from16 v6, v22

    goto :goto_8

    .line 2101
    .local v7, "predecessor":Landroid/view/ViewGroup$HoverTarget;
    :cond_8
    move-object v7, v6

    .line 2102
    iget-object v6, v6, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2083
    move/from16 v10, v23

    goto :goto_2

    .line 2069
    .end local v3    # "child":Landroid/view/View;
    .end local v7    # "predecessor":Landroid/view/ViewGroup$HoverTarget;
    .end local v21    # "childIndex":I
    .end local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v23    # "customOrder":Z
    .local v6, "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .local v10, "customOrder":Z
    :cond_9
    move-object/from16 v22, v6

    move/from16 v23, v10

    .end local v6    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v10    # "customOrder":Z
    .restart local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v23    # "customOrder":Z
    :cond_a
    :goto_7
    move-object/from16 v6, v22

    .end local v22    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .restart local v6    # "firstOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v18, v9, -0x1

    .end local v9    # "i":I
    .restart local v18    # "i":I
    move/from16 v3, v20

    move/from16 v17, v23

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2140
    .end local v18    # "i":I
    .end local v20    # "interceptHover":Z
    .end local v23    # "customOrder":Z
    .local v3, "interceptHover":Z
    .restart local v17    # "customOrder":Z
    :cond_b
    move/from16 v20, v3

    move-object/from16 v22, v6

    move/from16 v23, v17

    .end local v3    # "interceptHover":Z
    .end local v17    # "customOrder":Z
    .restart local v20    # "interceptHover":Z
    .restart local v23    # "customOrder":Z
    :goto_8
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .end local v4    # "lastHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    .end local v8    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v11    # "children":[Landroid/view/View;
    .end local v13    # "x":F
    .end local v14    # "y":F
    .end local v15    # "childrenCount":I
    .end local v23    # "customOrder":Z
    goto :goto_9

    .line 2145
    .end local v12    # "eventNoHistory":Landroid/view/MotionEvent;
    .end local v20    # "interceptHover":Z
    .restart local v3    # "interceptHover":Z
    .local v4, "eventNoHistory":Landroid/view/MotionEvent;
    :cond_c
    move/from16 v20, v3

    .end local v3    # "interceptHover":Z
    .restart local v20    # "interceptHover":Z
    move-object v12, v4

    .end local v4    # "eventNoHistory":Landroid/view/MotionEvent;
    .restart local v12    # "eventNoHistory":Landroid/view/MotionEvent;
    :cond_d
    :goto_9
    if-eqz v6, :cond_10

    .line 2146
    iget-object v3, v6, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 2149
    .local v3, "child":Landroid/view/View;
    const/16 v4, 0xa

    if-ne v2, v4, :cond_e

    .line 2151
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v4

    or-int/2addr v4, v5

    .line 2170
    .end local v5    # "handled":Z
    .local v4, "handled":Z
    move v5, v4

    goto :goto_a

    .line 2156
    .end local v4    # "handled":Z
    .restart local v5    # "handled":Z
    :cond_e
    const/4 v4, 0x7

    if-ne v2, v4, :cond_f

    .line 2157
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    move-result v4

    .line 2158
    .local v4, "hoverExitPending":Z
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    .line 2159
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 2161
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    .line 2163
    .end local v4    # "hoverExitPending":Z
    :cond_f
    invoke-static {v12}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2164
    .end local v12    # "eventNoHistory":Landroid/view/MotionEvent;
    .local v4, "eventNoHistory":Landroid/view/MotionEvent;
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2165
    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 2167
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2170
    move-object v12, v4

    .end local v4    # "eventNoHistory":Landroid/view/MotionEvent;
    .restart local v12    # "eventNoHistory":Landroid/view/MotionEvent;
    :goto_a
    iget-object v4, v6, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 2171
    .local v4, "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v6}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 2172
    move-object v6, v4

    .line 2173
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "nextOldHoverTarget":Landroid/view/ViewGroup$HoverTarget;
    goto :goto_9

    .line 2177
    :cond_10
    if-nez v5, :cond_11

    const/16 v3, 0xa

    if-eq v2, v3, :cond_11

    .line 2178
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v3, 0x1

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    .line 2179
    .local v3, "newHoveredSelf":Z
    :goto_b
    iget-boolean v4, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-ne v3, v4, :cond_12

    .line 2180
    if-eqz v3, :cond_17

    .line 2182
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v5, v4

    goto :goto_d

    .line 2185
    :cond_12
    iget-boolean v4, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-eqz v4, :cond_15

    .line 2187
    const/16 v4, 0xa

    if-ne v2, v4, :cond_13

    .line 2189
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v4, v5

    .line 2201
    .end local v5    # "handled":Z
    .local v4, "handled":Z
    move v5, v4

    goto :goto_c

    .line 2193
    .end local v4    # "handled":Z
    .restart local v5    # "handled":Z
    :cond_13
    const/4 v4, 0x7

    if-ne v2, v4, :cond_14

    .line 2194
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2196
    :cond_14
    invoke-static {v12}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 2197
    .end local v12    # "eventNoHistory":Landroid/view/MotionEvent;
    .local v4, "eventNoHistory":Landroid/view/MotionEvent;
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2198
    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2199
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2201
    move-object v12, v4

    .end local v4    # "eventNoHistory":Landroid/view/MotionEvent;
    .restart local v12    # "eventNoHistory":Landroid/view/MotionEvent;
    :goto_c
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 2204
    :cond_15
    if-eqz v3, :cond_17

    .line 2206
    const/16 v4, 0x9

    if-ne v2, v4, :cond_16

    .line 2208
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v5, v4

    .line 2209
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_d

    .line 2210
    :cond_16
    const/4 v4, 0x7

    if-ne v2, v4, :cond_17

    .line 2212
    invoke-static {v12}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 2213
    const/16 v4, 0x9

    invoke-virtual {v12, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2214
    invoke-super {v0, v12}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v4, v5

    .line 2215
    .end local v5    # "handled":Z
    .local v4, "handled":Z
    invoke-virtual {v12, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2217
    invoke-super {v0, v12}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    or-int/2addr v5, v4

    .line 2218
    .end local v4    # "handled":Z
    .restart local v5    # "handled":Z
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 2224
    :cond_17
    :goto_d
    if-eq v12, v1, :cond_18

    .line 2225
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 2229
    :cond_18
    return v5
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1888
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1889
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 1892
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v2, 0x12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 1894
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1895
    return v1

    .line 1897
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 1899
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1900
    return v1

    .line 1904
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_3

    .line 1905
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1907
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1876
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1878
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1879
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1881
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1883
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1912
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1914
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1915
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1917
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1919
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 3441
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 3443
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3444
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3445
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3446
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 3445
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3448
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchPointerCaptureChanged(Z)V
    .locals 4
    .param p1, "hasCapture"    # Z

    .line 1964
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 1966
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 1967
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1968
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1969
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1970
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 1969
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1972
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3453
    const/4 v0, 0x0

    .line 3454
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->includeForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3455
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 3456
    if-eqz v0, :cond_0

    .line 3457
    return v0

    .line 3461
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v1

    .line 3463
    .local v1, "children":Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3464
    .local v2, "childCount":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "handled":Z
    :goto_0
    if-ge v0, v2, :cond_2

    .line 3465
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3466
    .local v5, "child":Landroid/view/View;
    iget v6, v5, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_1

    .line 3467
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v6

    .line 3468
    if-eqz v4, :cond_1

    .line 3469
    nop

    .line 3474
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3469
    return v4

    .line 3464
    .end local v5    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3474
    .end local v0    # "i":I
    .end local v2    # "childCount":I
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 3475
    nop

    .line 3476
    return v3

    .line 3474
    .end local v4    # "handled":Z
    .local v0, "handled":Z
    :catchall_1
    move-exception v2

    move v4, v0

    move-object v0, v2

    .end local v0    # "handled":Z
    .restart local v4    # "handled":Z
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v0
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 5
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 3575
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 3577
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3578
    return-void

    .line 3581
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3582
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

    .line 3583
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchProvideAutofillStructure(): not laid out, ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " children of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3584
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3583
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    :cond_1
    return-void

    .line 3589
    :cond_2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFill;

    move-result-object v0

    .line 3590
    .local v0, "children":Landroid/view/ViewGroup$ChildListForAutoFill;
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFill;->size()I

    move-result v1

    .line 3591
    .local v1, "childrenCount":I
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3592
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 3593
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAutoFill;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3594
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v4

    .line 3595
    .local v4, "cstructure":Landroid/view/ViewStructure;
    invoke-virtual {v3, v4, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 3592
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "cstructure":Landroid/view/ViewStructure;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3597
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFill;->recycle()V

    .line 3598
    return-void
.end method

.method public dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 14
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .line 3486
    invoke-super {p0, p1}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 3487
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAssistBlocked()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 3490
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3491
    .local v0, "childrenCount":I
    if-gtz v0, :cond_1

    .line 3492
    return-void

    .line 3495
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3496
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2

    .line 3497
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchProvideStructure(): not laid out, ignoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " children of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3498
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3497
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    :cond_2
    return-void

    .line 3503
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3504
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3505
    .local v1, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    .line 3506
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_0

    :cond_4
    move v4, v2

    .line 3507
    .local v4, "customOrder":Z
    :goto_0
    move-object v5, v1

    move v1, v2

    .local v1, "i":I
    .local v5, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_1
    if-ge v1, v0, :cond_b

    .line 3510
    :try_start_0
    invoke-direct {p0, v0, v1, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3555
    .local v6, "childIndex":I
    nop

    .line 3556
    move v7, v6

    goto/16 :goto_6

    .line 3511
    .end local v6    # "childIndex":I
    :catch_0
    move-exception v6

    .line 3512
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    move v7, v1

    .line 3513
    .local v7, "childIndex":I
    iget-object v8, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x17

    if-ge v8, v9, :cond_a

    .line 3514
    const-string v8, "ViewGroup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad getChildDrawingOrder while collecting assist @ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3519
    const/4 v4, 0x0

    .line 3520
    if-lez v1, :cond_9

    .line 3527
    new-array v8, v0, [I

    .line 3528
    .local v8, "permutation":[I
    new-instance v9, Landroid/util/SparseBooleanArray;

    invoke-direct {v9}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3530
    .local v9, "usedIndices":Landroid/util/SparseBooleanArray;
    move v10, v2

    .local v10, "j":I
    :goto_2
    if-ge v10, v1, :cond_5

    .line 3531
    invoke-virtual {p0, v0, v10}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v11

    aput v11, v8, v10

    .line 3532
    aget v11, v8, v10

    invoke-virtual {v9, v11, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3530
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3536
    .end local v10    # "j":I
    :cond_5
    const/4 v10, 0x0

    .line 3537
    .local v10, "nextIndex":I
    move v11, v10

    move v10, v1

    .local v10, "j":I
    .local v11, "nextIndex":I
    :goto_3
    if-ge v10, v0, :cond_7

    .line 3538
    :goto_4
    invoke-virtual {v9, v11, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3539
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 3541
    :cond_6
    aput v11, v8, v10

    .line 3542
    add-int/lit8 v11, v11, 0x1

    .line 3537
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 3545
    .end local v10    # "j":I
    :cond_7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v10

    .line 3546
    move v10, v2

    .restart local v10    # "j":I
    :goto_5
    if-ge v10, v0, :cond_8

    .line 3547
    aget v12, v8, v10

    .line 3548
    .local v12, "index":I
    iget-object v13, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v13, v13, v12

    .line 3549
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3546
    .end local v12    # "index":I
    .end local v13    # "child":Landroid/view/View;
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 3551
    .end local v8    # "permutation":[I
    .end local v9    # "usedIndices":Landroid/util/SparseBooleanArray;
    .end local v10    # "j":I
    .end local v11    # "nextIndex":I
    :cond_8
    nop

    .line 3556
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    :goto_6
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v5, v6, v7}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 3558
    .local v6, "child":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v8

    .line 3559
    .local v8, "cstructure":Landroid/view/ViewStructure;
    invoke-virtual {v6, v8}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 3507
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childIndex":I
    .end local v8    # "cstructure":Landroid/view/ViewStructure;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 3553
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v7    # "childIndex":I
    :cond_a
    throw v6

    .line 3561
    .end local v1    # "i":I
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v7    # "childIndex":I
    :cond_b
    if-eqz v5, :cond_c

    .line 3562
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3564
    :cond_c
    return-void

    .line 3488
    .end local v0    # "childrenCount":I
    .end local v4    # "customOrder":Z
    .end local v5    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_d
    :goto_7
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 3840
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 3841
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3842
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3843
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3844
    aget-object v3, v1, v2

    .line 3845
    .local v3, "c":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 3846
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 3843
    .end local v3    # "c":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3849
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 3815
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 3816
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3817
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3818
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3819
    aget-object v3, v1, v2

    .line 3820
    .local v3, "c":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 3821
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 3818
    .end local v3    # "c":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3824
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .locals 4
    .param p1, "screenState"    # I

    .line 3430
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 3432
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3433
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3434
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3435
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 3434
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3437
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .locals 4
    .param p1, "activated"    # Z

    .line 4451
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4452
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4453
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4454
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 4453
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4456
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 5
    .param p1, "pressed"    # Z

    .line 4460
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4461
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4462
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4463
    aget-object v3, v0, v2

    .line 4467
    .local v3, "child":Landroid/view/View;
    if-eqz p1, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4468
    :cond_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    .line 4462
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4471
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    .line 4442
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4443
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4444
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4445
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 4444
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4447
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    .line 3384
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 3385
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3386
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3387
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3388
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 3387
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3390
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 4
    .param p1, "visible"    # I

    .line 1851
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1853
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1854
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1855
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1856
    aget-object v3, v1, v2

    .line 1857
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1855
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1859
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 3860
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 3861
    return-void
.end method

.method dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 2271
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2272
    .local v2, "action":I
    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2329
    :pswitch_0
    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2330
    iget-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2331
    iput-object v4, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    goto :goto_0

    .line 2332
    :cond_0
    iget-boolean v3, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v3, :cond_1

    .line 2333
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2334
    iput-boolean v5, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    goto :goto_0

    .line 2274
    :pswitch_1
    nop

    .line 2338
    :cond_1
    :goto_0
    return v5

    .line 2277
    :cond_2
    const/4 v3, 0x0

    .line 2280
    .local v3, "newTarget":Landroid/view/View;
    iget v6, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2281
    .local v6, "childrenCount":I
    const/4 v7, 0x1

    if-eqz v6, :cond_7

    .line 2282
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 2283
    .local v8, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 2285
    .local v9, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v10

    .line 2286
    .local v10, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v10, :cond_3

    .line 2287
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v7

    goto :goto_1

    :cond_3
    move v11, v5

    .line 2288
    .local v11, "customOrder":Z
    :goto_1
    iget-object v12, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2289
    .local v12, "children":[Landroid/view/View;
    add-int/lit8 v13, v6, -0x1

    .local v13, "i":I
    :goto_2
    if-ltz v13, :cond_6

    .line 2290
    nop

    .line 2291
    invoke-direct {v0, v6, v13, v11}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v14

    .line 2292
    .local v14, "childIndex":I
    nop

    .line 2293
    invoke-static {v10, v12, v14}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    .line 2294
    .local v15, "child":Landroid/view/View;
    invoke-static {v15}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 2295
    invoke-virtual {v0, v8, v9, v15, v4}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 2296
    goto :goto_3

    .line 2298
    :cond_4
    invoke-direct {v0, v1, v15}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 2299
    move-object v3, v15

    .line 2300
    goto :goto_4

    .line 2289
    .end local v14    # "childIndex":I
    .end local v15    # "child":Landroid/view/View;
    :cond_5
    :goto_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 2303
    .end local v13    # "i":I
    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2306
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v10    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v11    # "customOrder":Z
    .end local v12    # "children":[Landroid/view/View;
    :cond_7
    iget-object v4, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    const/16 v8, 0xa

    if-eq v4, v3, :cond_9

    .line 2307
    iget-object v4, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 2308
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2309
    iget-object v4, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2310
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2312
    :cond_8
    iput-object v3, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    .line 2315
    :cond_9
    iget-object v4, v0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v4, :cond_b

    .line 2316
    iget-boolean v4, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v4, :cond_a

    .line 2317
    iput-boolean v5, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    .line 2318
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2319
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2320
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2322
    :cond_a
    return v7

    .line 2325
    :cond_b
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    iput-boolean v4, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    .line 2326
    iget-boolean v4, v0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 2547
    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/ViewGroup;->mMagnifierListener:Landroid/view/ViewGroup$IMagnifierListener;

    if-eqz v2, :cond_0

    .line 2548
    iget-object v2, v0, Landroid/view/ViewGroup;->mMagnifierListener:Landroid/view/ViewGroup$IMagnifierListener;

    invoke-interface {v2, v1}, Landroid/view/ViewGroup$IMagnifierListener;->preTouchEvent(Landroid/view/MotionEvent;)V

    .line 2551
    :cond_0
    iget-object v2, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2552
    iget-object v2, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 2557
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAccessibilityFocusedViewOrHost()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2558
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2561
    :cond_2
    const/4 v2, 0x0

    .line 2562
    .local v2, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 2563
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 2564
    .local v5, "action":I
    and-int/lit16 v6, v5, 0xff

    .line 2567
    .local v6, "actionMasked":I
    if-nez v6, :cond_3

    .line 2571
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2572
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 2577
    :cond_3
    if-eqz v6, :cond_5

    iget-object v7, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v7, :cond_4

    goto :goto_0

    .line 2589
    :cond_4
    move v7, v3

    goto :goto_3

    .line 2579
    :cond_5
    :goto_0
    iget v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_6

    move v7, v3

    goto :goto_1

    :cond_6
    move v7, v4

    .line 2580
    .local v7, "disallowIntercept":Z
    :goto_1
    if-nez v7, :cond_7

    .line 2581
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 2582
    .local v8, "intercepted":Z
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_2

    .line 2584
    .end local v8    # "intercepted":Z
    :cond_7
    nop

    .end local v7    # "disallowIntercept":Z
    move v8, v4

    .restart local v8    # "intercepted":Z
    :goto_2
    move v7, v8

    .line 2586
    .end local v8    # "intercepted":Z
    .local v7, "intercepted":Z
    nop

    .line 2589
    :goto_3
    nop

    .line 2594
    if-nez v7, :cond_8

    iget-object v8, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v8, :cond_9

    .line 2595
    :cond_8
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2599
    :cond_9
    invoke-static/range {p0 .. p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v8, 0x3

    if-ne v6, v8, :cond_a

    goto :goto_4

    :cond_a
    move v8, v4

    goto :goto_5

    :cond_b
    :goto_4
    move v8, v3

    .line 2603
    .local v8, "canceled":Z
    :goto_5
    iget v9, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v10, 0x200000

    and-int/2addr v9, v10

    if-eqz v9, :cond_c

    move v9, v3

    goto :goto_6

    :cond_c
    move v9, v4

    .line 2604
    .local v9, "split":Z
    :goto_6
    const/4 v10, 0x0

    .line 2605
    .local v10, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    const/4 v11, 0x0

    .line 2606
    .local v11, "alreadyDispatchedToNewTouchTarget":Z
    const/4 v12, 0x7

    if-nez v8, :cond_20

    if-nez v7, :cond_20

    .line 2613
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 2614
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->findChildWithAccessibilityFocus()Landroid/view/View;

    move-result-object v15

    goto :goto_7

    :cond_d
    const/4 v15, 0x0

    .line 2616
    .local v15, "childWithAccessibilityFocus":Landroid/view/View;
    :goto_7
    if-eqz v6, :cond_10

    if-eqz v9, :cond_e

    const/4 v13, 0x5

    if-eq v6, v13, :cond_10

    :cond_e
    if-ne v6, v12, :cond_f

    goto :goto_8

    .line 2711
    .end local v15    # "childWithAccessibilityFocus":Landroid/view/View;
    :cond_f
    move/from16 v18, v2

    move/from16 v20, v5

    move/from16 v23, v11

    goto/16 :goto_15

    .line 2619
    .restart local v15    # "childWithAccessibilityFocus":Landroid/view/View;
    :cond_10
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    .line 2620
    .local v13, "actionIndex":I
    if-eqz v9, :cond_11

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    shl-int v16, v3, v16

    goto :goto_9

    .line 2621
    :cond_11
    const/16 v16, -0x1

    :goto_9
    move/from16 v17, v16

    .line 2625
    .local v17, "idBitsToAssign":I
    move/from16 v12, v17

    invoke-direct {v0, v12}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 2627
    .end local v17    # "idBitsToAssign":I
    .local v12, "idBitsToAssign":I
    iget v3, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2628
    .local v3, "childrenCount":I
    if-nez v10, :cond_1e

    if-eqz v3, :cond_1e

    .line 2629
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 2630
    .local v4, "x":F
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 2633
    .local v14, "y":F
    move/from16 v18, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2634
    .local v2, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v18, "handled":Z
    if-nez v2, :cond_12

    .line 2635
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v16

    if-eqz v16, :cond_12

    const/16 v16, 0x1

    goto :goto_a

    :cond_12
    const/16 v16, 0x0

    :goto_a
    move/from16 v19, v16

    .line 2636
    .local v19, "customOrder":Z
    move/from16 v20, v5

    iget-object v5, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2637
    .local v5, "children":[Landroid/view/View;
    .local v20, "action":I
    add-int/lit8 v16, v3, -0x1

    .local v16, "i":I
    :goto_b
    move/from16 v21, v16

    .end local v16    # "i":I
    .local v21, "i":I
    move-object/from16 v22, v10

    move/from16 v10, v21

    if-ltz v10, :cond_1c

    .line 2638
    .end local v21    # "i":I
    .local v10, "i":I
    .local v22, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    move/from16 v23, v11

    move/from16 v24, v13

    move/from16 v11, v19

    invoke-direct {v0, v3, v10, v11}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v13

    .line 2640
    .end local v19    # "customOrder":Z
    .local v11, "customOrder":Z
    .local v13, "childIndex":I
    .local v23, "alreadyDispatchedToNewTouchTarget":Z
    .local v24, "actionIndex":I
    move/from16 v25, v10

    invoke-static {v2, v5, v13}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 2647
    .local v10, "child":Landroid/view/View;
    .local v25, "i":I
    if-eqz v15, :cond_14

    .line 2648
    if-eq v15, v10, :cond_13

    .line 2649
    nop

    .line 2637
    move/from16 v27, v4

    move/from16 v26, v11

    move/from16 v28, v14

    move-object/from16 v10, v22

    move/from16 v21, v25

    const/4 v4, 0x0

    goto/16 :goto_11

    .line 2651
    :cond_13
    const/4 v15, 0x0

    .line 2652
    add-int/lit8 v21, v3, -0x1

    .end local v25    # "i":I
    .restart local v21    # "i":I
    goto :goto_c

    .line 2655
    .end local v21    # "i":I
    .restart local v25    # "i":I
    :cond_14
    move/from16 v21, v25

    .end local v25    # "i":I
    .restart local v21    # "i":I
    :goto_c
    invoke-static {v10}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 2656
    move/from16 v26, v11

    const/4 v11, 0x0

    invoke-virtual {v0, v4, v14, v10, v11}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v16

    .end local v11    # "customOrder":Z
    .local v26, "customOrder":Z
    if-nez v16, :cond_15

    .line 2657
    move/from16 v27, v4

    move/from16 v28, v14

    move-object/from16 v29, v15

    const/4 v4, 0x0

    goto/16 :goto_10

    .line 2661
    :cond_15
    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v11

    .line 2662
    .end local v22    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v11, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v11, :cond_16

    .line 2665
    move/from16 v27, v4

    iget v4, v11, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .end local v4    # "x":F
    .local v27, "x":F
    or-int/2addr v4, v12

    iput v4, v11, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2666
    nop

    .line 2695
    move-object/from16 v22, v11

    move/from16 v28, v14

    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v13    # "childIndex":I
    .end local v14    # "y":F
    .end local v21    # "i":I
    .restart local v22    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v28, "y":F
    :goto_d
    const/4 v4, 0x0

    goto/16 :goto_12

    .line 2669
    .end local v22    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v27    # "x":F
    .end local v28    # "y":F
    .restart local v4    # "x":F
    .restart local v10    # "child":Landroid/view/View;
    .restart local v11    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v13    # "childIndex":I
    .restart local v14    # "y":F
    .restart local v21    # "i":I
    :cond_16
    move/from16 v27, v4

    .end local v4    # "x":F
    .restart local v27    # "x":F
    invoke-static {v10}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2670
    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v10, v12}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 2672
    move/from16 v28, v14

    move-object/from16 v29, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v14

    .end local v14    # "y":F
    .end local v15    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v28    # "y":F
    .local v29, "childWithAccessibilityFocus":Landroid/view/View;
    iput-wide v14, v0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 2673
    if-eqz v2, :cond_18

    .line 2675
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_e
    if-ge v4, v3, :cond_19

    .line 2676
    aget-object v14, v5, v13

    iget-object v15, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v15, v15, v4

    if-ne v14, v15, :cond_17

    .line 2677
    iput v4, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 2678
    goto :goto_f

    .line 2675
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 2682
    .end local v4    # "j":I
    :cond_18
    iput v13, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 2684
    :cond_19
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 2685
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 2686
    invoke-direct {v0, v10, v12}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v4

    .line 2687
    .end local v11    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v4, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    const/4 v11, 0x1

    .line 2688
    .end local v23    # "alreadyDispatchedToNewTouchTarget":Z
    .local v11, "alreadyDispatchedToNewTouchTarget":Z
    nop

    .line 2695
    move-object/from16 v22, v4

    move/from16 v23, v11

    move-object/from16 v15, v29

    goto :goto_d

    .line 2693
    .end local v4    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v28    # "y":F
    .end local v29    # "childWithAccessibilityFocus":Landroid/view/View;
    .local v11, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v14    # "y":F
    .restart local v15    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v23    # "alreadyDispatchedToNewTouchTarget":Z
    :cond_1a
    move/from16 v28, v14

    move-object/from16 v29, v15

    .end local v14    # "y":F
    .end local v15    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v28    # "y":F
    .restart local v29    # "childWithAccessibilityFocus":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2637
    .end local v10    # "child":Landroid/view/View;
    .end local v13    # "childIndex":I
    move-object v10, v11

    goto :goto_11

    .line 2657
    .end local v26    # "customOrder":Z
    .end local v27    # "x":F
    .end local v28    # "y":F
    .end local v29    # "childWithAccessibilityFocus":Landroid/view/View;
    .local v4, "x":F
    .restart local v10    # "child":Landroid/view/View;
    .local v11, "customOrder":Z
    .restart local v13    # "childIndex":I
    .restart local v14    # "y":F
    .restart local v15    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v22    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_1b
    move/from16 v27, v4

    move/from16 v26, v11

    move/from16 v28, v14

    move-object/from16 v29, v15

    const/4 v4, 0x0

    .end local v4    # "x":F
    .end local v11    # "customOrder":Z
    .end local v14    # "y":F
    .end local v15    # "childWithAccessibilityFocus":Landroid/view/View;
    .restart local v26    # "customOrder":Z
    .restart local v27    # "x":F
    .restart local v28    # "y":F
    .restart local v29    # "childWithAccessibilityFocus":Landroid/view/View;
    :goto_10
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 2658
    nop

    .line 2637
    move-object/from16 v10, v22

    move-object/from16 v15, v29

    .end local v13    # "childIndex":I
    .end local v22    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v29    # "childWithAccessibilityFocus":Landroid/view/View;
    .local v10, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v15    # "childWithAccessibilityFocus":Landroid/view/View;
    :goto_11
    const/4 v11, -0x1

    add-int/lit8 v16, v21, -0x1

    .end local v21    # "i":I
    .restart local v16    # "i":I
    move/from16 v11, v23

    move/from16 v13, v24

    move/from16 v19, v26

    move/from16 v4, v27

    move/from16 v14, v28

    goto/16 :goto_b

    .line 2695
    .end local v10    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v16    # "i":I
    .end local v23    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v24    # "actionIndex":I
    .end local v26    # "customOrder":Z
    .end local v27    # "x":F
    .end local v28    # "y":F
    .restart local v4    # "x":F
    .local v11, "alreadyDispatchedToNewTouchTarget":Z
    .local v13, "actionIndex":I
    .restart local v14    # "y":F
    .restart local v19    # "customOrder":Z
    .restart local v22    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :cond_1c
    move/from16 v27, v4

    move/from16 v23, v11

    move/from16 v24, v13

    move/from16 v28, v14

    move/from16 v26, v19

    const/4 v4, 0x0

    .end local v4    # "x":F
    .end local v11    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v13    # "actionIndex":I
    .end local v14    # "y":F
    .end local v19    # "customOrder":Z
    .restart local v23    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v24    # "actionIndex":I
    .restart local v26    # "customOrder":Z
    .restart local v27    # "x":F
    .restart local v28    # "y":F
    :goto_12
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2698
    .end local v2    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "children":[Landroid/view/View;
    .end local v26    # "customOrder":Z
    .end local v27    # "x":F
    .end local v28    # "y":F
    :cond_1d
    move-object/from16 v10, v22

    goto :goto_13

    .end local v18    # "handled":Z
    .end local v20    # "action":I
    .end local v22    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v23    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v24    # "actionIndex":I
    .local v2, "handled":Z
    .local v5, "action":I
    .restart local v10    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v11    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v13    # "actionIndex":I
    :cond_1e
    move/from16 v18, v2

    move/from16 v20, v5

    move/from16 v23, v11

    move/from16 v24, v13

    .end local v2    # "handled":Z
    .end local v5    # "action":I
    .end local v13    # "actionIndex":I
    .restart local v18    # "handled":Z
    .restart local v20    # "action":I
    .restart local v24    # "actionIndex":I
    :goto_13
    move/from16 v11, v23

    if-nez v10, :cond_21

    iget-object v2, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_21

    .line 2701
    iget-object v2, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2702
    .end local v10    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .local v2, "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    move-object v10, v2

    .end local v2    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v10    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    :goto_14
    iget-object v2, v10, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_1f

    .line 2703
    iget-object v10, v10, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_14

    .line 2705
    :cond_1f
    iget v2, v10, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    or-int/2addr v2, v12

    iput v2, v10, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .end local v3    # "childrenCount":I
    .end local v12    # "idBitsToAssign":I
    .end local v15    # "childWithAccessibilityFocus":Landroid/view/View;
    .end local v24    # "actionIndex":I
    goto :goto_16

    .line 2711
    .end local v18    # "handled":Z
    .end local v20    # "action":I
    .local v2, "handled":Z
    .restart local v5    # "action":I
    :cond_20
    move/from16 v18, v2

    move/from16 v20, v5

    move/from16 v23, v11

    .end local v2    # "handled":Z
    .end local v5    # "action":I
    .end local v11    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v18    # "handled":Z
    .restart local v20    # "action":I
    .restart local v23    # "alreadyDispatchedToNewTouchTarget":Z
    :goto_15
    move/from16 v11, v23

    .end local v23    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v11    # "alreadyDispatchedToNewTouchTarget":Z
    :cond_21
    :goto_16
    iget-object v2, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-nez v2, :cond_22

    .line 2713
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v2

    .end local v18    # "handled":Z
    .restart local v2    # "handled":Z
    goto :goto_1c

    .line 2718
    .end local v2    # "handled":Z
    .restart local v18    # "handled":Z
    :cond_22
    const/4 v2, 0x0

    .line 2719
    .local v2, "predecessor":Landroid/view/ViewGroup$TouchTarget;
    iget-object v3, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2720
    .local v3, "target":Landroid/view/ViewGroup$TouchTarget;
    :goto_17
    if-eqz v3, :cond_29

    .line 2721
    iget-object v5, v3, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2722
    .local v5, "next":Landroid/view/ViewGroup$TouchTarget;
    if-eqz v11, :cond_23

    if-ne v3, v10, :cond_23

    .line 2723
    const/4 v12, 0x1

    .line 2742
    .end local v18    # "handled":Z
    .local v12, "handled":Z
    move/from16 v18, v12

    goto :goto_1b

    .line 2725
    .end local v12    # "handled":Z
    .restart local v18    # "handled":Z
    :cond_23
    iget-object v12, v3, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v12}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_25

    if-eqz v7, :cond_24

    goto :goto_18

    :cond_24
    move v12, v4

    goto :goto_19

    :cond_25
    :goto_18
    const/4 v12, 0x1

    .line 2727
    .local v12, "cancelChild":Z
    :goto_19
    iget-object v13, v3, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v14, v3, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {v0, v1, v12, v13, v14}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 2729
    const/4 v13, 0x1

    .line 2731
    .end local v18    # "handled":Z
    .local v13, "handled":Z
    move/from16 v18, v13

    .end local v13    # "handled":Z
    .restart local v18    # "handled":Z
    :cond_26
    if-eqz v12, :cond_28

    .line 2732
    if-nez v2, :cond_27

    .line 2733
    iput-object v5, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1a

    .line 2735
    :cond_27
    iput-object v5, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2737
    :goto_1a
    invoke-virtual {v3}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2738
    move-object v3, v5

    .line 2739
    goto :goto_17

    .line 2742
    .end local v12    # "cancelChild":Z
    :cond_28
    :goto_1b
    move-object v2, v3

    .line 2743
    move-object v3, v5

    .line 2744
    .end local v5    # "next":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_17

    .line 2748
    .end local v2    # "predecessor":Landroid/view/ViewGroup$TouchTarget;
    .end local v3    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_29
    move/from16 v2, v18

    .end local v18    # "handled":Z
    .local v2, "handled":Z
    :goto_1c
    if-nez v8, :cond_2b

    const/4 v3, 0x1

    if-eq v6, v3, :cond_2b

    const/4 v3, 0x7

    if-ne v6, v3, :cond_2a

    goto :goto_1d

    .line 2752
    :cond_2a
    if-eqz v9, :cond_2d

    const/4 v3, 0x6

    if-ne v6, v3, :cond_2d

    .line 2753
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 2754
    .local v3, "actionIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const/4 v5, 0x1

    shl-int v4, v5, v4

    .line 2755
    .local v4, "idBitsToRemove":I
    invoke-direct {v0, v4}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .end local v3    # "actionIndex":I
    .end local v4    # "idBitsToRemove":I
    .end local v6    # "actionMasked":I
    .end local v7    # "intercepted":Z
    .end local v8    # "canceled":Z
    .end local v9    # "split":Z
    .end local v10    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v11    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v20    # "action":I
    goto :goto_1e

    .line 2751
    .restart local v6    # "actionMasked":I
    .restart local v7    # "intercepted":Z
    .restart local v8    # "canceled":Z
    .restart local v9    # "split":Z
    .restart local v10    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .restart local v11    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v20    # "action":I
    :cond_2b
    :goto_1d
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    goto :goto_1e

    .line 2759
    .end local v6    # "actionMasked":I
    .end local v7    # "intercepted":Z
    .end local v8    # "canceled":Z
    .end local v9    # "split":Z
    .end local v10    # "newTouchTarget":Landroid/view/ViewGroup$TouchTarget;
    .end local v11    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v20    # "action":I
    :cond_2c
    move/from16 v18, v2

    :cond_2d
    :goto_1e
    if-nez v2, :cond_2e

    iget-object v3, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_2e

    .line 2760
    iget-object v3, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 2762
    :cond_2e
    return v2
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1924
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 1928
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/16 v2, 0x12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 1930
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1931
    return v1

    .line 1933
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 1935
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1936
    return v1

    .line 1940
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_3

    .line 1941
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1943
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;
    .locals 5
    .param p1, "evt"    # Landroid/view/KeyEvent;

    .line 7597
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasUnhandledKeyListener()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7598
    return-object v1

    .line 7600
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    .line 7601
    .local v0, "orderedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_3

    .line 7603
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 7604
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7605
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7606
    .local v4, "consumer":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 7607
    nop

    .line 7611
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7607
    return-object v4

    .line 7603
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "consumer":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7611
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7612
    goto :goto_2

    .line 7611
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    throw v1

    .line 7614
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_5

    .line 7615
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7616
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v4

    .line 7617
    .restart local v4    # "consumer":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 7618
    return-object v4

    .line 7614
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "consumer":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 7622
    .end local v2    # "i":I
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7623
    return-object p0

    .line 7625
    :cond_6
    return-object v1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 1120
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1121
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1120
    :goto_0
    return v0
.end method

.method dispatchViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 4936
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 4937
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 4938
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 4940
    :cond_0
    return-void
.end method

.method dispatchViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 4952
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 4953
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 4954
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 4956
    :cond_0
    return-void
.end method

.method dispatchVisibilityAggregated(Z)Z
    .locals 4
    .param p1, "isVisible"    # Z

    .line 1562
    invoke-super {p0, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    move-result p1

    .line 1563
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1564
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1565
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1569
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1570
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    .line 1565
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1573
    .end local v2    # "i":I
    :cond_1
    return p1
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 1542
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1543
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1544
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1545
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1546
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1545
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1548
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .line 1459
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1460
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1461
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1462
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1463
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1465
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 4
    .param p1, "visible"    # I

    .line 1839
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1841
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1842
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1843
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1844
    aget-object v3, v1, v2

    .line 1845
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1843
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1847
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    .line 1552
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1553
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1554
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1555
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1556
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1555
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1558
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 4352
    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 6

    .line 7120
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 7122
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 7123
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_1

    .line 7128
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7129
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7131
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7132
    aget-object v3, v0, v2

    .line 7133
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 7134
    invoke-virtual {v3}, Landroid/view/View;->refreshDrawableState()V

    .line 7131
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7124
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7138
    :cond_2
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 8770
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 8772
    const-string v0, "focus:descendantFocusability"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 8773
    const-string v0, "drawing:clipChildren"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8774
    const-string v0, "drawing:clipToPadding"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8775
    const-string v0, "drawing:childrenDrawingOrderEnabled"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 8776
    const-string v0, "drawing:persistentDrawingCache"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 8778
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8779
    .local v0, "n":I
    const-string/jumbo v1, "meta:__childCount__"

    int-to-short v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;S)V

    .line 8780
    const/4 v1, 0x0

    .line 8780
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "meta:__child__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 8782
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 8780
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8784
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 6972
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 6973
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6974
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 6975
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6976
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6977
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 6978
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6979
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6981
    :cond_0
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    .line 6982
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6984
    :cond_1
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_2

    .line 6985
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6988
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 6991
    .end local v0    # "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .line 1206
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1207
    return-object p0

    .line 1210
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1211
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1213
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outLocalPoint"    # Landroid/graphics/PointF;

    .line 1791
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1792
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1793
    .local v1, "children":[Landroid/view/View;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1794
    aget-object v3, v1, v2

    .line 1795
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1796
    goto :goto_1

    .line 1799
    :cond_0
    invoke-virtual {p0, p1, p2, v3, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1800
    return-object v3

    .line 1793
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1803
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public findNamedViews(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 7561
    .local p1, "namedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mGhostView:Landroid/view/GhostView;

    if-nez v0, :cond_0

    .line 7562
    return-void

    .line 7564
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 7565
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7566
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7567
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7568
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 7566
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7570
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 6
    .param p1, "accessibilityId"    # I

    .line 1414
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1415
    .local v0, "foundView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1416
    return-object v0

    .line 1419
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1420
    return-object v2

    .line 1423
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1424
    .local v1, "childrenCount":I
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1425
    .local v3, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 1426
    aget-object v5, v3, v4

    .line 1427
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1428
    if-eqz v0, :cond_2

    .line 1429
    return-object v0

    .line 1425
    .end local v5    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1433
    .end local v4    # "i":I
    :cond_3
    return-object v2
.end method

.method public findViewByAutofillIdTraversal(I)Landroid/view/View;
    .locals 5
    .param p1, "autofillId"    # I

    .line 1439
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1440
    .local v0, "foundView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1441
    return-object v0

    .line 1444
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1445
    .local v1, "childrenCount":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1446
    .local v2, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1447
    aget-object v4, v2, v3

    .line 1448
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 1449
    if-eqz v0, :cond_1

    .line 1450
    return-object v0

    .line 1446
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1454
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method protected findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 4623
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4624
    return-object p0

    .line 4627
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4628
    .local v0, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4630
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4631
    aget-object v3, v0, v2

    .line 4633
    .local v3, "v":Landroid/view/View;
    if-eq v3, p2, :cond_1

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 4634
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    .line 4636
    if-eqz v3, :cond_1

    .line 4637
    return-object v3

    .line 4630
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4642
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public findViewByTouchPoint(FFZ)Landroid/view/View;
    .locals 18
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isFindImage"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 8801
    iget v3, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 8802
    .local v3, "childrenCount":I
    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2

    .line 8809
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v5

    .line 8810
    .local v5, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v5, :cond_1

    .line 8811
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 8812
    .local v6, "customOrder":Z
    :goto_0
    iget-object v7, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 8813
    .local v7, "children":[Landroid/view/View;
    add-int/lit8 v8, v3, -0x1

    .line 8813
    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_5

    .line 8814
    invoke-direct {v0, v3, v8, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v9

    .line 8816
    .local v9, "childIndex":I
    invoke-static {v5, v7, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 8818
    .local v10, "child":Landroid/view/View;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v0, v1, v2, v10, v4}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 8819
    iget v11, v0, Landroid/view/ViewGroup;->mScrollX:I

    iget v12, v10, Landroid/view/View;->mLeft:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    .line 8820
    .local v11, "offsetX":F
    iget v12, v0, Landroid/view/ViewGroup;->mScrollY:I

    iget v13, v10, Landroid/view/View;->mTop:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    .line 8821
    .local v12, "offsetY":F
    add-float v13, v1, v11

    .line 8822
    .local v13, "newX":F
    add-float v14, v2, v12

    .line 8823
    .local v14, "newY":F
    move/from16 v15, p3

    invoke-virtual {v10, v13, v14, v15}, Landroid/view/View;->findViewByTouchPoint(FFZ)Landroid/view/View;

    move-result-object v16

    .line 8824
    .local v16, "findView":Landroid/view/View;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 8825
    .local v4, "childName":Ljava/lang/String;
    const-string/jumbo v0, "recognition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v2, v10, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8826
    if-eqz v16, :cond_4

    .line 8827
    if-eqz v5, :cond_2

    .line 8828
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8830
    :cond_2
    return-object v16

    .line 8813
    .end local v4    # "childName":Ljava/lang/String;
    .end local v9    # "childIndex":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "offsetX":F
    .end local v12    # "offsetY":F
    .end local v13    # "newX":F
    .end local v14    # "newY":F
    .end local v16    # "findView":Landroid/view/View;
    :cond_3
    move/from16 v15, p3

    :cond_4
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v4, 0x0

    goto :goto_1

    .line 8834
    .end local v8    # "i":I
    :cond_5
    move/from16 v15, p3

    if-eqz v5, :cond_6

    .line 8835
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8837
    :cond_6
    const/4 v0, 0x0

    return-object v0

    .line 8803
    .end local v5    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "customOrder":Z
    .end local v7    # "children":[Landroid/view/View;
    :cond_7
    :goto_2
    move/from16 v15, p3

    move-object v0, v4

    return-object v0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 4568
    iget v0, p0, Landroid/view/ViewGroup;->mID:I

    if-ne p1, v0, :cond_0

    .line 4569
    return-object p0

    .line 4572
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4573
    .local v0, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4575
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4576
    aget-object v3, v0, v2

    .line 4578
    .local v3, "v":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 4579
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4581
    if-eqz v3, :cond_1

    .line 4582
    return-object v3

    .line 4575
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4587
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4595
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4596
    return-object p0

    .line 4599
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4600
    .local v0, "where":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4602
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4603
    aget-object v3, v0, v2

    .line 4605
    .local v3, "v":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 4606
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 4608
    if-eqz v3, :cond_1

    .line 4609
    return-object v3

    .line 4602
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4614
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 5
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .line 1399
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1400
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1401
    .local v0, "childrenCount":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1402
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1403
    aget-object v3, v1, v2

    .line 1404
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 1406
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 1402
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1409
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .line 6903
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 6904
    .local v0, "disappearingChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    .line 6905
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6906
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6908
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 6909
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6912
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 6913
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6917
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6918
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 6921
    :cond_2
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 6922
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 6925
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 6927
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6929
    :cond_3
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 1026
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1031
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1034
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 906
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    .line 909
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    .line 911
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 919
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_2

    .line 920
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 922
    :cond_2
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 12
    .param p1, "region"    # Landroid/graphics/Region;

    .line 7051
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 7052
    .local v0, "meOpaque":Z
    :goto_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 7054
    return v2

    .line 7056
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 7062
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7063
    .local v3, "childrenCount":I
    const/4 v4, 0x1

    .line 7064
    .local v4, "noneOfTheChildrenAreTransparent":Z
    if-lez v3, :cond_7

    .line 7065
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v5

    .line 7066
    .local v5, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v5, :cond_2

    .line 7067
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v1

    .line 7068
    .local v6, "customOrder":Z
    :goto_1
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7069
    .local v7, "children":[Landroid/view/View;
    move v8, v4

    move v4, v1

    .local v4, "i":I
    .local v8, "noneOfTheChildrenAreTransparent":Z
    :goto_2
    if-ge v4, v3, :cond_5

    .line 7070
    invoke-direct {p0, v3, v4, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v9

    .line 7071
    .local v9, "childIndex":I
    invoke-static {v5, v7, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 7072
    .local v10, "child":Landroid/view/View;
    iget v11, v10, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v11, v11, 0xc

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 7073
    :cond_3
    invoke-virtual {v10, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 7074
    const/4 v8, 0x0

    .line 7069
    .end local v9    # "childIndex":I
    .end local v10    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 7078
    .end local v4    # "i":I
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7080
    .end local v5    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "customOrder":Z
    .end local v7    # "children":[Landroid/view/View;
    :cond_6
    move v4, v8

    .end local v8    # "noneOfTheChildrenAreTransparent":Z
    .local v4, "noneOfTheChildrenAreTransparent":Z
    :cond_7
    if-nez v0, :cond_9

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    goto :goto_4

    :cond_9
    :goto_3
    move v1, v2

    :goto_4
    return v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 6615
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 6586
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 6604
    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 3676
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 6695
    if-ltz p1, :cond_1

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 6698
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0

    .line 6696
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 6684
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 4230
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 4553
    const/4 v0, 0x0

    return v0
.end method

.method getChildTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .line 4557
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_0

    .line 4558
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 4560
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .line 6131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;
    .param p4, "forceParentCheck"    # Z

    .line 6145
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 6146
    .local v0, "rect":Landroid/graphics/RectF;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6148
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6149
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6152
    :cond_1
    iget v1, p1, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v1, v2

    .line 6153
    .local v1, "dx":I
    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v2, v3

    .line 6155
    .local v2, "dy":I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 6157
    if-eqz p3, :cond_4

    .line 6158
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6159
    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    goto :goto_1

    .line 6160
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 6161
    .local v3, "position":[F
    :goto_1
    iget v4, p3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 6162
    iget v4, p3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 6163
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 6164
    aget v4, v3, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Landroid/graphics/Point;->x:I

    .line 6165
    aget v4, v3, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Landroid/graphics/Point;->y:I

    .line 6167
    .end local v3    # "position":[F
    :cond_3
    iget v3, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v1

    iput v3, p3, Landroid/graphics/Point;->x:I

    .line 6168
    iget v3, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v2

    iput v3, p3, Landroid/graphics/Point;->y:I

    .line 6171
    :cond_4
    iget v3, p0, Landroid/view/ViewGroup;->mRight:I

    iget v4, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v3, v4

    .line 6172
    .local v3, "width":I
    iget v4, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v5, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v4, v5

    .line 6174
    .local v4, "height":I
    const/4 v5, 0x1

    .line 6175
    .local v5, "rectIsVisible":Z
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    .line 6176
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 6178
    :cond_5
    int-to-float v6, v3

    int-to-float v7, v4

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 6181
    :cond_6
    if-nez p4, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v7, 0x22

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_8

    .line 6184
    iget v6, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    int-to-float v6, v6

    iget v7, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    int-to-float v7, v7

    iget v8, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int v8, v3, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int v9, v4, v9

    int-to-float v9, v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 6188
    :cond_8
    if-nez p4, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    iget-object v6, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_a

    .line 6190
    iget-object v6, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    .line 6193
    :cond_a
    iget v6, v0, Landroid/graphics/RectF;->left:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->top:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    iget v8, v0, Landroid/graphics/RectF;->right:F

    float-to-double v8, v8

    .line 6194
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 6193
    invoke-virtual {p2, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 6196
    if-nez p4, :cond_b

    if-eqz v5, :cond_d

    :cond_b
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_d

    .line 6197
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_c

    .line 6198
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    .line 6199
    invoke-virtual {v6, p0, p2, p3, p4}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v5

    goto :goto_2

    .line 6201
    :cond_c
    iget-object v6, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    .line 6204
    :cond_d
    :goto_2
    return v5
.end method

.method public getClipChildren()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 4380
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getClipToPadding()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 4437
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    return v0
.end method

.method getDeepestFocusedChild()Landroid/view/View;
    .locals 3

    .line 1174
    move-object v0, p0

    .line 1175
    .local v0, "v":Landroid/view/View;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1176
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1177
    return-object v0

    .line 1179
    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    nop

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 1181
    :cond_2
    return-object v1
.end method

.method public getDescendantFocusability()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .line 766
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .line 1170
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .line 6275
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .line 7115
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getLayoutMode()I
    .locals 2

    .line 6551
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 6552
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 6553
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    .line 6554
    .local v0, "inheritedLayoutMode":I
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 6556
    .end local v0    # "inheritedLayoutMode":I
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    return v0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    .line 5458
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 7533
    iget v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return v0
.end method

.method getNumChildrenForAccessibility()I
    .locals 4

    .line 3732
    const/4 v0, 0x0

    .line 3733
    .local v0, "numChildrenForAccessibility":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3734
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3735
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->includeForAccessibility()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3736
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3737
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 3738
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .line 3739
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getNumChildrenForAccessibility()I

    move-result v3

    add-int/2addr v0, v3

    .line 3733
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3742
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public getOverlay()Landroid/view/ViewGroupOverlay;
    .locals 2

    .line 4209
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_0

    .line 4210
    new-instance v0, Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    .line 4212
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    check-cast v0, Landroid/view/ViewGroupOverlay;

    return-object v0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 1

    .line 119
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6474
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method getScrollIndicatorBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 4357
    invoke-super {p0, p1}, Landroid/view/View;->getScrollIndicatorBounds(Landroid/graphics/Rect;)V

    .line 4361
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4362
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 4363
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 4364
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 4365
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 4366
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 4368
    :cond_1
    return-void
.end method

.method public getTouchscreenBlocksFocus()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .line 1384
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTransientView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .line 4778
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 4781
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 4779
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransientViewCount()I
    .locals 1

    .line 4745
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTransientViewIndex(I)I
    .locals 1
    .param p1, "position"    # I

    .line 4760
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 4763
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 4761
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 793
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 796
    iput-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 798
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 799
    return-void
.end method

.method hasDefaultFocus()Z
    .locals 1

    .line 872
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/view/View;->hasDefaultFocus()Z

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

.method public hasFocus()Z
    .locals 1

    .line 1191
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

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

.method hasFocusable(ZZ)Z
    .locals 3
    .param p1, "allowAutoFocus"    # Z
    .param p2, "dispatchExplicit"    # Z

    .line 1223
    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1224
    return v1

    .line 1228
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusable()I

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1229
    const/4 v0, 0x1

    return v0

    .line 1233
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 1234
    .local v0, "descendantFocusability":I
    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_3

    .line 1235
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    move-result v1

    return v1

    .line 1238
    :cond_3
    return v1
.end method

.method hasFocusableChild(Z)Z
    .locals 6
    .param p1, "dispatchExplicit"    # Z

    .line 1243
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1244
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1246
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1247
    aget-object v4, v1, v3

    .line 1251
    .local v4, "child":Landroid/view/View;
    if-eqz p1, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 1252
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1253
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 1246
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1257
    .end local v3    # "i":I
    :cond_3
    return v2
.end method

.method protected hasHoveredChild()Z
    .locals 1

    .line 2371
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransientState()Z
    .locals 1

    .line 1115
    iget v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    if-gtz v0, :cond_1

    invoke-super {p0}, Landroid/view/View;->hasTransientState()Z

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

.method hasUnhandledKeyListener()Z
    .locals 1

    .line 7574
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    if-gtz v0, :cond_1

    invoke-super {p0}, Landroid/view/View;->hasUnhandledKeyListener()Z

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

.method incrementChildUnhandledKeyListeners()V
    .locals 2

    .line 7578
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    .line 7579
    iget v0, p0, Landroid/view/ViewGroup;->mChildUnhandledKeyListeners:I

    if-ne v0, v1, :cond_0

    .line 7580
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 7581
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->incrementChildUnhandledKeyListeners()V

    .line 7584
    :cond_0
    return-void
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 6667
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6668
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6669
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6670
    aget-object v3, v1, v2

    if-ne v3, p1, :cond_0

    .line 6671
    return v2

    .line 6669
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6674
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method protected internalSetPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 3804
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 3806
    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3807
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 3809
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3811
    :goto_0
    return-void
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5857
    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5858
    .local v3, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v4, :cond_0

    .line 5860
    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 5861
    return-void

    .line 5864
    :cond_0
    move-object v4, v0

    .line 5865
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_12

    .line 5869
    iget v5, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x40

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    .line 5874
    .local v5, "drawAnimation":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 5875
    .local v8, "childMatrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v5, :cond_2

    .line 5876
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v7

    goto :goto_1

    :cond_2
    move v9, v6

    .line 5879
    .local v9, "isOpaque":Z
    :goto_1
    if-eqz v9, :cond_3

    const/high16 v11, 0x400000

    goto :goto_2

    :cond_3
    const/high16 v11, 0x200000

    .line 5881
    .local v11, "opaqueFlag":I
    :goto_2
    iget v12, v1, Landroid/view/View;->mLayerType:I

    if-eqz v12, :cond_4

    .line 5882
    iget v12, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v13, -0x80000000

    or-int/2addr v12, v13

    iput v12, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5883
    iget v12, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    iput v12, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5886
    :cond_4
    iget-object v12, v3, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 5887
    .local v12, "location":[I
    iget v13, v1, Landroid/view/View;->mLeft:I

    aput v13, v12, v6

    .line 5888
    iget v6, v1, Landroid/view/View;->mTop:I

    aput v6, v12, v7

    .line 5889
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_5

    goto :goto_3

    .line 5917
    :cond_5
    move-object/from16 v16, v8

    goto :goto_6

    .line 5891
    :cond_6
    :goto_3
    iget-object v6, v3, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5892
    .local v6, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v6, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5894
    iget v13, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v13, v13, 0x800

    if-eqz v13, :cond_9

    .line 5895
    iget-object v13, v3, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 5896
    .local v13, "t":Landroid/view/animation/Transformation;
    invoke-virtual {v0, v1, v13}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v14

    .line 5897
    .local v14, "transformed":Z
    if-eqz v14, :cond_7

    .line 5898
    iget-object v15, v3, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 5899
    .local v15, "transformMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v13}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 5900
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v10

    if-nez v10, :cond_8

    .line 5901
    invoke-virtual {v15, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_4

    .line 5904
    .end local v15    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_7
    nop

    .end local v13    # "t":Landroid/view/animation/Transformation;
    .end local v14    # "transformed":Z
    move-object v15, v8

    .restart local v15    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_8
    :goto_4
    move-object v10, v15

    .line 5906
    .end local v15    # "transformMatrix":Landroid/graphics/Matrix;
    .local v10, "transformMatrix":Landroid/graphics/Matrix;
    goto :goto_5

    .line 5907
    .end local v10    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_9
    move-object v10, v8

    .line 5909
    .restart local v10    # "transformMatrix":Landroid/graphics/Matrix;
    :goto_5
    invoke-virtual {v10, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5910
    iget v13, v6, Landroid/graphics/RectF;->left:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget v14, v6, Landroid/graphics/RectF;->top:F

    float-to-double v14, v14

    .line 5911
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    iget v15, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v16, v8

    float-to-double v7, v15

    .line 5912
    .end local v8    # "childMatrix":Landroid/graphics/Matrix;
    .local v16, "childMatrix":Landroid/graphics/Matrix;
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v8

    .line 5913
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 5910
    invoke-virtual {v2, v13, v14, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 5917
    .end local v6    # "boundingRect":Landroid/graphics/RectF;
    .end local v10    # "transformMatrix":Landroid/graphics/Matrix;
    :cond_a
    :goto_6
    const/4 v0, 0x0

    .line 5918
    .local v0, "view":Landroid/view/View;
    instance-of v1, v4, Landroid/view/View;

    if-eqz v1, :cond_b

    .line 5919
    move-object v0, v4

    check-cast v0, Landroid/view/View;

    .line 5922
    :cond_b
    if-eqz v5, :cond_d

    .line 5923
    if-eqz v0, :cond_c

    .line 5924
    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_7

    .line 5925
    :cond_c
    instance-of v1, v4, Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_d

    .line 5926
    move-object v1, v4

    check-cast v1, Landroid/view/ViewRootImpl;

    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    goto :goto_8

    .line 5932
    :cond_d
    :goto_7
    const/4 v6, 0x1

    :goto_8
    if-eqz v0, :cond_f

    .line 5933
    iget v1, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x3000

    if-eqz v1, :cond_e

    .line 5934
    invoke-virtual {v0}, Landroid/view/View;->getSolidColor()I

    move-result v1

    if-nez v1, :cond_e

    .line 5935
    const/high16 v11, 0x200000

    .line 5937
    :cond_e
    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x600000

    and-int/2addr v1, v7

    const/high16 v7, 0x200000

    if-eq v1, v7, :cond_10

    .line 5938
    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const v8, -0x600001

    and-int/2addr v1, v8

    or-int/2addr v1, v11

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_9

    .line 5942
    :cond_f
    const/high16 v7, 0x200000

    :cond_10
    :goto_9
    invoke-interface {v4, v12, v2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v4

    .line 5943
    if-eqz v0, :cond_11

    .line 5945
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 5946
    .local v1, "m":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v8

    if-nez v8, :cond_11

    .line 5947
    iget-object v8, v3, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5948
    .local v8, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v8, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5949
    invoke-virtual {v1, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5950
    iget v10, v8, Landroid/graphics/RectF;->left:F

    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v10, v13

    iget v13, v8, Landroid/graphics/RectF;->top:F

    float-to-double v13, v13

    .line 5951
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget v14, v8, Landroid/graphics/RectF;->right:F

    float-to-double v14, v14

    .line 5952
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    iget v15, v8, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v15

    .line 5953
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 5950
    invoke-virtual {v2, v10, v13, v14, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 5956
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "m":Landroid/graphics/Matrix;
    .end local v8    # "boundingRect":Landroid/graphics/RectF;
    :cond_11
    if-nez v4, :cond_a

    .line 5958
    .end local v5    # "drawAnimation":Z
    .end local v9    # "isOpaque":Z
    .end local v11    # "opaqueFlag":I
    .end local v12    # "location":[I
    .end local v16    # "childMatrix":Landroid/graphics/Matrix;
    :cond_12
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 6
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5974
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, 0x8020

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 5976
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x90

    const/16 v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    .line 5978
    aget v0, p1, v3

    iget v1, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v0, v1

    aget v1, p1, v2

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 5980
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 5981
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 5984
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    .line 5985
    .local v0, "left":I
    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    .line 5987
    .local v1, "top":I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_1

    .line 5988
    iget v4, p0, Landroid/view/ViewGroup;->mRight:I

    sub-int/2addr v4, v0

    iget v5, p0, Landroid/view/ViewGroup;->mBottom:I

    sub-int/2addr v5, v1

    invoke-virtual {p2, v3, v3, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5989
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 5993
    :cond_1
    aput v0, p1, v3

    .line 5994
    aput v1, p1, v2

    .line 5995
    .end local v0    # "left":I
    .end local v1    # "top":I
    goto :goto_1

    .line 5997
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 5998
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 6001
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 6003
    :goto_0
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    aput v0, p1, v3

    .line 6004
    iget v0, p0, Landroid/view/ViewGroup;->mTop:I

    aput v0, p1, v2

    .line 6006
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6008
    :goto_1
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6009
    iget v0, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v0, :cond_4

    .line 6010
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 6013
    :cond_4
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    return-object v0

    .line 6016
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method invalidateInheritedLayoutMode(I)V
    .locals 3
    .param p1, "layoutModeOfRoot"    # I

    .line 6525
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_2

    const/high16 v0, 0x800000

    .line 6527
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6530
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 6533
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "N":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 6534
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateInheritedLayoutMode(I)V

    .line 6533
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6536
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_1
    return-void

    .line 6528
    :cond_2
    :goto_1
    return-void
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6331
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimationCacheEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6294
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 6411
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6374
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isLayoutModeOptical()Z
    .locals 2

    .line 3927
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLayoutSuppressed()Z
    .locals 1

    .line 7045
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    return v0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 2

    .line 3104
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isShowingContextMenuWithCoords()Z
    .locals 2

    .line 938
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;
    .param p4, "outLocalPoint"    # Landroid/graphics/PointF;

    .line 2973
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    move-result-object v0

    .line 2974
    .local v0, "point":[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 2975
    const/4 v2, 0x1

    aput p2, v0, v2

    .line 2976
    invoke-virtual {p0, v0, p3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 2977
    aget v3, v0, v1

    aget v4, v0, v2

    invoke-virtual {p3, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    .line 2978
    .local v3, "isInView":Z
    if-eqz v3, :cond_0

    if-eqz p4, :cond_0

    .line 2979
    aget v1, v0, v1

    aget v2, v0, v2

    invoke-virtual {p4, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 2981
    :cond_0
    return v3
.end method

.method public isTransitionGroup()Z
    .locals 4

    .line 3120
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3121
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 3123
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    .line 3124
    .local v0, "outlineProvider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    sget-object v3, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method isViewTransitioning(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 6937
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    .line 7142
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 7143
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7144
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7145
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7146
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 7145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7148
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public final layout(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 6209
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6210
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 6211
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    .line 6213
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 6216
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 6218
    :goto_0
    return-void
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 4

    .line 1487
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1488
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1489
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1490
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1491
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 1490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1493
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .line 6732
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6734
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 6736
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 6739
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 6740
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 6759
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6761
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 6764
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 6768
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 6769
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 6711
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6712
    .local v0, "size":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6713
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6714
    aget-object v3, v1, v2

    .line 6715
    .local v3, "child":Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 6716
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 6713
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6719
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method notifyChildOfDragStart(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .line 1813
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    .line 1814
    .local v0, "tx":F
    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v1, v1, Landroid/view/DragEvent;->mY:F

    .line 1816
    .local v1, "ty":F
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    move-result-object v2

    .line 1817
    .local v2, "point":[F
    const/4 v3, 0x0

    aput v0, v2, v3

    .line 1818
    const/4 v4, 0x1

    aput v1, v2, v4

    .line 1819
    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 1821
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v6, v2, v3

    iput v6, v5, Landroid/view/DragEvent;->mX:F

    .line 1822
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v6, v2, v4

    iput v6, v5, Landroid/view/DragEvent;->mY:F

    .line 1823
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {p1, v5}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    .line 1824
    .local v5, "canAccept":Z
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v0, v6, Landroid/view/DragEvent;->mX:F

    .line 1825
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v1, v6, Landroid/view/DragEvent;->mY:F

    .line 1826
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput-boolean v3, v6, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 1827
    if-eqz v5, :cond_0

    .line 1828
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1829
    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1830
    iget v3, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v4

    iput v3, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 1831
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1834
    :cond_0
    return v5
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .line 3683
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityLiveRegion()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3684
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0

    .line 3686
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 3688
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3692
    goto :goto_0

    .line 3689
    :catch_0
    move-exception v0

    .line 3690
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3694
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_1
    :goto_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChangedIfNeeded()V
    .locals 2

    .line 3699
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3704
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 3705
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3706
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 3707
    .local v0, "a11yParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3708
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 3709
    return-void

    .line 3712
    .end local v0    # "a11yParent":Landroid/view/ViewParent;
    :cond_1
    invoke-super {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 3713
    return-void

    .line 3700
    :cond_2
    :goto_0
    return-void
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 7
    .param p1, "offset"    # I

    .line 6109
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6110
    .local v0, "count":I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6111
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    .line 6113
    .local v2, "invalidate":Z
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "invalidate":Z
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6114
    aget-object v5, v1, v2

    .line 6115
    .local v5, "v":Landroid/view/View;
    iget v6, v5, Landroid/view/View;->mTop:I

    add-int/2addr v6, p1

    iput v6, v5, Landroid/view/View;->mTop:I

    .line 6116
    iget v6, v5, Landroid/view/View;->mBottom:I

    add-int/2addr v6, p1

    iput v6, v5, Landroid/view/View;->mBottom:I

    .line 6117
    iget-object v6, v5, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    if-eqz v6, :cond_0

    .line 6118
    const/4 v4, 0x1

    .line 6119
    iget-object v6, v5, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v6, p1}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    .line 6113
    .end local v5    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6123
    .end local v2    # "i":I
    :cond_1
    if-eqz v4, :cond_2

    .line 6124
    invoke-virtual {p0, v3, v3}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    .line 6126
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 6127
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 6026
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 6027
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 6
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "offsetFromChildToParent"    # Z
    .param p4, "clipToBounds"    # Z

    .line 6047
    if-ne p1, p0, :cond_0

    .line 6048
    return-void

    .line 6051
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6054
    .local v0, "theParent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_5

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_5

    if-eq v0, p0, :cond_5

    .line 6058
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 6059
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 6061
    if-eqz p4, :cond_4

    .line 6062
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 6063
    .local v2, "p":Landroid/view/View;
    iget v3, v2, Landroid/view/View;->mRight:I

    iget v4, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/view/View;->mBottom:I

    iget v5, v2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    .line 6065
    .local v1, "intersected":Z
    if-nez v1, :cond_1

    .line 6066
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6068
    .end local v1    # "intersected":Z
    .end local v2    # "p":Landroid/view/View;
    :cond_1
    goto :goto_1

    .line 6070
    :cond_2
    if-eqz p4, :cond_3

    .line 6071
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 6072
    .restart local v2    # "p":Landroid/view/View;
    iget v3, v2, Landroid/view/View;->mRight:I

    iget v4, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/view/View;->mBottom:I

    iget v5, v2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    .line 6074
    .restart local v1    # "intersected":Z
    if-nez v1, :cond_3

    .line 6075
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 6078
    .end local v1    # "intersected":Z
    .end local v2    # "p":Landroid/view/View;
    :cond_3
    iget v1, p1, Landroid/view/View;->mScrollX:I

    iget v2, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/view/View;->mScrollY:I

    iget v3, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6082
    :cond_4
    :goto_1
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 6083
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 6088
    :cond_5
    if-ne v0, p0, :cond_7

    .line 6089
    if-eqz p3, :cond_6

    .line 6090
    iget v1, p1, Landroid/view/View;->mLeft:I

    iget v2, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 6093
    :cond_6
    iget v1, p1, Landroid/view/View;->mScrollX:I

    iget v2, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/view/View;->mScrollY:I

    iget v3, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6099
    :goto_2
    return-void

    .line 6097
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "parameter must be a descendant of this view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 6036
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 6037
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 4975
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4976
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 4977
    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "oldVisibility"    # I
    .param p3, "newVisibility"    # I

    .line 1515
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_2

    .line 1516
    if-nez p3, :cond_0

    .line 1517
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    .line 1519
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1520
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1523
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 1526
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 1533
    :cond_2
    :goto_0
    if-nez p3, :cond_3

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v0, :cond_3

    .line 1534
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1535
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 1538
    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .line 7152
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_0

    .line 7153
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    .line 7156
    :cond_0
    const/4 v0, 0x0

    .line 7157
    .local v0, "need":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7158
    .local v1, "n":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "need":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 7159
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    .line 7161
    .local v4, "childState":[I
    if-eqz v4, :cond_1

    .line 7162
    array-length v5, v4

    add-int/2addr v3, v5

    .line 7158
    .end local v4    # "childState":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7166
    .end local v0    # "i":I
    :cond_2
    add-int v0, p1, v3

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 7168
    .local v0, "state":[I
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 7169
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    .line 7171
    .restart local v4    # "childState":[I
    if-eqz v4, :cond_3

    .line 7172
    invoke-static {v0, v4}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v0

    .line 7168
    .end local v4    # "childState":[I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7176
    .end local v2    # "i":I
    :cond_4
    return-object v0
.end method

.method protected onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4011
    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v8

    .line 4015
    .local v8, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4016
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4018
    const/4 v6, 0x0

    move v0, v6

    .local v0, "i":I
    :goto_0
    move v7, v0

    .end local v0    # "i":I
    .local v7, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/16 v9, 0x8

    const/4 v1, 0x1

    if-ge v7, v0, :cond_1

    .line 4019
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4020
    .local v10, "c":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_0

    .line 4021
    invoke-virtual {v10}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v9

    .line 4023
    .local v9, "insets":Landroid/graphics/Insets;
    nop

    .line 4024
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, v9, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, v0

    .line 4025
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, v9, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, v0

    .line 4026
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, v9, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v4

    add-int/lit8 v4, v0, -0x1

    .line 4027
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v5, v9, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v5

    add-int/lit8 v5, v0, -0x1

    .line 4023
    move-object v0, p1

    move-object v1, v8

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 4018
    .end local v9    # "insets":Landroid/graphics/Insets;
    .end local v10    # "c":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 4034
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x3f

    const/16 v2, 0xff

    invoke-static {v0, v2, v6, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4035
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4037
    invoke-virtual {p0, p1, v8}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 4042
    sget v0, Landroid/view/ViewGroup;->DEBUG_CORNERS_COLOR:I

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4043
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4045
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v10

    .line 4046
    .local v10, "lineLength":I
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v11

    .line 4047
    .local v11, "lineWidth":I
    nop

    .local v6, "i":I
    :goto_1
    move v12, v6

    .end local v6    # "i":I
    .local v12, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v12, v0, :cond_3

    .line 4048
    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 4049
    .local v13, "c":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_2

    .line 4050
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    move-object v0, p1

    move-object v5, v8

    move v6, v10

    move v7, v11

    invoke-static/range {v0 .. v7}, Landroid/view/ViewGroup;->drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V

    .line 4047
    .end local v13    # "c":Landroid/view/View;
    :cond_2
    add-int/lit8 v6, v12, 0x1

    .end local v12    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    .line 4055
    .end local v6    # "i":I
    .end local v10    # "lineLength":I
    .end local v11    # "lineWidth":I
    :cond_3
    return-void
.end method

.method protected onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 4001
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4002
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4003
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 4001
    .end local v1    # "c":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4005
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;

    .line 5822
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v1, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5824
    iget v0, p2, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 5827
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v0, v1

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5830
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5834
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mLayerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5837
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v1, -0x7fe00000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 5838
    move-object p2, p0

    .line 5841
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    .line 5842
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 5844
    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 4981
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4982
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 4983
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3651
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3652
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3653
    return-void

    .line 3655
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    .line 3656
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 3657
    .local v0, "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3658
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 3659
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3663
    .local v1, "childrenForAccessibilityCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3664
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3665
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildUnchecked(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3663
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3668
    .end local v2    # "i":I
    :catch_0
    move-exception v2

    nop

    .line 3670
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3672
    .end local v0    # "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "childrenForAccessibilityCount":I
    :cond_2
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2436
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2438
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2439
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2440
    .local v2, "y":F
    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    .line 2441
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->isOnScrollbar(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2442
    const/4 v3, 0x1

    return v3

    .line 2445
    .end local v0    # "action":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 3206
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 3208
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3210
    return v0

    .line 3212
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 7509
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/ViewGroup;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 7518
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 3758
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 7500
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Landroid/view/ViewGroup;->dispatchNestedPreScroll(II[I[I)Z

    .line 7501
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 7491
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->dispatchNestedScroll(IIII[I)Z

    .line 7492
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 7468
    iput p3, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 7469
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3281
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3282
    .local v0, "count":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 3283
    const/4 v1, 0x0

    .line 3284
    .local v1, "index":I
    const/4 v2, 0x1

    .line 3285
    .local v2, "increment":I
    move v3, v0

    .local v3, "end":I
    goto :goto_0

    .line 3287
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 3288
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 3289
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 3291
    .restart local v3    # "end":I
    :goto_0
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3292
    .local v4, "children":[Landroid/view/View;
    move v5, v1

    .local v5, "i":I
    :goto_1
    if-eq v5, v3, :cond_2

    .line 3293
    aget-object v6, v4, v5

    .line 3294
    .local v6, "child":Landroid/view/View;
    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    .line 3295
    invoke-virtual {v6, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3296
    const/4 v7, 0x1

    return v7

    .line 3292
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    add-int/2addr v5, v2

    goto :goto_1

    .line 3300
    .end local v5    # "i":I
    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1072
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 1075
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1087
    const/4 v0, 0x1

    return v0
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1976
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1977
    .local v0, "x":F
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1978
    .local v1, "y":F
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isDraggingScrollBar()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 1982
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1983
    .local v2, "childrenCount":I
    if-eqz v2, :cond_6

    .line 1984
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1985
    .local v3, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v3, :cond_1

    .line 1986
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 1987
    .local v4, "customOrder":Z
    :goto_0
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1988
    .local v5, "children":[Landroid/view/View;
    add-int/lit8 v6, v2, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_5

    .line 1989
    invoke-direct {p0, v2, v6, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v7

    .line 1990
    .local v7, "childIndex":I
    invoke-static {v3, v5, v7}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    .line 1991
    .local v8, "child":Landroid/view/View;
    invoke-static {v8}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    .line 1992
    invoke-virtual {p0, v0, v1, v8, v9}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1993
    goto :goto_2

    .line 1995
    :cond_2
    nop

    .line 1996
    invoke-direct {p0, p1, p2, v8}, Landroid/view/ViewGroup;->dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;

    move-result-object v9

    .line 1997
    .local v9, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v9, :cond_4

    .line 1998
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1999
    :cond_3
    return-object v9

    .line 1988
    .end local v7    # "childIndex":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2002
    .end local v6    # "i":I
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2007
    .end local v3    # "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "customOrder":Z
    .end local v5    # "children":[Landroid/view/View;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3

    .line 1979
    .end local v2    # "childrenCount":I
    :cond_7
    :goto_3
    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v2

    return-object v2
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 7538
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 7539
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 7460
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 7480
    invoke-virtual {p0}, Landroid/view/ViewGroup;->stopNestedScroll()V

    .line 7481
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 7482
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 4949
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 4965
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1588
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    .line 1589
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 1590
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 1592
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 5536
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 5537
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5538
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5539
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 10

    .line 5555
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5556
    .local v0, "count":I
    if-gtz v0, :cond_0

    .line 5557
    return-void

    .line 5560
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5561
    .local v1, "children":[Landroid/view/View;
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5563
    iget-object v3, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 5564
    .local v3, "focused":Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    .line 5565
    .local v4, "detach":Z
    :goto_0
    const/4 v5, 0x0

    .line 5567
    .local v5, "clearChildFocus":Z
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 5569
    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_8

    .line 5570
    aget-object v7, v1, v6

    .line 5572
    .local v7, "view":Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_2

    .line 5573
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v7}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5576
    :cond_2
    const/4 v8, 0x0

    if-ne v7, v3, :cond_3

    .line 5577
    invoke-virtual {v7, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 5578
    const/4 v5, 0x1

    .line 5581
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5583
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5584
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5586
    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_5

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5587
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    .line 5589
    :cond_4
    if-eqz v4, :cond_6

    .line 5590
    invoke-virtual {v7}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 5588
    :cond_5
    :goto_2
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 5593
    :cond_6
    :goto_3
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 5594
    invoke-virtual {p0, v7, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5597
    :cond_7
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5599
    iput-object v8, v7, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5600
    aput-object v8, v1, v6

    .line 5569
    .end local v7    # "view":Landroid/view/View;
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 5603
    .end local v6    # "i":I
    :cond_8
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 5604
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5606
    :cond_9
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 5607
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5609
    :cond_a
    if-eqz v5, :cond_b

    .line 5610
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 5611
    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v2

    if-nez v2, :cond_b

    .line 5612
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 5615
    :cond_b
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 5638
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 5639
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5642
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 5643
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 5645
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 5646
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 5648
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 5649
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 5652
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5654
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 5655
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 5657
    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5658
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5659
    :cond_5
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    goto :goto_0

    .line 5660
    :cond_6
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_7

    .line 5661
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 5664
    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5665
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 5668
    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 5669
    return-void
.end method

.method public removeTransientView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 4718
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4719
    return-void

    .line 4721
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4722
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4723
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 4724
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4725
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4726
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4727
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4728
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4729
    return-void

    .line 4722
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4732
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 5280
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5281
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5282
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5284
    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 5325
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 5326
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5328
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 5297
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    .line 5298
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5341
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 5342
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 5344
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 5312
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 5313
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 806
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 807
    return-void

    .line 811
    :cond_0
    invoke-super {p0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 814
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 815
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 819
    :cond_1
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 821
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_3

    .line 822
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 824
    :cond_3
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 1039
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .line 3151
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    .line 3153
    return-void

    .line 3156
    :cond_1
    if-eqz p1, :cond_2

    .line 3157
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_1

    .line 3159
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3163
    :goto_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_3

    .line 3164
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3166
    :cond_3
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3235
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 3238
    .local v0, "descendantFocusability":I
    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 3240
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3241
    .local v1, "result":Z
    nop

    .line 3254
    move v2, v1

    goto :goto_2

    .end local v1    # "result":Z
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3249
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3250
    .local v1, "took":Z
    if-eqz v1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 3251
    .local v2, "result":Z
    :goto_0
    goto :goto_2

    .line 3243
    .end local v1    # "took":Z
    .end local v2    # "result":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3244
    .restart local v1    # "took":Z
    if-eqz v1, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 3246
    .restart local v2    # "result":Z
    :goto_1
    nop

    .line 3254
    .end local v1    # "took":Z
    :goto_2
    move v1, v2

    .line 3258
    .end local v2    # "result":Z
    .local v1, "result":Z
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutValid()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_5

    .line 3259
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3261
    :cond_5
    return v1
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1044
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 1045
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1046
    return v1

    .line 1048
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 1049
    .local v2, "propagate":Z
    if-nez v2, :cond_1

    .line 1050
    return v1

    .line 1052
    :cond_1
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .line 7240
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 7241
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 7242
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 7244
    :cond_0
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 7085
    if-eqz p1, :cond_0

    .line 7086
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 7087
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 7088
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 7091
    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 4

    .line 7431
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 7433
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7434
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7435
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7436
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7437
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedDrawables()V

    .line 7434
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7440
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 4

    .line 7367
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 7369
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7370
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7371
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7372
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7373
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 7370
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7376
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public resetResolvedPadding()V
    .locals 4

    .line 7415
    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 7417
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7418
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7419
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7420
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7421
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedPadding()V

    .line 7418
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7424
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 4

    .line 7399
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 7401
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7402
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7403
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7404
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7405
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 7402
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7408
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 4

    .line 7383
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 7385
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7386
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7387
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7388
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7389
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 7386
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7392
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method resetSubtreeAccessibilityStateChanged()V
    .locals 4

    .line 3717
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 3718
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3719
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3720
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3721
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 3720
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3723
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected resolveDrawables()V
    .locals 4

    .line 7339
    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    .line 7340
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7341
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7342
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7343
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->areDrawablesResolved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7344
    invoke-virtual {v2}, Landroid/view/View;->resolveDrawables()V

    .line 7341
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7347
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public resolveLayoutDirection()Z
    .locals 5

    .line 7270
    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    move-result v0

    .line 7271
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 7272
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7273
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7274
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7275
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7276
    invoke-virtual {v3}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 7273
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7280
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public resolveLayoutParams()V
    .locals 3

    .line 7354
    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 7355
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7356
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7357
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7358
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->resolveLayoutParams()V

    .line 7356
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7360
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public resolvePadding()V
    .locals 4

    .line 7324
    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    .line 7325
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7326
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7327
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7328
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isPaddingResolved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7329
    invoke-virtual {v2}, Landroid/view/View;->resolvePadding()V

    .line 7326
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7332
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public resolveRtlPropertiesIfNeeded()Z
    .locals 5

    .line 7251
    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    move-result v0

    .line 7253
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 7254
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7255
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7256
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7257
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7258
    invoke-virtual {v3}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 7255
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7262
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public resolveTextAlignment()Z
    .locals 5

    .line 7306
    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    move-result v0

    .line 7307
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 7308
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7309
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7310
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7311
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7312
    invoke-virtual {v3}, Landroid/view/View;->resolveTextAlignment()Z

    .line 7309
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7316
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public resolveTextDirection()Z
    .locals 5

    .line 7288
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    move-result v0

    .line 7289
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 7290
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7291
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7292
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7293
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7294
    invoke-virtual {v3}, Landroid/view/View;->resolveTextDirection()Z

    .line 7291
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7298
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public restoreDefaultFocus()Z
    .locals 2

    .line 3305
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3306
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 3308
    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3309
    const/4 v0, 0x1

    return v0

    .line 3311
    :cond_0
    invoke-super {p0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0
.end method

.method public restoreFocusInCluster(I)Z
    .locals 2
    .param p1, "direction"    # I

    .line 3321
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3322
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    .line 3324
    .local v0, "blockedFocus":Z
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 3325
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3327
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 3325
    return v1

    .line 3327
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    throw v1

    .line 3330
    .end local v0    # "blockedFocus":Z
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    move-result v0

    return v0
.end method

.method public restoreFocusNotInCluster()Z
    .locals 8

    .line 3348
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    const/16 v1, 0x82

    if-eqz v0, :cond_0

    .line 3351
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->restoreFocusInCluster(I)Z

    move-result v0

    return v0

    .line 3353
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget v0, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3356
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 3357
    .local v0, "descendentFocusability":I
    const/high16 v3, 0x60000

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 3358
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    .line 3360
    :cond_2
    const/high16 v3, 0x20000

    const/4 v5, 0x1

    if-ne v0, v3, :cond_3

    .line 3361
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3362
    return v5

    .line 3364
    :cond_3
    move v3, v2

    .local v3, "i":I
    :goto_0
    iget v6, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v3, v6, :cond_5

    .line 3365
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v6, v6, v3

    .line 3366
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3367
    invoke-virtual {v6}, Landroid/view/View;->restoreFocusNotInCluster()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3368
    return v5

    .line 3364
    .end local v6    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3371
    .end local v3    # "i":I
    :cond_5
    const/high16 v3, 0x40000

    if-ne v0, v3, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3372
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    .line 3374
    :cond_6
    return v2

    .line 3354
    .end local v0    # "descendentFocusability":I
    :cond_7
    :goto_1
    return v2
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    .line 6252
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6253
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1
    .param p1, "addsStates"    # Z

    .line 7186
    if-eqz p1, :cond_0

    .line 7187
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 7189
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7192
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 7193
    return-void
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "always"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6356
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6357
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6313
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6314
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3883
    if-nez p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    .line 3884
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3885
    .local v0, "children":[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3886
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3887
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 3886
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3890
    .end local v0    # "children":[Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 6428
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6429
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6396
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 6397
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 5
    .param p1, "clipChildren"    # Z

    .line 4392
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4393
    .local v0, "previousValue":Z
    :goto_0
    if-eq p1, v0, :cond_3

    .line 4394
    invoke-direct {p0, v1, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4395
    nop

    .local v2, "i":I
    :goto_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v2, v3, :cond_2

    .line 4396
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4397
    .local v3, "child":Landroid/view/View;
    iget-object v4, v3, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    if-eqz v4, :cond_1

    .line 4398
    iget-object v4, v3, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v4, p1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 4395
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4401
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4403
    :cond_3
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 2
    .param p1, "clipToPadding"    # Z

    .line 4417
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4418
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4421
    :cond_0
    return-void
.end method

.method setDefaultFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 828
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    return-void

    .line 832
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 834
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    .line 837
    :cond_1
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 3
    .param p1, "focusability"    # I

    .line 778
    const/high16 v0, 0x20000

    const/high16 v1, 0x60000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 784
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_1
    :goto_0
    nop

    .line 787
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v2, -0x60001

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 788
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 789
    return-void
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .param p1, "controller"    # Landroid/view/animation/LayoutAnimationController;

    .line 6262
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 6263
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 6264
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6266
    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "animationListener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 7227
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 7228
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 1
    .param p1, "layoutMode"    # I

    .line 6570
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_1

    .line 6571
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidateInheritedLayoutMode(I)V

    .line 6572
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 6573
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6575
    :cond_1
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 2
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .line 5437
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 5438
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 5439
    .local v0, "previousTransition":Landroid/animation/LayoutTransition;
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    .line 5440
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 5442
    .end local v0    # "previousTransition":Landroid/animation/LayoutTransition;
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 5443
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 5444
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 5446
    :cond_1
    return-void
.end method

.method public setMagnifierListener(Landroid/view/ViewGroup$IMagnifierListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/ViewGroup$IMagnifierListener;

    .line 8792
    iput-object p1, p0, Landroid/view/ViewGroup;->mMagnifierListener:Landroid/view/ViewGroup$IMagnifierListener;

    .line 8793
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 2
    .param p1, "split"    # Z

    .line 3092
    if-eqz p1, :cond_0

    .line 3093
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 3095
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3097
    :goto_0
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 4932
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 4933
    return-void
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1
    .param p1, "drawingCacheToKeep"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6503
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 6504
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 4537
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4538
    return-void
.end method

.method public setTouchscreenBlocksFocus(Z)V
    .locals 2
    .param p1, "touchscreenBlocksFocus"    # Z

    .line 1355
    if-eqz p1, :cond_1

    .line 1356
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1357
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1358
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDeepestFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1359
    .local v0, "focusedChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1360
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 1361
    .local v1, "newFocus":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1362
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1365
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "newFocus":Landroid/view/View;
    :cond_0
    goto :goto_0

    .line 1367
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1369
    :cond_2
    :goto_0
    return-void
.end method

.method public setTransitionGroup(Z)V
    .locals 2
    .param p1, "isTransitionGroup"    # Z

    .line 3140
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3141
    if-eqz p1, :cond_0

    .line 3142
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 3144
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3146
    :goto_0
    return-void
.end method

.method shouldBlockFocusForTouchscreen()Z
    .locals 2

    .line 1391
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 1392
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1393
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findKeyboardNavigationCluster()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1391
    :goto_0
    return v0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 7452
    const/4 v0, 0x1

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "originalView"    # Landroid/view/View;

    .line 926
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 929
    return v1

    .line 931
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 944
    const v0, -0x20000001

    :try_start_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 945
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 946
    nop

    .line 949
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 946
    return v2

    .line 949
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 950
    nop

    .line 951
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 949
    :catchall_0
    move-exception v1

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    throw v1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 956
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 959
    const v0, -0x10000001

    :try_start_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 960
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 960
    return-object v1

    .line 962
    :catchall_0
    move-exception v1

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    throw v1

    .line 966
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 973
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 977
    const v0, -0x8000001

    :try_start_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 978
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    .local v1, "mode":Landroid/view/ActionMode;
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 981
    nop

    .line 980
    nop

    .line 982
    sget-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    if-eq v1, v0, :cond_0

    .line 983
    return-object v1

    .line 980
    .end local v1    # "mode":Landroid/view/ActionMode;
    :catchall_0
    move-exception v1

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    throw v1

    .line 986
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 988
    :try_start_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 989
    :catch_0
    move-exception v0

    .line 991
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    return-object v1

    .line 994
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public startLayoutAnimation()V
    .locals 1

    .line 6239
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 6240
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6241
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6243
    :cond_0
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 6953
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_1

    .line 6954
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 6955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 6957
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6959
    :cond_1
    return-void
.end method

.method public suppressLayout(Z)V
    .locals 1
    .param p1, "suppress"    # Z

    .line 7027
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 7028
    if-nez p1, :cond_0

    .line 7029
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    if-eqz v0, :cond_0

    .line 7030
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 7031
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 7034
    :cond_0
    return-void
.end method

.method public transformPointToViewLocal([FLandroid/view/View;)V
    .locals 4
    .param p1, "point"    # [F
    .param p2, "child"    # Landroid/view/View;

    .line 2988
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 2989
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v3, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 2991
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2992
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2994
    :cond_0
    return-void
.end method

.method unFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "focused"    # Landroid/view/View;

    .line 1155
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1156
    invoke-super {p0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    goto :goto_0

    .line 1158
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 1159
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 1161
    :goto_0
    return-void
.end method

.method updateLocalSystemUiVisibility(II)Z
    .locals 6
    .param p1, "localValue"    # I
    .param p2, "localChanges"    # I

    .line 1863
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v0

    .line 1865
    .local v0, "changed":Z
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1866
    .local v1, "count":I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1867
    .local v2, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1868
    aget-object v4, v2, v3

    .line 1869
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1867
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1871
    .end local v3    # "i":I
    :cond_0
    return v0
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 4889
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4892
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_0

    .line 4895
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4896
    return-void

    .line 4893
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4890
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
