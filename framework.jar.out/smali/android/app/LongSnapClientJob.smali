.class public Landroid/app/LongSnapClientJob;
.super Ljava/lang/Object;
.source "LongSnapClientJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LongSnapClientJob$VLHolder;,
        Landroid/app/LongSnapClientJob$ViewInfoNode;,
        Landroid/app/LongSnapClientJob$ClientWorkHandler;
    }
.end annotation


# static fields
.field private static final CALCULATE_DISTANCE_INTERVAL:I = 0x190

.field private static final DEBUG:Z = false

.field private static final KEY_MOVE_DISTANCE:Ljava/lang/String; = "distance"

.field public static final LONG_SNAP_NOTIFY_SOME_ACTIVITY_READY:I = 0x64

.field private static final LONG_SNAP_REPORT_SCROLL_DISTANCE:I = 0x130

.field public static final LONG_SNAP_REPORT_SCROLL_OK:I = 0x68

.field public static final LONG_SNAP_REQUEST_LONGSNAP:I = 0x63

.field public static final LONG_SNAP_REQUEST_SCROLL:I = 0x67

.field public static final LONG_SNAP_REQUEST_SCROLL_OVER:I = 0x6c

.field public static final LONG_SNAP_REQUEST_SCROLL_OVER_OK:I = 0x6d

.field public static final LONG_SNAP_REQUEST_TERMINATE:I = 0x6b

.field private static final LS_LOCATION:Ljava/lang/String; = "ls_location"

.field private static final MOVE_EVENT_INTERVAL_TIME:I = 0x1

.field private static final NATIVE_MSG_CALCULATE_DISTANCE:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "LongSnapClientJob"

.field public static final TAG_FOR_APP_LONGSNAP:Ljava/lang/String; = "cn.nubia.supersnap.longsnap"

.field public static final TYPE_FOR_APP_LONGSNAP:I = 0x67

.field private static mAcquirePerformace:Ljava/lang/reflect/Method;

.field private static mReleasePerformance:Ljava/lang/reflect/Method;


# instance fields
.field private final MOVE_EVENT_COUNT:I

.field private final MOVE_EVENT_X:I

.field private final NATIVE_MSG_CHECK:I

.field private final NATIVE_MSG_FAKE_TOUCH_DOWN:I

.field private final NATIVE_MSG_FAKE_TOUCH_MOVE:I

.field private final NATIVE_MSG_FAKE_TOUCH_UP:I

.field private final NATIVE_MSG_NEXT_SNAP:I

.field private final NATIVE_MSG_PREPARE_LONGSNAP:I

.field private final NATIVE_MSG_SCROLL:I

.field private final NATIVE_MSG_SCROLL_OVER:I

.field public final NOTIFY_SERVICE_CAN_LONG_SNAP:Ljava/lang/String;

.field private final SCROLL_SCREEN_COUNT:I

.field private final SCROLL_TYPE_UP_TO_DOWN:I

.field private final SCROLL_TYPE_UP_TO_UP:I

.field private bAcquirePerformace:Z

.field private mActivityMessenger:Landroid/os/Messenger;

.field mBound:Z

.field private mCanLongSnap:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentVLList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/LongSnapClientJob$VLHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mDecorView:Landroid/view/View;

.field private mDispHeight:I

.field private mDispWidth:I

.field private mDispatchDecorView:Z

.field private mLSWithViewLocationEnabled:Z

.field private mLongSnapBinder:Landroid/os/IBinder;

.field private mLongsnapService:Landroid/os/Messenger;

.field private mLongsnapServiceConn:Landroid/content/ServiceConnection;

.field private mMaxStrideOffsetY:I

.field private mMoveDistanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOutHandler:Landroid/os/Handler;

.field private mPreviousVLList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/LongSnapClientJob$VLHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

.field private mStrideOffsetY:I

