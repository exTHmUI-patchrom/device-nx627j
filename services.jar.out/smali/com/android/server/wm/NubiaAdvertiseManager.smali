.class public Lcom/android/server/wm/NubiaAdvertiseManager;
.super Ljava/lang/Object;
.source "NubiaAdvertiseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/NubiaAdvertiseManager$ConnectivityStateChangeReceiver;
    }
.end annotation


# static fields
.field private static final AD_AUTO_CLOSE:I = 0x2

.field private static final AD_CLICK:I = 0x1

.field private static final AD_CLOSE:I = 0x0

.field private static final ASDK_SWITCH:I = 0x1

.field private static final GRAY_MATCH_METHOD:I = 0x2

.field private static final NET_WORK_2G:I = 0x4

.field private static final NET_WORK_3G:I = 0x3

.field private static final NET_WORK_4G:I = 0x2

.field private static final NET_WORK_UNCONNECTED:I = 0x6

.field private static final NET_WORK_UNKNOWN:I = 0x5

.field private static final NET_WORK_WIFI:I = 0x1

.field private static final PACKAGE_NAME:Ljava/lang/String; = "cn.nubia.neopush"

.field private static final RECEIVER_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final SERVICE_NAME:Ljava/lang/String; = "cn.nubia.adcontrol.service.AdControlService"

.field private static final TAG:Ljava/lang/String; = "NubiaAdvertiseManager"

.field private static final WHITE_MATCH_METHOD:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private mAdBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnubia/os/advt/AdBlackItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdCallback:Lnubia/os/advt/IAdCallback;

.field private mAdConfig:Lnubia/os/advt/AdConfig;

.field private mAdPicture:Lnubia/os/advt/AdPicture;

.field private mAdService:Lnubia/os/advt/IAdControlInterface;

.field private mAdShowTimes:I

.field private mAdWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnubia/os/advt/AdWhiteItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdvertisePlayTime:J

.field private mBeginTime:J

.field private mBitmapHandler:Landroid/os/Handler;

