.class final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$MessageHolder;,
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;,
        Landroid/view/AccessibilityInteractionController$PrivateHandler;,
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    }
.end annotation


# static fields
.field private static final CONSIDER_REQUEST_PREPARERS:Z = false

.field private static final ENFORCE_NODE_TREE_CONSISTENT:Z = false

.field private static final IGNORE_REQUEST_PREPARERS:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionController"

.field private static final REQUEST_PREPARER_TIMEOUT_MS:J = 0x1f4L


# instance fields
.field private final mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveRequestPreparerId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mMessagesWaitingForRequestPreparer:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/AccessibilityInteractionController$MessageHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyLooperThreadId:J

.field private final mMyProcessId:I

.field private mNumActiveRequestPreparers:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

.field private final mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 3
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    .line 116
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 117
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    .line 118
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    .line 119
    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 120
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 121
    new-instance v1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 122
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 123
    return-void
.end method

.method static synthetic access$1000(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .line 67
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->prepareForExtraDataRequestUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .line 67
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->requestPreparerDoneUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/view/AccessibilityInteractionController;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;

    .line 67
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->requestPreparerTimeoutUiThread()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;
    .locals 1
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;

    .line 67
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/view/View;

    .line 67
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .line 67
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .line 67
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .line 67
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .line 67
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .line 67
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .line 67
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    return-void
.end method

.method private adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactiveRegion"    # Landroid/graphics/Region;

    .line 766
    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 769
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 770
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 771
    invoke-virtual {p2, v0}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 774
    :cond_1
    return-void

    .line 767
    .end local v0    # "boundsInScreen":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    return-void
.end method

.method private adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V
    .locals 3
    .param p2, "interactiveRegion"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .line 754
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 757
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 758
    .local v0, "infoCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 759
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 760
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v2, p2}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    .line 758
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 762
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 755
    .end local v0    # "infoCount":I
    :cond_2
    :goto_1
    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V
    .locals 17
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 778
    move-object/from16 v2, p2

    if-nez v1, :cond_0

    .line 779
    return-void

    .line 782
    :cond_0
    iget-object v3, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 783
    .local v3, "applicationScale":F
    invoke-direct {v0, v3, v2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 784
    return-void

    .line 787
    :cond_1
    iget-object v4, v0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 788
    .local v4, "boundsInParent":Landroid/graphics/Rect;
    iget-object v5, v0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 790
    .local v5, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 791
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 792
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_2

    .line 793
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 794
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 796
    :cond_2
    if-eqz v2, :cond_3

    .line 797
    iget v6, v2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 799
    iget v6, v2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 800
    iget v6, v2, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v6, v6

    iget v7, v2, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 802
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 803
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 806
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->hasExtras()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    .line 807
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 808
    .local v6, "extras":Landroid/os/Bundle;
    const-string v8, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    .line 809
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    .line 810
    .local v8, "textLocations":[Landroid/os/Parcelable;
    if-eqz v8, :cond_5

    .line 811
    move v9, v7

    .local v9, "i":I
    :goto_0
    array-length v10, v8

    if-ge v9, v10, :cond_5

    .line 814
    aget-object v10, v8, v9

    check-cast v10, Landroid/graphics/RectF;

    .line 815
    .local v10, "textLocation":Landroid/graphics/RectF;
    invoke-virtual {v10, v3}, Landroid/graphics/RectF;->scale(F)V

    .line 816
    if-eqz v2, :cond_4

    .line 817
    iget v11, v2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->scale(F)V

    .line 818
    iget v11, v2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v12, v2, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 811
    .end local v10    # "textLocation":Landroid/graphics/RectF;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 824
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "textLocations":[Landroid/os/Parcelable;
    .end local v9    # "i":I
    :cond_5
    if-eqz v2, :cond_8

    .line 825
    iget-object v6, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 826
    .local v6, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v8, v6, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    if-nez v8, :cond_6

    .line 827
    return-void

    .line 830
    :cond_6
    iget v8, v6, Landroid/view/View$AttachInfo;->mApplicationScale:F

    iget v9, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v8, v9

    .line 832
    .local v8, "scale":F
    iget-object v9, v0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 833
    .local v9, "visibleWinFrame":Landroid/graphics/Rect;
    iget v10, v6, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    iget v11, v2, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 834
    iget v10, v6, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    iget v11, v2, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 835
    iget v10, v9, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget-object v11, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v11, v11, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v11, v11

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 836
    iget v10, v9, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget-object v11, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v11, v11, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 838
    iget-object v10, v6, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    iget-object v11, v0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v10, v11}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 839
    iget-object v10, v0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    .line 840
    .local v10, "displayWidth":I
    iget-object v11, v0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    .line 842
    .local v11, "displayHeight":I
    iget-object v12, v0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    .line 843
    .local v12, "visibleDisplayFrame":Landroid/graphics/Rect;
    invoke-virtual {v12, v7, v7, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 845
    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 847
    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    .line 850
    :cond_7
    iget v13, v5, Landroid/graphics/Rect;->left:I

    iget v14, v5, Landroid/graphics/Rect;->top:I

    iget v15, v5, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v13, v14, v15, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v7

    if-nez v7, :cond_8

    .line 852
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 855
    .end local v6    # "attachInfo":Landroid/view/View$AttachInfo;
    .end local v8    # "scale":F
    .end local v9    # "visibleWinFrame":Landroid/graphics/Rect;
    .end local v10    # "displayWidth":I
    .end local v11    # "displayHeight":I
    .end local v12    # "visibleDisplayFrame":Landroid/graphics/Rect;
    :cond_8
    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V
    .locals 4
    .param p2, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            ")V"
        }
    .end annotation

    .line 739
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez p1, :cond_0

    .line 740
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 743
    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 744
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 745
    .local v1, "infoCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 746
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 747
    .local v3, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v3, p2}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 745
    .end local v3    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 750
    .end local v1    # "infoCount":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 19
    .param p1, "message"    # Landroid/os/Message;

    move-object/from16 v7, p0

    .line 308
    move-object/from16 v8, p1

    iget v9, v8, Landroid/os/Message;->arg1:I

    .line 310
    .local v9, "flags":I
    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/internal/os/SomeArgs;

    .line 311
    .local v10, "args":Lcom/android/internal/os/SomeArgs;
    iget v11, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 312
    .local v11, "accessibilityViewId":I
    iget v12, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 313
    .local v12, "virtualDescendantId":I
    iget v13, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 314
    .local v13, "interactionId":I
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 316
    .local v14, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/view/MagnificationSpec;

    .line 317
    .local v15, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Region;

    .line 318
    .local v16, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 320
    .local v17, "arguments":Landroid/os/Bundle;
    invoke-virtual {v10}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 322
    iget-object v6, v7, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 323
    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 325
    :try_start_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    .line 340
    move-object/from16 v18, v6

    goto :goto_2

    .line 328
    :cond_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "root":Landroid/view/View;
    const v1, 0x7ffffffe

    if-ne v11, v1, :cond_1

    .line 331
    :try_start_1
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 340
    .end local v0    # "root":Landroid/view/View;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v6

    goto :goto_3

    .line 333
    .restart local v0    # "root":Landroid/view/View;
    :cond_1
    :try_start_2
    invoke-direct {v7, v11}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 335
    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {v7, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v0

    move v3, v12

    move v4, v9

    move-object v5, v6

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v18, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "root":Landroid/view/View;
    goto :goto_1

    .line 340
    :catchall_1
    move-exception v0

    goto :goto_3

    .end local v18    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_2
    move-object/from16 v18, v6

    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v18    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_1
    move-object v1, v7

    move-object/from16 v2, v18

    move-object v3, v14

    move v4, v13

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 342
    nop

    .line 343
    return-void

    .line 340
    .end local v18    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_3
    move-object/from16 v18, v6

    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v18    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_2
    move-object v1, v7

    move-object/from16 v2, v18

    move-object v3, v14

    move v4, v13

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 326
    return-void

    .line 340
    .end local v18    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v18, v6

    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v18    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_3
    move-object v1, v7

    move-object/from16 v2, v18

    move-object v3, v14

    move v4, v13

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v0
.end method

.method private findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .locals 24
    .param p1, "message"    # Landroid/os/Message;

    move-object/from16 v7, p0

    .line 432
    move-object/from16 v8, p1

    iget v9, v8, Landroid/os/Message;->arg1:I

    .line 434
    .local v9, "flags":I
    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/internal/os/SomeArgs;

    .line 435
    .local v10, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 436
    .local v11, "text":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 438
    .local v12, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/view/MagnificationSpec;

    .line 439
    .local v13, "spec":Landroid/view/MagnificationSpec;
    iget v14, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 440
    .local v14, "accessibilityViewId":I
    iget v15, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 441
    .local v15, "virtualDescendantId":I
    iget v6, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 442
    .local v6, "interactionId":I
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Region;

    .line 443
    .local v16, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v10}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 445
    const/4 v2, 0x0

    .line 447
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    .line 492
    move/from16 v17, v6

    goto/16 :goto_4

    .line 450
    :cond_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "root":Landroid/view/View;
    const v1, 0x7ffffffe

    if-eq v14, v1, :cond_1

    .line 453
    :try_start_1
    invoke-direct {v7, v14}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 492
    .end local v0    # "root":Landroid/view/View;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v17, v6

    goto/16 :goto_5

    .line 455
    .restart local v0    # "root":Landroid/view/View;
    :cond_1
    :try_start_2
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 457
    :goto_0
    if-eqz v0, :cond_6

    :try_start_3
    invoke-direct {v7, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 458
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 459
    .local v1, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v1, :cond_2

    .line 460
    invoke-virtual {v1, v11, v15}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    goto/16 :goto_3

    .line 462
    :cond_2
    const/4 v3, -0x1

    if-ne v15, v3, :cond_6

    .line 463
    iget-object v4, v7, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 464
    .local v4, "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 465
    const/4 v5, 0x7

    invoke-virtual {v0, v4, v11, v5}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 468
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 469
    iget-object v5, v7, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    move-object v2, v5

    .line 470
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 471
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 472
    .local v5, "viewCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v18, v17

    .end local v17    # "i":I
    .local v18, "i":I
    move/from16 v3, v18

    if-ge v3, v5, :cond_6

    .line 473
    .end local v18    # "i":I
    .local v3, "i":I
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    move-object/from16 v19, v17

    .line 474
    .local v19, "foundView":Landroid/view/View;
    move-object/from16 v20, v0

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v17

    .end local v19    # "foundView":Landroid/view/View;
    .local v0, "foundView":Landroid/view/View;
    .local v20, "root":Landroid/view/View;
    if-eqz v17, :cond_5

    .line 475
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v17

    move-object/from16 v1, v17

    .line 476
    if-eqz v1, :cond_4

    .line 477
    nop

    .line 478
    move-object/from16 v21, v4

    const/4 v4, -0x1

    invoke-virtual {v1, v11, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v17

    .end local v4    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v21, "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v22, v17

    .line 480
    .local v22, "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v4, v22

    if-eqz v4, :cond_3

    .line 481
    .end local v22    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v4, "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 483
    .end local v4    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_3
    goto :goto_2

    .line 484
    .end local v21    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v4, "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    move-object/from16 v21, v4

    .end local v4    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v21    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "foundView":Landroid/view/View;
    goto :goto_2

    .line 472
    .end local v21    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v4    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    move-object/from16 v21, v4

    .end local v4    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v21    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_2
    add-int/lit8 v17, v3, 0x1

    .end local v3    # "i":I
    .restart local v17    # "i":I
    move-object/from16 v0, v20

    move-object/from16 v4, v21

    const/4 v3, -0x1

    goto :goto_1

    .line 492
    .end local v1    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v5    # "viewCount":I
    .end local v17    # "i":I
    .end local v20    # "root":Landroid/view/View;
    .end local v21    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_6
    :goto_3
    move-object v0, v2

    move-object v1, v7

    move-object v2, v0

    move-object v3, v12

    move v4, v6

    move-object v5, v13

    move/from16 v17, v6

    move-object/from16 v6, v16

    .end local v6    # "interactionId":I
    .local v17, "interactionId":I
    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 494
    nop

    .line 495
    return-void

    .line 492
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v17    # "interactionId":I
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v6    # "interactionId":I
    :cond_7
    move/from16 v17, v6

    .end local v6    # "interactionId":I
    .restart local v17    # "interactionId":I
    :goto_4
    move-object v1, v7

    move-object v3, v12

    move/from16 v4, v17

    move-object v5, v13

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 448
    return-void

    .line 492
    .end local v17    # "interactionId":I
    .restart local v6    # "interactionId":I
    :catchall_1
    move-exception v0

    move/from16 v17, v6

    move-object/from16 v18, v2

    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v6    # "interactionId":I
    .restart local v17    # "interactionId":I
    .local v18, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_5
    move-object v1, v7

    move-object/from16 v2, v18

    move-object v3, v12

    move/from16 v4, v17

    move-object v5, v13

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v0
.end method

.method private findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .locals 18
    .param p1, "message"    # Landroid/os/Message;

    move-object/from16 v7, p0

    .line 366
    move-object/from16 v8, p1

    iget v9, v8, Landroid/os/Message;->arg1:I

    .line 367
    .local v9, "flags":I
    iget v10, v8, Landroid/os/Message;->arg2:I

    .line 369
    .local v10, "accessibilityViewId":I
    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 370
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    iget v12, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 371
    .local v12, "interactionId":I
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 373
    .local v13, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/view/MagnificationSpec;

    .line 374
    .local v14, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .line 375
    .local v15, "viewId":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Region;

    .line 376
    .local v16, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 378
    iget-object v6, v7, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 379
    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 381
    :try_start_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    .line 405
    move/from16 v17, v9

    move-object v9, v6

    goto/16 :goto_2

    .line 384
    :cond_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "root":Landroid/view/View;
    const v1, 0x7ffffffe

    if-eq v10, v1, :cond_1

    .line 387
    :try_start_1
    invoke-direct {v7, v10}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 405
    .end local v0    # "root":Landroid/view/View;
    :catchall_0
    move-exception v0

    move/from16 v17, v9

    move-object v9, v6

    goto/16 :goto_3

    .line 389
    .restart local v0    # "root":Landroid/view/View;
    :cond_1
    :try_start_2
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object v0, v1

    .line 391
    :goto_0
    if-eqz v0, :cond_4

    .line 392
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 393
    const/4 v2, 0x0

    invoke-virtual {v1, v15, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v5, v1

    .line 394
    .local v5, "resolvedViewId":I
    if-gtz v5, :cond_2

    .line 405
    move-object v1, v7

    move-object v2, v6

    move-object v3, v13

    move v4, v12

    move v8, v5

    move-object v5, v14

    .end local v5    # "resolvedViewId":I
    .local v8, "resolvedViewId":I
    move/from16 v17, v9

    move-object v9, v6

    move-object/from16 v6, v16

    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v17, "flags":I
    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 395
    return-void

    .line 397
    .end local v8    # "resolvedViewId":I
    .end local v17    # "flags":I
    .restart local v5    # "resolvedViewId":I
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v9, "flags":I
    :cond_2
    move v8, v5

    move/from16 v17, v9

    move-object v9, v6

    .end local v5    # "resolvedViewId":I
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v8    # "resolvedViewId":I
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v17    # "flags":I
    :try_start_3
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    if-nez v1, :cond_3

    .line 398
    new-instance v1, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-direct {v1, v7, v2}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    iput-object v1, v7, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 400
    :cond_3
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v1, v8, v9}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    .line 401
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 402
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "root":Landroid/view/View;
    .end local v8    # "resolvedViewId":I
    goto :goto_1

    .line 405
    :catchall_1
    move-exception v0

    goto :goto_3

    .end local v17    # "flags":I
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v9, "flags":I
    :cond_4
    move/from16 v17, v9

    move-object v9, v6

    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v17    # "flags":I
    :goto_1
    move-object v1, v7

    move-object v2, v9

    move-object v3, v13

    move v4, v12

    move-object v5, v14

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 407
    nop

    .line 408
    return-void

    .line 405
    .end local v17    # "flags":I
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v9, "flags":I
    :cond_5
    move/from16 v17, v9

    move-object v9, v6

    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v17    # "flags":I
    :goto_2
    move-object v1, v7

    move-object v2, v9

    move-object v3, v13

    move v4, v12

    move-object v5, v14

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 382
    return-void

    .line 405
    .end local v17    # "flags":I
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v9, "flags":I
    :catchall_2
    move-exception v0

    move/from16 v17, v9

    move-object v9, v6

    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v17    # "flags":I
    :goto_3
    move-object v1, v7

    move-object v2, v9

    move-object v3, v13

    move v4, v12

    move-object v5, v14

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v0
.end method

.method private findFocusUiThread(Landroid/os/Message;)V
    .locals 19
    .param p1, "message"    # Landroid/os/Message;

    move-object/from16 v7, p0

    .line 520
    move-object/from16 v8, p1

    iget v9, v8, Landroid/os/Message;->arg1:I

    .line 521
    .local v9, "flags":I
    iget v10, v8, Landroid/os/Message;->arg2:I

    .line 523
    .local v10, "focusType":I
    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 524
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    iget v12, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 525
    .local v12, "interactionId":I
    iget v13, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 526
    .local v13, "accessibilityViewId":I
    iget v14, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 527
    .local v14, "virtualDescendantId":I
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 529
    .local v15, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/MagnificationSpec;

    .line 530
    .local v16, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Region;

    .line 531
    .local v17, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 533
    const/4 v2, 0x0

    .line 535
    .local v2, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 538
    :cond_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, "root":Landroid/view/View;
    const v1, 0x7ffffffe

    if-eq v13, v1, :cond_1

    .line 541
    invoke-direct {v7, v13}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 543
    :cond_1
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object v0, v1

    .line 545
    :goto_0
    if-eqz v0, :cond_9

    invoke-direct {v7, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 546
    packed-switch v10, :pswitch_data_0

    .line 584
    new-instance v1, Ljava/lang/IllegalArgumentException;

    goto :goto_2

    .line 548
    :pswitch_0
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 551
    .local v1, "host":Landroid/view/View;
    if-eqz v1, :cond_9

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 552
    goto :goto_3

    .line 555
    :cond_2
    invoke-direct {v7, v1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 556
    goto :goto_3

    .line 560
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 561
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_4

    .line 562
    iget-object v4, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_5

    .line 563
    iget-object v4, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    .line 566
    :cond_4
    const/4 v4, -0x1

    if-ne v14, v4, :cond_5

    .line 567
    invoke-virtual {v1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object v2, v4

    .line 569
    .end local v1    # "host":Landroid/view/View;
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_5
    :goto_1
    goto :goto_3

    .line 571
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 572
    .local v1, "target":Landroid/view/View;
    if-eqz v1, :cond_9

    invoke-direct {v7, v1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 573
    goto :goto_3

    .line 575
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 576
    .restart local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_7

    .line 577
    invoke-virtual {v3, v10}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object v2, v4

    .line 579
    :cond_7
    if-nez v2, :cond_8

    .line 580
    invoke-virtual {v1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object v2, v4

    .line 582
    .end local v1    # "target":Landroid/view/View;
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_8
    goto :goto_3

    .line 584
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown focus type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    .end local v2    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v0, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_9
    :goto_3
    move-object v0, v2

    move-object v1, v7

    move-object v2, v0

    move-object v3, v15

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 590
    nop

    .line 591
    return-void

    .line 588
    .end local v0    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v2    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_a
    :goto_4
    move-object v1, v7

    move-object v3, v15

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 536
    return-void

    .line 588
    :catchall_0
    move-exception v0

    move-object/from16 v18, v2

    .end local v2    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v18, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v1, v7

    move-object/from16 v2, v18

    move-object v3, v15

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findViewByAccessibilityId(I)Landroid/view/View;
    .locals 4
    .param p1, "accessibilityId"    # I

    .line 726
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 727
    .local v0, "root":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 728
    return-object v1

    .line 730
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v2

    .line 731
    .local v2, "foundView":Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 732
    return-object v1

    .line 734
    :cond_1
    return-object v2
.end method

.method private focusSearchUiThread(Landroid/os/Message;)V
    .locals 19
    .param p1, "message"    # Landroid/os/Message;

    move-object/from16 v9, p0

    .line 615
    move-object/from16 v10, p1

    iget v11, v10, Landroid/os/Message;->arg1:I

    .line 616
    .local v11, "flags":I
    iget v12, v10, Landroid/os/Message;->arg2:I

    .line 618
    .local v12, "accessibilityViewId":I
    iget-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/android/internal/os/SomeArgs;

    .line 619
    .local v13, "args":Lcom/android/internal/os/SomeArgs;
    iget v14, v13, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 620
    .local v14, "direction":I
    iget v15, v13, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 621
    .local v15, "interactionId":I
    iget-object v0, v13, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 623
    .local v16, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v13, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/MagnificationSpec;

    .line 624
    .local v17, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v13, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Region;

    .line 626
    .local v18, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v13}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 628
    const/4 v2, 0x0

    .line 630
    .local v2, "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    iget-object v0, v9, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, v9, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto :goto_2

    .line 633
    :cond_0
    iget-object v0, v9, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v11, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, "root":Landroid/view/View;
    const v1, 0x7ffffffe

    if-eq v12, v1, :cond_1

    .line 636
    invoke-direct {v9, v12}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 638
    :cond_1
    iget-object v1, v9, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object v0, v1

    .line 640
    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {v9, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    invoke-virtual {v0, v14}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 642
    .local v1, "nextView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 643
    invoke-virtual {v1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .end local v1    # "nextView":Landroid/view/View;
    .end local v2    # "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v0, "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 647
    .end local v0    # "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v2    # "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    move-object v0, v2

    .end local v2    # "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v0    # "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    move-object v1, v9

    move-object v2, v0

    move-object/from16 v3, v16

    move v4, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 649
    nop

    .line 650
    return-void

    .line 647
    .end local v0    # "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v2    # "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    :goto_2
    move-object v1, v9

    move-object/from16 v3, v16

    move v4, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 631
    return-void

    .line 647
    :catchall_0
    move-exception v0

    move-object v3, v9

    move-object v4, v2

    move-object/from16 v5, v16

    move v6, v15

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v0
.end method

.method private handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 913
    const-string v0, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 914
    .local v0, "span":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/text/style/AccessibilityClickableSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 915
    return v2

    .line 919
    :cond_0
    const/4 v1, 0x0

    .line 920
    .local v1, "infoWithSpan":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 921
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_1

    .line 922
    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_0

    .line 923
    :cond_1
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    .line 924
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 926
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 927
    return v2

    .line 931
    :cond_3
    move-object v4, v0

    check-cast v4, Landroid/text/style/AccessibilityClickableSpan;

    .line 932
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 931
    invoke-virtual {v4, v5}, Landroid/text/style/AccessibilityClickableSpan;->findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;

    move-result-object v4

    .line 933
    .local v4, "clickableSpan":Landroid/text/style/ClickableSpan;
    if-eqz v4, :cond_4

    .line 934
    invoke-virtual {v4, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 935
    const/4 v2, 0x1

    return v2

    .line 937
    :cond_4
    return v2
.end method

.method private holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z
    .locals 20
    .param p1, "originalMessage"    # Landroid/os/Message;
    .param p2, "callingPid"    # I
    .param p3, "callingTid"    # J

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 186
    iget-object v9, v7, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 188
    :try_start_0
    iget v0, v7, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 189
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    .line 190
    monitor-exit v9

    return v10

    .line 194
    :cond_0
    iget v0, v8, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 196
    monitor-exit v9

    return v2

    .line 198
    :cond_1
    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 199
    .local v0, "originalMessageArgs":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    move-object v11, v1

    .line 200
    .local v11, "requestArguments":Landroid/os/Bundle;
    if-nez v11, :cond_2

    .line 201
    monitor-exit v9

    return v2

    .line 205
    :cond_2
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move v12, v1

    .line 206
    .local v12, "accessibilityViewId":I
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 207
    invoke-virtual {v1, v12}, Landroid/view/accessibility/AccessibilityManager;->getRequestPreparersForAccessibilityId(I)Ljava/util/List;

    move-result-object v1

    move-object v13, v1

    .line 208
    .local v13, "preparers":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    if-nez v13, :cond_3

    .line 209
    monitor-exit v9

    return v2

    .line 213
    :cond_3
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 214
    .local v14, "extraDataKey":Ljava/lang/String;
    if-nez v14, :cond_4

    .line 215
    monitor-exit v9

    return v2

    .line 219
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v7, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 220
    nop

    .local v2, "i":I
    :goto_0
    move v15, v2

    .end local v2    # "i":I
    .local v15, "i":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_6

    .line 221
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v6, v1

    .line 223
    .local v6, "requestPreparerMessage":Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    move-object v4, v1

    .line 225
    .local v4, "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    nop

    .line 226
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_5

    .line 227
    const/4 v1, -0x1

    goto :goto_1

    :cond_5
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    :goto_1
    iput v1, v4, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 228
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 229
    iput-object v14, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 230
    iput-object v11, v4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 231
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v5, v1

    .line 233
    .local v5, "preparationFinishedMessage":Landroid/os/Message;
    iget v1, v7, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    add-int/2addr v1, v10

    iput v1, v7, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    iput v1, v5, Landroid/os/Message;->arg1:I

    .line 234
    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 236
    iput-object v4, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 237
    const/16 v16, 0x1

    move-object v1, v7

    move-object v2, v6

    move/from16 v3, p2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-wide/from16 v4, p3

    .end local v4    # "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    .end local v5    # "preparationFinishedMessage":Landroid/os/Message;
    .local v17, "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    .local v18, "preparationFinishedMessage":Landroid/os/Message;
    move-object/from16 v19, v6

    move/from16 v6, v16

    .end local v6    # "requestPreparerMessage":Landroid/os/Message;
    .local v19, "requestPreparerMessage":Landroid/os/Message;
    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 239
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 240
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 220
    .end local v17    # "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    .end local v18    # "preparationFinishedMessage":Landroid/os/Message;
    .end local v19    # "requestPreparerMessage":Landroid/os/Message;
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 245
    .end local v2    # "i":I
    :cond_6
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    .line 246
    monitor-exit v9

    return v10

    .line 247
    .end local v0    # "originalMessageArgs":Lcom/android/internal/os/SomeArgs;
    .end local v11    # "requestArguments":Landroid/os/Bundle;
    .end local v12    # "accessibilityViewId":I
    .end local v13    # "preparers":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    .end local v14    # "extraDataKey":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isShown(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 147
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0
.end method

.method private performAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .line 674
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 675
    .local v0, "flags":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 677
    .local v1, "accessibilityViewId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 678
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 679
    .local v3, "virtualDescendantId":I
    iget v4, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 680
    .local v4, "action":I
    iget v5, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 681
    .local v5, "interactionId":I
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 683
    .local v6, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    .line 685
    .local v7, "arguments":Landroid/os/Bundle;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 687
    const/4 v8, 0x0

    move v9, v8

    .line 689
    .local v9, "succeeded":Z
    :try_start_0
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v10, v10, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v10, :cond_5

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v10, v10, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v10, :cond_0

    goto :goto_3

    .line 693
    :cond_0
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 694
    const/4 v10, 0x0

    .line 695
    .local v10, "target":Landroid/view/View;
    const v11, 0x7ffffffe

    if-eq v1, v11, :cond_1

    .line 696
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v11

    move-object v10, v11

    goto :goto_0

    .line 698
    :cond_1
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object v10, v11

    .line 700
    :goto_0
    if-eqz v10, :cond_4

    invoke-direct {p0, v10}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 701
    const v11, 0x102016b

    if-ne v4, v11, :cond_2

    .line 703
    invoke-direct {p0, v10, v3, v7}, Landroid/view/AccessibilityInteractionController;->handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v11

    move v9, v11

    goto :goto_1

    .line 706
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v11

    .line 707
    .local v11, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v11, :cond_3

    .line 708
    invoke-virtual {v11, v3, v4, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v12

    move v9, v12

    goto :goto_1

    .line 710
    :cond_3
    const/4 v12, -0x1

    if-ne v3, v12, :cond_4

    .line 711
    invoke-virtual {v10, v4, v7}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v12

    .line 717
    .end local v10    # "target":Landroid/view/View;
    .end local v11    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4
    :goto_1
    :try_start_1
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v8, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 718
    invoke-interface {v6, v9, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 721
    goto :goto_2

    .line 719
    :catch_0
    move-exception v8

    .line 722
    nop

    .line 723
    :goto_2
    return-void

    .line 717
    :cond_5
    :goto_3
    :try_start_2
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v8, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 718
    invoke-interface {v6, v9, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 721
    goto :goto_4

    .line 719
    :catch_1
    move-exception v8

    .line 691
    :goto_4
    return-void

    .line 716
    :catchall_0
    move-exception v10

    .line 717
    :try_start_3
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v8, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 718
    invoke-interface {v6, v9, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 721
    goto :goto_5

    .line 719
    :catch_2
    move-exception v8

    .line 721
    :goto_5
    throw v10
.end method

.method private prepareForExtraDataRequestUiThread(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 251
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 252
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 253
    .local v1, "virtualDescendantId":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 254
    .local v2, "preparer":Landroid/view/accessibility/AccessibilityRequestPreparer;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 255
    .local v3, "extraDataKey":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 256
    .local v4, "requestArguments":Landroid/os/Bundle;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    .line 258
    .local v5, "preparationFinishedMessage":Landroid/os/Message;
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/view/accessibility/AccessibilityRequestPreparer;->onPrepareExtraData(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)V

    .line 260
    return-void
.end method

.method private queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "interrogatingPid"    # I
    .param p3, "interrogatingTid"    # J

    .line 264
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    .line 267
    :cond_0
    new-instance v0, Landroid/view/AccessibilityInteractionController$MessageHolder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController$MessageHolder;-><init>(Landroid/os/Message;IJ)V

    .line 269
    .local v0, "messageHolder":Landroid/view/AccessibilityInteractionController$MessageHolder;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method private recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 2
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 896
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 899
    if-eqz p1, :cond_1

    .line 900
    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->recycle()V

    goto :goto_0

    .line 905
    :cond_0
    if-eqz p2, :cond_1

    .line 906
    invoke-virtual {p2}, Landroid/graphics/Region;->recycle()V

    .line 909
    :cond_1
    :goto_0
    return-void
.end method

.method private requestPreparerDoneUiThread(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 273
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    if-eq v1, v2, :cond_0

    .line 275
    const-string v1, "AccessibilityInteractionController"

    const-string v2, "Surprising AccessibilityRequestPreparer callback (likely late)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    monitor-exit v0

    return-void

    .line 278
    :cond_0
    iget v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 279
    iget v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    if-gtz v1, :cond_1

    .line 280
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    .line 283
    :cond_1
    monitor-exit v0

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestPreparerTimeoutUiThread()V
    .locals 3

    .line 287
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    const-string v1, "AccessibilityInteractionController"

    const-string v2, "AccessibilityRequestPreparer timed out"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    .line 290
    monitor-exit v0

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleAllMessagesWaitingForRequestPreparerLocked()V
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 295
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 296
    .local v0, "numMessages":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 297
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/AccessibilityInteractionController$MessageHolder;

    .line 298
    .local v3, "request":Landroid/view/AccessibilityInteractionController$MessageHolder;
    iget-object v5, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mMessage:Landroid/os/Message;

    iget v6, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingPid:I

    iget-wide v7, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingTid:J

    if-nez v2, :cond_0

    const/4 v4, 0x1

    move v9, v4

    goto :goto_1

    :cond_0
    move v9, v1

    :goto_1
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 296
    .end local v3    # "request":Landroid/view/AccessibilityInteractionController$MessageHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 303
    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 304
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    .line 305
    return-void
.end method

.method private scheduleMessage(Landroid/os/Message;IJZ)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "interrogatingPid"    # I
    .param p3, "interrogatingTid"    # J
    .param p5, "ignoreRequestPreparers"    # Z

    .line 127
    if-nez p5, :cond_0

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    :cond_0
    iget v0, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p2, v0, :cond_1

    iget-wide v0, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    .line 134
    invoke-static {p3, p4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    :cond_2
    :goto_0
    return-void
.end method

.method private shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .locals 1
    .param p1, "appScale"    # F
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .line 859
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I
    .param p4, "spec"    # Landroid/view/MagnificationSpec;
    .param p5, "interactiveRegion"    # Landroid/graphics/Region;

    .line 884
    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 885
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 886
    invoke-direct {p0, p1, p5}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    .line 887
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 891
    :catchall_0
    move-exception v0

    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v0

    .line 888
    :catch_0
    move-exception v0

    .line 891
    :goto_0
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 892
    nop

    .line 893
    return-void
.end method

.method private updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 2
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I
    .param p4, "spec"    # Landroid/view/MagnificationSpec;
    .param p5, "interactiveRegion"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            "I",
            "Landroid/view/MagnificationSpec;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .line 866
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 867
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 868
    invoke-direct {p0, p1, p5}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    .line 869
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 870
    if-eqz p1, :cond_0

    .line 871
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 876
    :catchall_0
    move-exception v0

    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v0

    .line 873
    :catch_0
    move-exception v0

    .line 876
    :cond_0
    :goto_0
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 877
    nop

    .line 878
    return-void
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .locals 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactiveRegion"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;
    .param p11, "arguments"    # Landroid/os/Bundle;

    .line 156
    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 157
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v7, Landroid/os/Message;->what:I

    .line 158
    move/from16 v8, p6

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 160
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 161
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 162
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 163
    move/from16 v10, p4

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 164
    move-object/from16 v11, p5

    iput-object v11, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 165
    move-object/from16 v12, p10

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 166
    move-object/from16 v13, p3

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 167
    move-object/from16 v14, p11

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 168
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, p7

    move-wide/from16 v3, p8

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 171
    return-void
.end method

.method public findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .line 414
    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 415
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x4

    iput v0, v7, Landroid/os/Message;->what:I

    .line 416
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 418
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 419
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v10, p3

    iput-object v10, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 420
    move-object/from16 v11, p6

    iput-object v11, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 421
    move-object/from16 v12, p11

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 422
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 423
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 424
    move/from16 v13, p5

    iput v13, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 425
    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 426
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 428
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 429
    return-void
.end method

.method public findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .line 349
    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 350
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x3

    iput v0, v7, Landroid/os/Message;->what:I

    .line 351
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 352
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    .line 354
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 355
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    move/from16 v10, p5

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 356
    move-object/from16 v11, p6

    iput-object v11, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 357
    move-object/from16 v12, p11

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 358
    move-object/from16 v13, p3

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 359
    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 360
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 362
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 363
    return-void
.end method

.method public findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .line 501
    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 502
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x5

    iput v0, v7, Landroid/os/Message;->what:I

    .line 503
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 504
    move/from16 v9, p3

    iput v9, v7, Landroid/os/Message;->arg2:I

    .line 506
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v10

    .line 507
    .local v10, "args":Lcom/android/internal/os/SomeArgs;
    move/from16 v11, p5

    iput v11, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 508
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 509
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 510
    move-object/from16 v12, p6

    iput-object v12, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 511
    move-object/from16 v13, p11

    iput-object v13, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 512
    move-object/from16 v14, p4

    iput-object v14, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 514
    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 516
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 517
    return-void
.end method

.method public focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .line 597
    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 598
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x6

    iput v0, v7, Landroid/os/Message;->what:I

    .line 599
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 600
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    .line 602
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 603
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    move/from16 v10, p3

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 604
    move/from16 v11, p5

    iput v11, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 605
    move-object/from16 v12, p6

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 606
    move-object/from16 v13, p11

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 607
    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 609
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 611
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 612
    return-void
.end method

.method public performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 14
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J

    .line 656
    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 657
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v7, Landroid/os/Message;->what:I

    .line 658
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 659
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    .line 661
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 662
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 663
    move/from16 v10, p3

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 664
    move/from16 v11, p5

    iput v11, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 665
    move-object/from16 v12, p6

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 666
    move-object/from16 v13, p4

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 668
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 670
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 671
    return-void
.end method