.field private mViewNodesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/LongSnapClientJob$ViewInfoNode;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "outHandler"    # Landroid/os/Handler;
    .param p3, "decorView"    # Landroid/view/View;
    .param p4, "dispWidth"    # I
    .param p5, "dispHeight"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LongSnapClientJob;->bAcquirePerformace:Z

    .line 76
    new-instance v1, Landroid/app/LongSnapClientJob$1;

    invoke-direct {v1, p0}, Landroid/app/LongSnapClientJob$1;-><init>(Landroid/app/LongSnapClientJob;)V

    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mLongsnapServiceConn:Landroid/content/ServiceConnection;

    .line 544
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;

    .line 545
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mOutHandler:Landroid/os/Handler;

    .line 546
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mLongsnapService:Landroid/os/Messenger;

    .line 547
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    .line 551
    iput-boolean v0, p0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    .line 552
    iput-boolean v0, p0, Landroid/app/LongSnapClientJob;->mDispatchDecorView:Z

    .line 555
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mActivityMessenger:Landroid/os/Messenger;

    .line 556
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mWorkHandler:Landroid/os/Handler;

    .line 558
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/LongSnapClientJob;->mViewNodesList:Ljava/util/ArrayList;

    .line 559
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    .line 561
    const/4 v1, -0x5

    iput v1, p0, Landroid/app/LongSnapClientJob;->mStrideOffsetY:I

    .line 562
    iput v0, p0, Landroid/app/LongSnapClientJob;->mMaxStrideOffsetY:I

    .line 564
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/LongSnapClientJob;->SCROLL_TYPE_UP_TO_UP:I

    .line 565
    const/4 v1, 0x1

    iput v1, p0, Landroid/app/LongSnapClientJob;->SCROLL_TYPE_UP_TO_DOWN:I

    .line 567
    const/16 v1, 0xc

    iput v1, p0, Landroid/app/LongSnapClientJob;->SCROLL_SCREEN_COUNT:I

    .line 568
    const/16 v1, 0x32

    iput v1, p0, Landroid/app/LongSnapClientJob;->MOVE_EVENT_COUNT:I

    .line 570
    const/16 v1, 0xa0

    iput v1, p0, Landroid/app/LongSnapClientJob;->MOVE_EVENT_X:I

    .line 581
    const/16 v1, 0xc8

    iput v1, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_PREPARE_LONGSNAP:I

    .line 582
    const/16 v1, 0xca

    iput v1, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_NEXT_SNAP:I

    .line 583
    const/16 v1, 0xcb

    iput v1, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_CHECK:I

    .line 584
    const/16 v1, 0xd2

    iput v1, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_FAKE_TOUCH_DOWN:I

    .line 585
    const/16 v1, 0xd3

    iput v1, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_FAKE_TOUCH_MOVE:I

    .line 586
    const/16 v1, 0xd4

    iput v1, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_FAKE_TOUCH_UP:I

    .line 588
    const/16 v1, 0xd5

    iput v1, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_SCROLL:I

    .line 589
    const/16 v1, 0xd6

    iput v1, p0, Landroid/app/LongSnapClientJob;->NATIVE_MSG_SCROLL_OVER:I

    .line 591
    const-string v1, "canLongSnap"

    iput-object v1, p0, Landroid/app/LongSnapClientJob;->NOTIFY_SERVICE_CAN_LONG_SNAP:Ljava/lang/String;

    .line 598
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mPreviousVLList:Ljava/util/List;

    .line 599
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mCurrentVLList:Ljava/util/List;

    .line 601
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mMoveDistanceMap:Ljava/util/Map;

    .line 602
    iput-boolean v0, p0, Landroid/app/LongSnapClientJob;->mLSWithViewLocationEnabled:Z

    .line 54
    iput-object p1, p0, Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Landroid/app/LongSnapClientJob;->mOutHandler:Landroid/os/Handler;

    .line 56
    iput-object p3, p0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    .line 57
    iput p4, p0, Landroid/app/LongSnapClientJob;->mDispWidth:I

    .line 58
    iput p5, p0, Landroid/app/LongSnapClientJob;->mDispHeight:I

    .line 59
    return-void
.end method