.field private mConfigTimeGaps:[J

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLandAdvertise:Landroid/graphics/Bitmap;

.field private mLastOperInConfig:[J

.field private mLastOperInWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNetworkType:I

.field private mPackageName:Ljava/lang/String;

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mPicId:Ljava/lang/String;

.field private mPortAdvertise:Landroid/graphics/Bitmap;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSkip:Landroid/widget/LinearLayout;

.field private mStartingBitmap:Landroid/graphics/Bitmap;

.field private mTextView:Landroid/widget/TextView;

.field private mWhiteListTimeGaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->DEBUG:Z

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mNetworkType:I

    .line 383
    new-instance v1, Lcom/android/server/wm/NubiaAdvertiseManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/NubiaAdvertiseManager$2;-><init>(Lcom/android/server/wm/NubiaAdvertiseManager;)V

    iput-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mConn:Landroid/content/ServiceConnection;

    .line 433
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInWhiteList:Ljava/util/HashMap;

    .line 443
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mWhiteListTimeGaps:Ljava/util/HashMap;

    .line 444
    const/4 v1, 0x3

    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mConfigTimeGaps:[J

    .line 445
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInConfig:[J

    .line 446
    iput v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdShowTimes:I

    .line 447
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mBeginTime:J

    .line 452
    new-instance v0, Lcom/android/server/wm/NubiaAdvertiseManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/NubiaAdvertiseManager$3;-><init>(Lcom/android/server/wm/NubiaAdvertiseManager;)V

    iput-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdCallback:Lnubia/os/advt/IAdCallback;

    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mStartingBitmap:Landroid/graphics/Bitmap;

    .line 622
    const-wide/16 v1, 0x3

    iput-wide v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdvertisePlayTime:J

    .line 624
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mHandler:Landroid/os/Handler;

    .line 625
    iput-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPackageName:Ljava/lang/String;

    .line 628
    new-instance v0, Lcom/android/server/wm/NubiaAdvertiseManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/NubiaAdvertiseManager$5;-><init>(Lcom/android/server/wm/NubiaAdvertiseManager;)V

    iput-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mRunnable:Ljava/lang/Runnable;

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "initStartingBitmap"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mBitmapHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/NubiaAdvertiseManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    invoke-direct {p0}, Lcom/android/server/wm/NubiaAdvertiseManager;->initStartingBitmap()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/NubiaAdvertiseManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/NubiaAdvertiseManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    invoke-direct {p0}, Lcom/android/server/wm/NubiaAdvertiseManager;->initWhiteListParams()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/NubiaAdvertiseManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    invoke-direct {p0}, Lcom/android/server/wm/NubiaAdvertiseManager;->initGrayParams()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/NubiaAdvertiseManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPicId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/AdPicture;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdPicture:Lnubia/os/advt/AdPicture;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/NubiaAdvertiseManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/NubiaAdvertiseManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    iget-wide v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdvertisePlayTime:J

    return-wide v0
.end method

.method static synthetic access$1510(Lcom/android/server/wm/NubiaAdvertiseManager;)J
    .locals 4
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    iget-wide v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdvertisePlayTime:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdvertisePlayTime:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->updateLastCloseAdTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wm/NubiaAdvertiseManager;)Lcom/android/server/policy/PhoneWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wm/NubiaAdvertiseManager;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mSkip:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/NubiaAdvertiseManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wm/NubiaAdvertiseManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/wm/NubiaAdvertiseManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mNetworkType:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/wm/NubiaAdvertiseManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->updateLastAdTimeout(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->updateLastClickAdTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/IAdControlInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdService:Lnubia/os/advt/IAdControlInterface;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/NubiaAdvertiseManager;Lnubia/os/advt/IAdControlInterface;)Lnubia/os/advt/IAdControlInterface;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;
    .param p1, "x1"    # Lnubia/os/advt/IAdControlInterface;

    .line 63
    iput-object p1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdService:Lnubia/os/advt/IAdControlInterface;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/IAdCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdCallback:Lnubia/os/advt/IAdCallback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/NubiaAdvertiseManager;Lnubia/os/advt/AdConfig;)Lnubia/os/advt/AdConfig;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;
    .param p1, "x1"    # Lnubia/os/advt/AdConfig;

    .line 63
    iput-object p1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdConfig:Lnubia/os/advt/AdConfig;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 63
    iput-object p1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 63
    iput-object p1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdBlackList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/NubiaAdvertiseManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 63
    invoke-direct {p0}, Lcom/android/server/wm/NubiaAdvertiseManager;->initConfigParams()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/wm/NubiaAdvertiseManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/NubiaAdvertiseManager;
    .param p1, "x1"    # J

    .line 63
    iput-wide p1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mBeginTime:J

    return-wide p1
.end method

.method private addJumpTextView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;)V
    .locals 22
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "packageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 479
    move-object/from16 v3, p3

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 480
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 481
    .local v4, "dm":Landroid/util/DisplayMetrics;
    const/16 v5, 0x69

    .line 482
    .local v5, "width":I
    const/16 v6, 0x1e

    .line 483
    .local v6, "height":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    move-object v4, v7

    .line 484
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v8, v5

    iget v9, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v9, v6

    iget v10, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 486
    .local v7, "para":Landroid/widget/FrameLayout$LayoutParams;
    const v8, 0x800035

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 487
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x3060023

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 488
    .local v8, "margin":I
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 489
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 490
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mSkip:Landroid/widget/LinearLayout;

    .line 491
    iget-object v9, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mSkip:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x3070076

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 492
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 493
    .local v9, "skip":Landroid/widget/TextView;
    const/4 v10, -0x1

    .line 494
    .local v10, "index":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v12, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 495
    iget-object v12, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnubia/os/advt/AdWhiteItem;

    .line 496
    invoke-virtual {v12}, Lnubia/os/advt/AdWhiteItem;->getPackage_name()Ljava/lang/String;

    move-result-object v12

    .line 495
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 497
    move v10, v11

    .line 494
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 499
    .end local v11    # "i":I
    :cond_1
    const/4 v11, 0x1

    .line 500
    .local v11, "showLogo":Z
    const/4 v12, -0x1

    if-eq v10, v12, :cond_2

    .line 501
    iget-object v13, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnubia/os/advt/AdWhiteItem;

    invoke-virtual {v13}, Lnubia/os/advt/AdWhiteItem;->isShowLogo()Z

    move-result v13

    move v11, v13

    .line 502
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x30c0038

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 504
    .local v13, "skipStr":Ljava/lang/String;
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 506
    const/16 v12, 0xe

    .line 507
    .local v12, "textSize":I
    int-to-float v14, v12

    const/4 v15, 0x2

    invoke-virtual {v9, v15, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 508
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v14, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 511
    .local v14, "p1":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v15, 0x10

    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 512
    iget-object v15, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mSkip:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v15, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mTextView:Landroid/widget/TextView;

    .line 515
    iget-object v15, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const v0, -0xdadae

    .end local v0    # "context":Landroid/content/Context;
    .local v16, "context":Landroid/content/Context;
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 516
    iget-object v0, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mTextView:Landroid/widget/TextView;

    int-to-float v15, v12

    move-object/from16 v17, v4

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 517
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .local v17, "dm":Landroid/util/DisplayMetrics;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 520
    .local v0, "p2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 521
    iget-object v4, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mSkip:Landroid/widget/LinearLayout;

    iget-object v15, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    iget-object v4, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mSkip:Landroid/widget/LinearLayout;

    new-instance v15, Lcom/android/server/wm/NubiaAdvertiseManager$4;

    move/from16 v18, v5

    move-object/from16 v5, p1

    invoke-direct {v15, v1, v3, v2, v5}, Lcom/android/server/wm/NubiaAdvertiseManager$4;-><init>(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/lang/String;Landroid/view/View;Landroid/os/IBinder;)V

    .end local v5    # "width":I
    .local v18, "width":I
    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v4, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mSkip:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 545
    .local v4, "parent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_3

    iget-object v15, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mSkip:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 546
    :cond_3
    move-object v15, v2

    check-cast v15, Lcom/android/internal/policy/DecorView;

    move-object/from16 v19, v0

    iget-object v0, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mSkip:Landroid/widget/LinearLayout;

    .end local v0    # "p2":Landroid/widget/LinearLayout$LayoutParams;
    .local v19, "p2":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v15, v0, v7}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    iget-object v0, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdService:Lnubia/os/advt/IAdControlInterface;

    iget-object v15, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mPicId:Ljava/lang/String;

    move-object/from16 v20, v4

    iget-object v4, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdPicture:Lnubia/os/advt/AdPicture;

    .end local v4    # "parent":Landroid/view/ViewGroup;
    .local v20, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Lnubia/os/advt/AdPicture;->getAd_id()J

    move-result-wide v4

    invoke-interface {v0, v15, v4, v5, v3}, Lnubia/os/advt/IAdControlInterface;->onAdShow(Ljava/lang/String;JLjava/lang/String;)V

    .line 550
    move-object v0, v2

    check-cast v0, Lcom/android/internal/policy/DecorView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mStartingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 552
    iput-object v3, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mPackageName:Ljava/lang/String;

    .line 553
    iget v0, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdShowTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdShowTimes:I

    .line 554
    iget-object v0, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/wm/NubiaAdvertiseManager;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    .end local v6    # "height":I
    .end local v7    # "para":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "margin":I
    .end local v9    # "skip":Landroid/widget/TextView;
    .end local v10    # "index":I
    .end local v11    # "showLogo":Z
    .end local v12    # "textSize":I
    .end local v13    # "skipStr":Ljava/lang/String;
    .end local v14    # "p1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "context":Landroid/content/Context;
    .end local v17    # "dm":Landroid/util/DisplayMetrics;
    .end local v18    # "width":I
    .end local v19    # "p2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "parent":Landroid/view/ViewGroup;
    goto :goto_1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 558
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private inTimeIntervalOfConfig()Z
    .locals 9

    .line 235
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 236
    .local v1, "current":J
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 237
    iget-object v5, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInConfig:[J

    aget-wide v5, v5, v4

    sub-long v5, v1, v5

    iget-object v7, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mConfigTimeGaps:[J

    aget-wide v7, v7, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 238
    return v0

    .line 236
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    .end local v4    # "i":I
    :cond_1
    return v3

    .line 241
    .end local v1    # "current":J
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private inTimeIntervalOfWhiteList(Ljava/lang/String;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .line 291
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 292
    .local v1, "current":J
    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInWhiteList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 293
    .local v3, "lastTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mWhiteListTimeGaps:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 294
    .local v4, "intervalTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 295
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v1, v7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 296
    return v0

    .line 294
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 298
    .end local v6    # "i":I
    :cond_1
    return v5

    .line 299
    .end local v1    # "current":J
    .end local v3    # "lastTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v4    # "intervalTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private initBitmap()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mBitmapHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mBitmapHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/NubiaAdvertiseManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/NubiaAdvertiseManager$1;-><init>(Lcom/android/server/wm/NubiaAdvertiseManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method private initConfigParams()V
    .locals 1

    .line 422
    invoke-direct {p0}, Lcom/android/server/wm/NubiaAdvertiseManager;->initWhiteListParams()V

    .line 423
    invoke-direct {p0}, Lcom/android/server/wm/NubiaAdvertiseManager;->initGrayParams()V

    .line 424
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdPicture:Lnubia/os/advt/AdPicture;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdPicture:Lnubia/os/advt/AdPicture;

    invoke-virtual {v0}, Lnubia/os/advt/AdPicture;->gethBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPortAdvertise:Landroid/graphics/Bitmap;

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdPicture:Lnubia/os/advt/AdPicture;

    invoke-virtual {v0}, Lnubia/os/advt/AdPicture;->getwBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLandAdvertise:Landroid/graphics/Bitmap;

    .line 427
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPortAdvertise:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mStartingBitmap:Landroid/graphics/Bitmap;

    .line 431
    :cond_0
    return-void
.end method

.method private initDisplayTime(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 329
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    const/4 v0, -0x1

    .line 331
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnubia/os/advt/AdWhiteItem;

    .line 333
    invoke-virtual {v2}, Lnubia/os/advt/AdWhiteItem;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    move v0, v1

    .line 331
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "i":I
    :cond_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnubia/os/advt/AdWhiteItem;

    invoke-virtual {v1}, Lnubia/os/advt/AdWhiteItem;->getAuto_close_interval()J

    move-result-wide v1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x3

    :goto_1
    iput-wide v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdvertisePlayTime:J

    .line 337
    .end local v0    # "index":I
    goto :goto_2

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdConfig:Lnubia/os/advt/AdConfig;

    invoke-virtual {v0}, Lnubia/os/advt/AdConfig;->getAuto_close_cycle()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdvertisePlayTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_2
    goto :goto_3

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private initGrayParams()V
    .locals 6

    .line 371
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdConfig:Lnubia/os/advt/AdConfig;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mConfigTimeGaps:[J

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdConfig:Lnubia/os/advt/AdConfig;

    invoke-virtual {v1}, Lnubia/os/advt/AdConfig;->getGray_close_wait_interval()J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 373
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mConfigTimeGaps:[J

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdConfig:Lnubia/os/advt/AdConfig;

    invoke-virtual {v1}, Lnubia/os/advt/AdConfig;->getGray_click_wait_interval()J

    move-result-wide v1

    const/4 v4, 0x1

    aput-wide v1, v0, v4

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mConfigTimeGaps:[J

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdConfig:Lnubia/os/advt/AdConfig;

    invoke-virtual {v1}, Lnubia/os/advt/AdConfig;->getGray_auto_close_wait_interval()J

    move-result-wide v1

    const/4 v5, 0x2

    aput-wide v1, v0, v5

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInConfig:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v3

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInConfig:[J

    aput-wide v1, v0, v4

    .line 378
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInConfig:[J

    aput-wide v1, v0, v5

    .line 381
    :cond_0
    return-void
.end method

.method private initStartingBitmap()V
    .locals 6

    .line 572
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 573
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdService:Lnubia/os/advt/IAdControlInterface;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Lnubia/os/advt/IAdControlInterface;->getNextPicture(ZJ)Lnubia/os/advt/AdPicture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdPicture:Lnubia/os/advt/AdPicture;

    .line 576
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdPicture:Lnubia/os/advt/AdPicture;

    invoke-virtual {v2}, Lnubia/os/advt/AdPicture;->gethBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPortAdvertise:Landroid/graphics/Bitmap;

    .line 577
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdPicture:Lnubia/os/advt/AdPicture;

    invoke-virtual {v2}, Lnubia/os/advt/AdPicture;->getwBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLandAdvertise:Landroid/graphics/Bitmap;

    .line 578
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v2

    .line 579
    .local v2, "orientation":I
    if-eqz v2, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLandAdvertise:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mStartingBitmap:Landroid/graphics/Bitmap;

    .line 584
    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdPicture:Lnubia/os/advt/AdPicture;

    invoke-virtual {v3}, Lnubia/os/advt/AdPicture;->getwPic_id()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPicId:Ljava/lang/String;

    .end local v0    # "start":J
    .end local v2    # "orientation":I
    goto :goto_1

    .line 580
    .restart local v0    # "start":J
    .restart local v2    # "orientation":I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPortAdvertise:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mStartingBitmap:Landroid/graphics/Bitmap;

    .line 581
    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdPicture:Lnubia/os/advt/AdPicture;

    invoke-virtual {v3}, Lnubia/os/advt/AdPicture;->gethPic_id()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPicId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .end local v0    # "start":J
    .end local v2    # "orientation":I
    :goto_1
    goto :goto_2

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 589
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private initWhiteListParams()V
    .locals 8

    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 347
    .local v0, "last":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 348
    .local v1, "gap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 349
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 350
    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnubia/os/advt/AdWhiteItem;

    .line 351
    .local v3, "item":Lnubia/os/advt/AdWhiteItem;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v4, "gaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Lnubia/os/advt/AdWhiteItem;->getClose_wait_interval()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-virtual {v3}, Lnubia/os/advt/AdWhiteItem;->getClick_wait_interval()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {v3}, Lnubia/os/advt/AdWhiteItem;->getAuto_close_wait_interval()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual {v3}, Lnubia/os/advt/AdWhiteItem;->getPackage_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v5, "init0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {v3}, Lnubia/os/advt/AdWhiteItem;->getPackage_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .end local v3    # "item":Lnubia/os/advt/AdWhiteItem;
    .end local v4    # "gaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v5    # "init0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInWhiteList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 364
    iput-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInWhiteList:Ljava/util/HashMap;

    .line 365
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mWhiteListTimeGaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 366
    iput-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mWhiteListTimeGaps:Ljava/util/HashMap;

    .line 368
    :cond_1
    return-void
.end method

.method private isInBlackList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 276
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdBlackList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdBlackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 277
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdBlackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 278
    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdBlackList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnubia/os/advt/AdBlackItem;

    invoke-virtual {v3}, Lnubia/os/advt/AdBlackItem;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 279
    return v0

    .line 277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v1    # "i":I
    :cond_1
    return v2

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 259
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 261
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 262
    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnubia/os/advt/AdWhiteItem;

    .line 263
    invoke-virtual {v3}, Lnubia/os/advt/AdWhiteItem;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 264
    return v0

    .line 261
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_1
    return v2

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private resetShowTimes()V
    .locals 4

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mBeginTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 251
    .local v0, "gap":I
    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mBeginTime:J

    .line 253
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdShowTimes:I

    .line 255
    :cond_0
    return-void
.end method

.method private updateLastAdTimeout(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 613
    invoke-direct {p0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 615
    .local v0, "timeout":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 616
    .end local v0    # "timeout":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInConfig:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 619
    :goto_0
    return-void
.end method

.method private updateLastClickAdTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 595
    invoke-direct {p0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 597
    .local v0, "click":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 598
    .end local v0    # "click":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto :goto_0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInConfig:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 601
    :goto_0
    return-void
.end method

.method private updateLastCloseAdTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 604
    invoke-direct {p0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 606
    .local v0, "close":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 607
    .end local v0    # "close":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto :goto_0

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mLastOperInConfig:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 610
    :goto_0
    return-void
.end method


# virtual methods
.method public addAdvertising(Landroid/os/IBinder;Lcom/android/internal/policy/PhoneWindow;Ljava/lang/String;)V
    .locals 3
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "win"    # Lcom/android/internal/policy/PhoneWindow;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 657
    invoke-virtual {p2}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 658
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 659
    iput-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPackageName:Ljava/lang/String;

    .line 660
    return-void

    .line 662
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mStartingBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 663
    invoke-direct {p0}, Lcom/android/server/wm/NubiaAdvertiseManager;->initStartingBitmap()V

    .line 665
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mStartingBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 666
    iput-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPackageName:Ljava/lang/String;

    .line 667
    return-void

    .line 671
    :cond_2
    instance-of v1, v0, Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_4

    .line 672
    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/DecorView;

    const v2, 0x1020002

    .line 673
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 674
    .local v1, "content":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 675
    new-instance v2, Lcom/android/server/wm/NubiaAdvertiseManager$6;

    invoke-direct {v2, p0, p3, p1}, Lcom/android/server/wm/NubiaAdvertiseManager$6;-><init>(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/server/wm/NubiaAdvertiseManager;->initDisplayTime(Ljava/lang/String;)V

    .line 696
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/wm/NubiaAdvertiseManager;->addJumpTextView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;)V

    .line 698
    .end local v1    # "content":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public bindService()V
    .locals 6

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.neopush"

    const-string v3, "cn.nubia.adcontrol.service.AdControlService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mConn:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 94
    return-void
.end method

.method public canShowAdvertis(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->canShowAdvertisInner(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mStartingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canShowAdvertisInner(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 166
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "nubia_advertise"

    invoke-static {v1}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    invoke-direct {p0}, Lcom/android/server/wm/NubiaAdvertiseManager;->resetShowTimes()V

    .line 172
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 174
    :cond_0
    const-string v1, "cn.nubia."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "com.android."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdConfig:Lnubia/os/advt/AdConfig;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdConfig:Lnubia/os/advt/AdConfig;

    invoke-virtual {v1}, Lnubia/os/advt/AdConfig;->getAsdk_switch()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdConfig:Lnubia/os/advt/AdConfig;

    invoke-virtual {v1}, Lnubia/os/advt/AdConfig;->getAd_display_limit()I

    move-result v1

    iget v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdShowTimes:I

    if-ge v1, v3, :cond_3

    .line 182
    return v0

    .line 185
    :cond_3
    iget v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mNetworkType:I

    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdConfig:Lnubia/os/advt/AdConfig;

    invoke-virtual {v3}, Lnubia/os/advt/AdConfig;->getAd_network_type()I

    move-result v3

    if-le v1, v3, :cond_4

    .line 186
    return v0

    .line 189
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->isInBlackList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    return v0

    .line 193
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->isInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->inTimeIntervalOfWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mStartingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/wm/NubiaAdvertiseManager;->initBitmap()V

    .line 198
    :cond_6
    return v2

    .line 200
    :cond_7
    return v0

    .line 202
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdConfig:Lnubia/os/advt/AdConfig;

    invoke-virtual {v1}, Lnubia/os/advt/AdConfig;->getMatch_method()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdConfig:Lnubia/os/advt/AdConfig;

    .line 203
    invoke-virtual {v1}, Lnubia/os/advt/AdConfig;->getGray_appid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 204
    invoke-direct {p0}, Lcom/android/server/wm/NubiaAdvertiseManager;->inTimeIntervalOfConfig()Z

    move-result v1

    if-nez v1, :cond_a

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mStartingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/wm/NubiaAdvertiseManager;->initBitmap()V

    .line 209
    :cond_9
    return v2

    .line 211
    :cond_a
    return v0

    .line 179
    :cond_b
    :goto_0
    return v0

    .line 175
    :cond_c
    :goto_1
    return v0
.end method

.method public getAdDispalyTime(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 310
    const/4 v0, 0x3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->isInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    const/4 v1, -0x1

    .line 312
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnubia/os/advt/AdWhiteItem;

    .line 314
    invoke-virtual {v3}, Lnubia/os/advt/AdWhiteItem;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    move v1, v2

    .line 312
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    .end local v2    # "i":I
    :cond_1
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdWhiteList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnubia/os/advt/AdWhiteItem;

    invoke-virtual {v2}, Lnubia/os/advt/AdWhiteItem;->getAuto_close_interval()J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    move v0, v2

    nop

    :cond_2
    return v0

    .line 319
    .end local v1    # "index":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdConfig:Lnubia/os/advt/AdConfig;

    invoke-virtual {v1}, Lnubia/os/advt/AdConfig;->getAuto_close_cycle()J

    move-result-wide v1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public getNetworkType()I
    .locals 9

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 106
    .local v0, "connect":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 107
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    const/4 v2, 0x6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 110
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 111
    .local v3, "type":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 112
    return v4

    .line 113
    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_3

    if-ne v3, v7, :cond_2

    goto :goto_0

    .line 152
    :cond_2
    return v2

    .line 118
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 119
    .local v2, "subType":I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "subName":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 144
    const-string v4, "TD-SCDMA"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "WCDMA"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "CDMA2000"

    .line 145
    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 141
    :pswitch_0
    return v4

    .line 138
    :pswitch_1
    return v7

    .line 127
    :pswitch_2
    return v6

    .line 148
    :cond_4
    return v5

    .line 146
    :cond_5
    :goto_1
    return v7

    .line 108
    .end local v2    # "subType":I
    .end local v3    # "type":I
    .end local v8    # "subName":Ljava/lang/String;
    :cond_6
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method removeCallback()V
    .locals 2

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->getAdDispalyTime(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager;->mAdvertisePlayTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