.method static synthetic access$002(Landroid/app/LongSnapClientJob;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 42
    iput-object p1, p0, Landroid/app/LongSnapClientJob;->mLongsnapService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .line 42
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/LongSnapClientJob;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .line 42
    iget-boolean v0, p0, Landroid/app/LongSnapClientJob;->bAcquirePerformace:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/app/LongSnapClientJob;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Landroid/app/LongSnapClientJob;->bAcquirePerformace:Z

    return p1
.end method

.method static synthetic access$102(Landroid/app/LongSnapClientJob;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;
    .param p1, "x1"    # Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Landroid/app/LongSnapClientJob;->mWorkHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/app/LongSnapClientJob;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .line 42
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->acquirePerformance()V

    return-void
.end method

.method static synthetic access$1200(Landroid/app/LongSnapClientJob;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .line 42
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->releasePerformance()V

    return-void
.end method

.method static synthetic access$1300(Landroid/app/LongSnapClientJob;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .line 42
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mLongsnapServiceConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/app/LongSnapClientJob;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .line 42
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/app/LongSnapClientJob;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .line 42
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->doCheckScrollable()V

    return-void
.end method

.method static synthetic access$1600(Landroid/app/LongSnapClientJob;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .line 42
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->sendNotifyActivityReady()V

    return-void
.end method

.method static synthetic access$202(Landroid/app/LongSnapClientJob;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 42
    iput-object p1, p0, Landroid/app/LongSnapClientJob;->mActivityMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/LongSnapClientJob;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .line 42
    iget-boolean v0, p0, Landroid/app/LongSnapClientJob;->mLSWithViewLocationEnabled:Z

    return v0
.end method

.method static synthetic access$400(Landroid/app/LongSnapClientJob;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .line 42
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->clearPreviousLocationData()V

    return-void
.end method

.method static synthetic access$500(Landroid/app/LongSnapClientJob;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .line 42
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/LongSnapClientJob;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;
    .param p1, "x1"    # Landroid/view/View;

    .line 42
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->scanAllViewLocation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Landroid/app/LongSnapClientJob;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;
    .param p1, "x1"    # Landroid/os/Message;

    .line 42
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->sendDragEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Landroid/app/LongSnapClientJob;J)V
    .locals 0
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;
    .param p1, "x1"    # J

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/app/LongSnapClientJob;->sendCalculateDistanceMsg(J)V

    return-void
.end method

.method static synthetic access$900(Landroid/app/LongSnapClientJob;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/LongSnapClientJob;

    .line 42
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->calculateMoveDistance()I

    move-result v0

    return v0
.end method

.method private acquirePerformance()V
    .locals 5

    .line 235
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mLongSnapBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 236
    return-void

    .line 238
    :cond_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/LongSnapClientJob;->mLongSnapBinder:Landroid/os/IBinder;

    .line 239
    sget-object v0, Landroid/app/LongSnapClientJob;->mAcquirePerformace:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 241
    :try_start_0
    sget-object v0, Landroid/app/LongSnapClientJob;->mAcquirePerformace:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/app/LongSnapClientJob;->mLongSnapBinder:Landroid/os/IBinder;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "cn.nubia.supersnap.longsnap"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x67

    .line 242
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x3a98

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 241
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private calculateMoveDistance()I
    .locals 8

    .line 631
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mMoveDistanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 632
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mPreviousVLList:Ljava/util/List;

    iget-object v1, p0, Landroid/app/LongSnapClientJob;->mCurrentVLList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 633
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mCurrentVLList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 634
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/LongSnapClientJob;->scanAllViewLocation(Landroid/view/View;)V

    .line 636
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mMoveDistanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 637
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 638
    .local v1, "calculateViewCnt":I
    const/4 v2, -0x1

    .line 639
    .local v2, "sameDistanceMoveCount":I
    const/4 v3, 0x0

    .line 640
    .local v3, "mostViewMoveDistant":I
    const/4 v4, -0x1

    .line 641
    .local v4, "moveCount":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 642
    .local v6, "distance":Ljava/lang/Integer;
    iget-object v7, p0, Landroid/app/LongSnapClientJob;->mMoveDistanceMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 643
    add-int/2addr v1, v4

    .line 644
    if-ge v2, v4, :cond_0

    .line 645
    move v2, v4

    .line 646
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 648
    .end local v6    # "distance":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 653
    :cond_1
    invoke-direct {p0, v3}, Landroid/app/LongSnapClientJob;->sendCalculateDistanceToSS(I)V

    .line 654
    const/4 v5, 0x0

    return v5
.end method

.method private canLongSnap()V
    .locals 3

    .line 198
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 199
    iput-boolean v1, p0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    goto :goto_2

    .line 201
    :cond_0
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v0, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/16 v2, 0x96

    if-le v0, v2, :cond_3

    .line 202
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v0, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v0, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    goto :goto_2

    .line 205
    :cond_3
    iput-boolean v1, p0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    .line 208
    :goto_2
    return-void
.end method

.method private clearPreviousLocationData()V
    .locals 1

    .line 625
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mCurrentVLList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 626
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mPreviousVLList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 627
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mMoveDistanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 628
    return-void
.end method

.method private computeVerticalScrollOffset(Landroid/view/View;)I
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 443
    const/4 v0, 0x0

    .line 446
    .local v0, "retval":Ljava/lang/Integer;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.view.View"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 447
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "computeVerticalScrollOffset"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 449
    .local v3, "meth":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 450
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 451
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 452
    .local v4, "retobj":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 457
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "meth":Ljava/lang/reflect/Method;
    .end local v4    # "retobj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 455
    :catch_0
    move-exception v2

    .line 459
    :goto_0
    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 462
    :cond_1
    return v1
.end method

.method private computeVerticalScrollRange(Landroid/view/View;)I
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 466
    const/4 v0, 0x0

    .line 469
    .local v0, "retval":Ljava/lang/Integer;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.view.View"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 470
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "computeVerticalScrollRange"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 472
    .local v3, "meth":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 473
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 474
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 475
    .local v4, "retobj":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 480
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "meth":Ljava/lang/reflect/Method;
    .end local v4    # "retobj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 478
    :catch_0
    move-exception v2

    .line 482
    :goto_0
    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 485
    :cond_1
    return v1
.end method

.method private doCheckScrollable()V
    .locals 0

    .line 192
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->scanAllViews()V

    .line 193
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->findBiggestScrollView()V

    .line 194
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->canLongSnap()V

    .line 195
    return-void
.end method

.method private findBiggestScrollView()V
    .locals 5

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "node":Landroid/app/LongSnapClientJob$ViewInfoNode;
    const/4 v1, 0x0

    .line 322
    .local v1, "i":I
    const/4 v2, 0x0

    .line 324
    .local v2, "val":I
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    .line 326
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/app/LongSnapClientJob;->mViewNodesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 327
    iget-object v3, p0, Landroid/app/LongSnapClientJob;->mViewNodesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/LongSnapClientJob$ViewInfoNode;

    .line 328
    iget-boolean v3, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->canScroll:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-direct {p0, v3}, Landroid/app/LongSnapClientJob;->isVisibleToUser(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_0

    .line 329
    goto :goto_1

    .line 331
    :cond_0
    iget-object v3, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    if-le v3, v2, :cond_1

    .line 332
    iget-object v3, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    .line 333
    .end local v2    # "val":I
    .local v3, "val":I
    iput-object v0, p0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    .line 326
    move v2, v3

    .end local v3    # "val":I
    .restart local v2    # "val":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_2
    return-void
.end method

.method private getViewLocation(Landroid/view/View;)[I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 707
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 708
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 709
    return-object v0
.end method

.method private inTargetRegion([I)Z
    .locals 4
    .param p1, "location"    # [I

    .line 713
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    if-lez v1, :cond_0

    aget v1, p1, v0

    iget v3, p0, Landroid/app/LongSnapClientJob;->mDispWidth:I

    if-ge v1, v3, :cond_0

    aget v1, p1, v2

    iget v3, p0, Landroid/app/LongSnapClientJob;->mDispHeight:I

    div-int/lit8 v3, v3, 0x5

    mul-int/lit8 v3, v3, 0x2

    if-le v1, v3, :cond_0

    aget v1, p1, v2

    iget v3, p0, Landroid/app/LongSnapClientJob;->mDispHeight:I

    div-int/lit8 v3, v3, 0x5

    mul-int/lit8 v3, v3, 0x3

    if-ge v1, v3, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0
.end method

.method private initBSPApplicatiionManager()V
    .locals 9

    .line 222
    :try_start_0
    const-string v0, "android.os.BSPApplicationManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 223
    .local v0, "manager":Ljava/lang/Class;
    const-string v1, "PERFORMANCE_LOCK_TYPE_APP_LAUNCHER_START_APP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 225
    .local v1, "field":Ljava/lang/reflect/Field;
    const-string v2, "android.os.BSPApplicationManager$Trigger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 226
    .local v2, "trigger":Ljava/lang/Class;
    const-string v3, "acquirePerformanceLock"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v5

    const/4 v5, 0x3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/app/LongSnapClientJob;->mAcquirePerformace:Ljava/lang/reflect/Method;

    .line 228
    const-string/jumbo v3, "releasePerformanceLock"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/app/LongSnapClientJob;->mReleasePerformance:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v0    # "manager":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "trigger":Ljava/lang/Class;
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private isVisibleToUser(Landroid/view/View;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 489
    const/4 v0, 0x0

    .line 492
    .local v0, "retval":Ljava/lang/Boolean;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.view.View"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 493
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "isVisibleToUser"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 495
    .local v3, "meth":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 496
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 497
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 498
    .local v4, "retobj":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 503
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "meth":Ljava/lang/reflect/Method;
    .end local v4    # "retobj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 501
    :catch_0
    move-exception v2

    .line 505
    :goto_0
    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 508
    :cond_1
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 720
    const-string v0, "LSCJ"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void
.end method

.method private releasePerformance()V
    .locals 5

    .line 250
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mLongSnapBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 251
    return-void

    .line 252
    :cond_0
    sget-object v0, Landroid/app/LongSnapClientJob;->mReleasePerformance:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 254
    :try_start_0
    sget-object v0, Landroid/app/LongSnapClientJob;->mReleasePerformance:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/app/LongSnapClientJob;->mLongSnapBinder:Landroid/os/IBinder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iput-object v1, p0, Landroid/app/LongSnapClientJob;->mLongSnapBinder:Landroid/os/IBinder;

    .line 260
    return-void
.end method

.method private scanAllViewLocation(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 669
    if-nez p1, :cond_0

    .line 670
    return-void

    .line 672
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 673
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 674
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 675
    .local v1, "childCount":I
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->scanSingleViewLocation(Landroid/view/View;)V

    .line 676
    if-lez v1, :cond_1

    .line 677
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 678
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/LongSnapClientJob;->scanAllViewLocation(Landroid/view/View;)V

    .line 677
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 681
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    :cond_2
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 682
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->scanSingleViewLocation(Landroid/view/View;)V

    .line 684
    :cond_3
    :goto_1
    return-void
.end method

.method private scanAllViews()V
    .locals 2

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "viewNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    iget-object v1, p0, Landroid/app/LongSnapClientJob;->mViewNodesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object v1, p0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/app/LongSnapClientJob;->traverseScanViews(Landroid/view/View;)Landroid/app/LongSnapClientJob$ViewInfoNode;

    move-result-object v1

    .line 217
    .local v1, "node":Landroid/app/LongSnapClientJob$ViewInfoNode;
    return-void
.end method

.method private scanSingleViewLocation(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 687
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->getViewLocation(Landroid/view/View;)[I

    move-result-object v0

    .line 688
    .local v0, "location":[I
    invoke-direct {p0, v0}, Landroid/app/LongSnapClientJob;->inTargetRegion([I)Z

    move-result v1

    .line 689
    .local v1, "inTargetRegion":Z
    if-eqz v1, :cond_0

    .line 690
    new-instance v2, Landroid/app/LongSnapClientJob$VLHolder;

    invoke-direct {v2, p0, p1, v0}, Landroid/app/LongSnapClientJob$VLHolder;-><init>(Landroid/app/LongSnapClientJob;Landroid/view/View;[I)V

    .line 691
    .local v2, "holder":Landroid/app/LongSnapClientJob$VLHolder;
    iget-object v3, p0, Landroid/app/LongSnapClientJob;->mCurrentVLList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    .end local v2    # "holder":Landroid/app/LongSnapClientJob$VLHolder;
    :cond_0
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mPreviousVLList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LongSnapClientJob$VLHolder;

    .line 694
    .local v3, "holder":Landroid/app/LongSnapClientJob$VLHolder;
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget v5, v3, Landroid/app/LongSnapClientJob$VLHolder;->hashCode:I

    if-ne v4, v5, :cond_2

    .line 695
    iget v4, v3, Landroid/app/LongSnapClientJob$VLHolder;->y:I

    const/4 v5, 0x1

    aget v6, v0, v5

    sub-int/2addr v4, v6

    .line 696
    .local v4, "moveDistance":I
    iget-object v6, p0, Landroid/app/LongSnapClientJob;->mMoveDistanceMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 697
    iget-object v6, p0, Landroid/app/LongSnapClientJob;->mMoveDistanceMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Landroid/app/LongSnapClientJob;->mMoveDistanceMap:Ljava/util/Map;

    .line 698
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 697
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 700
    :cond_1
    iget-object v6, p0, Landroid/app/LongSnapClientJob;->mMoveDistanceMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    .end local v3    # "holder":Landroid/app/LongSnapClientJob$VLHolder;
    .end local v4    # "moveDistance":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 704
    :cond_3
    return-void
.end method

.method private scanView(Landroid/view/View;)Landroid/app/LongSnapClientJob$ViewInfoNode;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 306
    const/4 v0, 0x0

    .line 308
    .local v0, "viewNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    new-instance v1, Landroid/app/LongSnapClientJob$ViewInfoNode;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/LongSnapClientJob$ViewInfoNode;-><init>(Landroid/app/LongSnapClientJob;Landroid/app/LongSnapClientJob$1;)V

    move-object v0, v1

    .line 309
    iput-object p1, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewId:I

    .line 311
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 312
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->computeVerticalScrollRange(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->isVisibleToUser(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    instance-of v2, p1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    iput-boolean v1, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->canScroll:Z

    .line 314
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewRect:Landroid/graphics/Rect;

    .line 316
    return-object v0
.end method

.method private scanViewGroup(Landroid/view/ViewGroup;)Landroid/app/LongSnapClientJob$ViewInfoNode;
    .locals 10
    .param p1, "viewgroup"    # Landroid/view/ViewGroup;

    .line 283
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 284
    .local v0, "count":I
    const/4 v1, 0x0

    .line 285
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 286
    .local v2, "viewNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    const/4 v3, 0x0

    .line 287
    .local v3, "tmpNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v4, "childrenNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LongSnapClientJob$ViewInfoNode;>;"
    const/4 v5, 0x0

    move-object v6, v3

    move-object v3, v1

    move v1, v5

    .local v1, "i":I
    .local v3, "child":Landroid/view/View;
    .local v6, "tmpNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    :goto_0
    if-ge v1, v0, :cond_0

    .line 290
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 291
    invoke-direct {p0, v3}, Landroid/app/LongSnapClientJob;->traverseScanViews(Landroid/view/View;)Landroid/app/LongSnapClientJob$ViewInfoNode;

    move-result-object v6

    .line 292
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroid/app/LongSnapClientJob$ViewInfoNode;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v7}, Landroid/app/LongSnapClientJob$ViewInfoNode;-><init>(Landroid/app/LongSnapClientJob;Landroid/app/LongSnapClientJob$1;)V

    .line 296
    .end local v2    # "viewNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    .local v1, "viewNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    iput-object p1, v1, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    .line 297
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    iput v2, v1, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewId:I

    .line 298
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 299
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->computeVerticalScrollRange(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    if-lez v7, :cond_1

    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->isVisibleToUser(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    nop

    :cond_2
    :goto_1
    iput-boolean v2, v1, Landroid/app/LongSnapClientJob$ViewInfoNode;->canScroll:Z

    .line 300
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    .line 301
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v9

    invoke-direct {v2, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v1, Landroid/app/LongSnapClientJob$ViewInfoNode;->viewRect:Landroid/graphics/Rect;

    .line 302
    return-object v1
.end method

.method private sendCalculateDistanceMsg(J)V
    .locals 6
    .param p1, "start"    # J

    .line 618
    iget-object v0, p0, Landroid/app/LongSnapClientJob;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/LongSnapClientJob;->mWorkHandler:Landroid/os/Handler;

    .line 619
    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 620
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x190

    sub-long/2addr v4, v2

    .line 618
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 621
    return-void
.end method

.method private sendCalculateDistanceToSS(I)V
    .locals 3
    .param p1, "distance"    # I

    .line 658
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 659
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "distance"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 660
    const/4 v1, 0x0

    const/16 v2, 0x130

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 661
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mActivityMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 663
    :try_start_0
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mLongsnapService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    goto :goto_0

    .line 664
    :catch_0
    move-exception v2

    .line 666
    :goto_0
    return-void
.end method

.method private sendDragEvent(Landroid/os/Message;)V
    .locals 33
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 340
    const-string v1, "LongSnapClientJob"

    const-string v2, "Send drag screen start."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 342
    .local v1, "startTime":J
    iget-object v3, v0, Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 343
    .local v3, "densityScale":F
    iget-object v4, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    .line 344
    .local v4, "currentY":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 345
    .local v19, "downTime":J
    move-wide/from16 v7, v19

    .line 346
    .local v7, "eventTime":J
    iget-object v5, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    int-to-float v15, v5

    .line 347
    .local v15, "heightMoveOnce":F
    iget-object v5, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    div-int/lit8 v14, v5, 0x2

    .line 348
    .local v14, "moveX":I
    move/from16 v21, v4

    .line 349
    .local v21, "startY":F
    const/16 v22, 0x1

    .line 350
    .local v22, "handled":Z
    int-to-float v10, v14

    const/4 v9, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-wide/from16 v5, v19

    move v11, v4

    move/from16 v25, v14

    move/from16 v14, v16

    .end local v14    # "moveX":I
    .local v25, "moveX":I
    move/from16 v26, v15

    move/from16 v15, v17

    .end local v15    # "heightMoveOnce":F
    .local v26, "heightMoveOnce":F
    move/from16 v16, v18

    move/from16 v17, v23

    move/from16 v18, v24

    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v15

    .line 352
    .local v15, "downEvent":Landroid/view/MotionEvent;
    iget-object v5, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v5, v15}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    and-int v5, v22, v5

    .line 353
    .end local v22    # "handled":Z
    .local v5, "handled":Z
    const/4 v6, 0x0

    move/from16 v22, v5

    .end local v5    # "handled":Z
    .local v6, "i":I
    .restart local v22    # "handled":Z
    :goto_0
    move v14, v6

    .line 354
    .end local v6    # "i":I
    .local v14, "i":I
    const/16 v5, 0x32

    const-wide/16 v23, 0x1

    if-ge v14, v5, :cond_0

    .line 355
    const/high16 v5, 0x40000000    # 2.0f

    div-float v26, v26, v5

    .line 356
    sub-float v4, v4, v26

    .line 357
    add-long v23, v7, v23

    .line 358
    .end local v7    # "eventTime":J
    .local v23, "eventTime":J
    const/4 v9, 0x2

    move/from16 v13, v25

    int-to-float v10, v13

    .end local v25    # "moveX":I
    .local v13, "moveX":I
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-wide/from16 v5, v19

    move-wide/from16 v7, v23

    move v11, v4

    move/from16 v29, v13

    move/from16 v13, v16

    .end local v13    # "moveX":I
    .local v29, "moveX":I
    move/from16 v30, v14

    move/from16 v14, v17

    .end local v14    # "i":I
    .local v30, "i":I
    move-object/from16 v31, v15

    move/from16 v15, v18

    .end local v15    # "downEvent":Landroid/view/MotionEvent;
    .local v31, "downEvent":Landroid/view/MotionEvent;
    move/from16 v16, v25

    move/from16 v17, v27

    move/from16 v18, v28

    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 361
    .local v5, "moveEvent":Landroid/view/MotionEvent;
    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    and-int v22, v22, v6

    .line 362
    add-int/lit8 v6, v30, 0x1

    .line 363
    .end local v5    # "moveEvent":Landroid/view/MotionEvent;
    .end local v30    # "i":I
    .restart local v6    # "i":I
    nop

    .line 353
    move/from16 v25, v29

    move-object/from16 v15, v31

    goto :goto_0

    .line 365
    .end local v6    # "i":I
    .end local v23    # "eventTime":J
    .end local v29    # "moveX":I
    .end local v31    # "downEvent":Landroid/view/MotionEvent;
    .restart local v7    # "eventTime":J
    .restart local v14    # "i":I
    .restart local v15    # "downEvent":Landroid/view/MotionEvent;
    .restart local v25    # "moveX":I
    :cond_0
    move/from16 v30, v14

    move-object/from16 v31, v15

    move/from16 v29, v25

    .end local v14    # "i":I
    .end local v15    # "downEvent":Landroid/view/MotionEvent;
    .end local v25    # "moveX":I
    .restart local v29    # "moveX":I
    .restart local v30    # "i":I
    .restart local v31    # "downEvent":Landroid/view/MotionEvent;
    sub-float v4, v4, v26

    .line 366
    add-long v27, v7, v23

    .line 367
    .end local v7    # "eventTime":J
    .local v27, "eventTime":J
    const/4 v9, 0x2

    move/from16 v15, v29

    int-to-float v10, v15

    .end local v29    # "moveX":I
    .local v15, "moveX":I
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v25, 0x0

    move-wide/from16 v5, v19

    move-wide/from16 v7, v27

    move v11, v4

    move/from16 v32, v15

    move/from16 v15, v16

    .end local v15    # "moveX":I
    .local v32, "moveX":I
    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v25

    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v15

    .line 371
    .local v15, "move":Landroid/view/MotionEvent;
    iget-object v5, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v5, v15}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    and-int v22, v22, v5

    .line 373
    move-object/from16 v14, p1

    iget v5, v14, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 374
    add-long v23, v27, v23

    .line 375
    .end local v27    # "eventTime":J
    .restart local v23    # "eventTime":J
    const/4 v9, 0x1

    move/from16 v13, v32

    int-to-float v10, v13

    .end local v32    # "moveX":I
    .restart local v13    # "moveX":I
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-wide/from16 v5, v19

    move-wide/from16 v7, v23

    move v11, v4

    move/from16 v29, v13

    move/from16 v13, v16

    .end local v13    # "moveX":I
    .restart local v29    # "moveX":I
    move/from16 v14, v17

    move-object/from16 v32, v15

    move/from16 v15, v18

    .end local v15    # "move":Landroid/view/MotionEvent;
    .local v32, "move":Landroid/view/MotionEvent;
    move/from16 v16, v25

    move/from16 v17, v27

    move/from16 v18, v28

    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 378
    .local v5, "upEvent":Landroid/view/MotionEvent;
    iget-object v6, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    and-int v22, v22, v6

    .line 380
    .end local v5    # "upEvent":Landroid/view/MotionEvent;
    move/from16 v5, v22

    goto :goto_1

    .end local v23    # "eventTime":J
    .end local v29    # "moveX":I
    .restart local v15    # "move":Landroid/view/MotionEvent;
    .restart local v27    # "eventTime":J
    .local v32, "moveX":I
    :cond_1
    move/from16 v29, v32

    move-object/from16 v32, v15

    move/from16 v5, v22

    move-wide/from16 v23, v27

    .end local v15    # "move":Landroid/view/MotionEvent;
    .end local v22    # "handled":Z
    .end local v27    # "eventTime":J
    .local v5, "handled":Z
    .restart local v23    # "eventTime":J
    .restart local v29    # "moveX":I
    .local v32, "move":Landroid/view/MotionEvent;
    :goto_1
    const-string v6, "LongSnapClientJob"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send drag screen end. distance = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-float v8, v4, v21

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", eventTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v23, v19

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", handled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct/range {p0 .. p0}, Landroid/app/LongSnapClientJob;->sendNotifyScrollFinish()V

    .line 384
    return-void
.end method

.method private sendNotifyActivityReady()V
    .locals 3

    .line 512
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 513
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "canLongSnap"

    iget-boolean v2, p0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 514
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 515
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mActivityMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 517
    :try_start_0
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mLongsnapService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    goto :goto_0

    .line 518
    :catch_0
    move-exception v2

    .line 521
    :goto_0
    return-void
.end method

.method private sendNotifyScrollFinish()V
    .locals 3

    .line 524
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 525
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "canLongSnap"

    iget-boolean v2, p0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 526
    const/4 v1, 0x0

    const/16 v2, 0x68

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 527
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mActivityMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 529
    :try_start_0
    iget-object v2, p0, Landroid/app/LongSnapClientJob;->mLongsnapService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    goto :goto_0

    .line 530
    :catch_0
    move-exception v2

    .line 533
    :goto_0
    return-void
.end method

.method private traverseScanViews(Landroid/view/View;)Landroid/app/LongSnapClientJob$ViewInfoNode;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "viewNode":Landroid/app/LongSnapClientJob$ViewInfoNode;
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->isVisibleToUser(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 268
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Landroid/app/LongSnapClientJob;->scanViewGroup(Landroid/view/ViewGroup;)Landroid/app/LongSnapClientJob$ViewInfoNode;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob;->scanView(Landroid/view/View;)Landroid/app/LongSnapClientJob$ViewInfoNode;

    move-result-object v0

    .line 275
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 276
    iget-object v1, p0, Landroid/app/LongSnapClientJob;->mViewNodesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_2
    return-object v0
.end method


# virtual methods
.method public execute(Landroid/content/Intent;)V
    .locals 6
    .param p1, "i"    # Landroid/content/Intent;

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.supersnap.service.bindLongSnapService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.supersnap"

    const-string v3, "cn.nubia.supersnap.service.TakeScreenShotService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 66
    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 67
    .local v2, "user":Landroid/os/UserHandle;
    const-string/jumbo v3, "ls_location"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/LongSnapClientJob;->mLSWithViewLocationEnabled:Z

    .line 68
    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 69
    iget-object v4, p0, Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/app/LongSnapClientJob;->mLongsnapServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v0, v5, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_0

    .line 71
    :cond_0
    iget-object v4, p0, Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/app/LongSnapClientJob;->mLongsnapServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v0, v5, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 73
    :goto_0
    invoke-direct {p0}, Landroid/app/LongSnapClientJob;->initBSPApplicatiionManager()V

    .line 74
    return-void
.end method

.method public sendDragEventOver(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 387
    iget-object v1, v0, Landroid/app/LongSnapClientJob;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 388
    .local v1, "densityScale":F
    iget-boolean v2, v0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v2, v2, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget-object v3, v0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v3, v3, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    :goto_0
    move v9, v2

    goto :goto_1

    :cond_0
    iget-object v2, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    goto :goto_0

    .line 389
    .local v9, "currentY":F
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 390
    .local v24, "downTime":J
    move-wide/from16 v5, v24

    .line 391
    .local v5, "eventTime":J
    iget-object v2, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    .line 392
    .local v2, "heightMoveOnce":F
    iget-object v3, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    div-int/lit8 v15, v3, 0x2

    .line 393
    .local v15, "moveX":I
    const/4 v7, 0x0

    int-to-float v8, v15

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide/from16 v3, v24

    move/from16 v26, v15

    move/from16 v15, v16

    .end local v15    # "moveX":I
    .local v26, "moveX":I
    move/from16 v16, v17

    invoke-static/range {v3 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v3

    .line 395
    .local v3, "downEvent":Landroid/view/MotionEvent;
    iget-boolean v4, v0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    if-eqz v4, :cond_1

    .line 396
    iget-object v4, v0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v4, v4, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 398
    :cond_1
    iget-object v4, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 401
    :goto_2
    const/4 v4, 0x0

    .line 402
    .local v4, "i":I
    :goto_3
    const/16 v7, 0x32

    const-wide/16 v27, 0x1

    if-ge v4, v7, :cond_3

    .line 403
    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    .line 404
    add-float/2addr v9, v2

    .line 405
    add-long v5, v5, v27

    .line 406
    const/4 v14, 0x2

    move/from16 v7, v26

    int-to-float v15, v7

    .end local v26    # "moveX":I
    .local v7, "moveX":I
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v10, v24

    move-wide v12, v5

    move/from16 v16, v9

    invoke-static/range {v10 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v8

    .line 409
    .local v8, "moveEvent":Landroid/view/MotionEvent;
    iget-boolean v10, v0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    if-eqz v10, :cond_2

    .line 410
    iget-object v10, v0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v10, v10, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_4

    .line 412
    :cond_2
    iget-object v10, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 414
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 415
    .end local v8    # "moveEvent":Landroid/view/MotionEvent;
    nop

    .line 401
    move/from16 v26, v7

    goto :goto_3

    .line 417
    .end local v7    # "moveX":I
    .restart local v26    # "moveX":I
    :cond_3
    move/from16 v7, v26

    .end local v26    # "moveX":I
    .restart local v7    # "moveX":I
    add-float v8, v9, v2

    .line 418
    .end local v9    # "currentY":F
    .local v8, "currentY":F
    add-long v5, v5, v27

    .line 419
    const/4 v14, 0x2

    int-to-float v15, v7

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v10, v24

    move-wide v12, v5

    move/from16 v16, v8

    invoke-static/range {v10 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v9

    .line 422
    .local v9, "moveEvent":Landroid/view/MotionEvent;
    iget-boolean v10, v0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    if-eqz v10, :cond_4

    .line 423
    iget-object v10, v0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v10, v10, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_5

    .line 425
    :cond_4
    iget-object v10, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 428
    :goto_5
    move-object/from16 v15, p1

    iget v10, v15, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    .line 429
    add-long v5, v5, v27

    .line 430
    const/4 v14, 0x1

    int-to-float v12, v7

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v10, v24

    move/from16 v16, v12

    move-wide v12, v5

    move/from16 v15, v16

    move/from16 v16, v8

    invoke-static/range {v10 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v10

    .line 433
    .local v10, "upEvent":Landroid/view/MotionEvent;
    iget-boolean v11, v0, Landroid/app/LongSnapClientJob;->mCanLongSnap:Z

    if-eqz v11, :cond_5

    .line 434
    iget-object v11, v0, Landroid/app/LongSnapClientJob;->mScrollViewNode:Landroid/app/LongSnapClientJob$ViewInfoNode;

    iget-object v11, v11, Landroid/app/LongSnapClientJob$ViewInfoNode;->view:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_6

    .line 436
    :cond_5
    iget-object v11, v0, Landroid/app/LongSnapClientJob;->mDecorView:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 439
    .end local v10    # "upEvent":Landroid/view/MotionEvent;
    :cond_6
    :goto_6
    invoke-direct/range {p0 .. p0}, Landroid/app/LongSnapClientJob;->sendNotifyScrollFinish()V

    .line 440
    return-void
.end method
