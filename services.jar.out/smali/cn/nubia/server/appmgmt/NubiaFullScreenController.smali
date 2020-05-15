.class public Lcn/nubia/server/appmgmt/NubiaFullScreenController;
.super Ljava/lang/Object;
.source "NubiaFullScreenController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;,
        Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;,
        Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;
    }
.end annotation


# static fields
.field private static final COMPATIBILITY_SCREEN_ASPECT:F = 1.8333334f

.field private static final DB_APP_FULL_SCREEN_LIST:Ljava/lang/String; = "app_full_screen_list"

.field private static final HIDE_INDICATE_VIEW_DELAY_TIME_MILLS:J = 0x1388L

.field private static final KEY_NAVIGATION_BAR_ENABLE:Ljava/lang/String; = "cc_navi_status"

.field private static final NEED_RESIZE_MIN_SCREEN_ASPECT:F = 2.1111112f

.field private static final TAG:Ljava/lang/String; = "NubiaFullScreenController"

.field private static final sDefaultNeedResizeAppNames:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lnubia/widget/NubiaCenterAlertDialog;

.field private mFocusedAppPkgName:Ljava/lang/String;

.field private mFullScreenIndicateRotation270View:Landroid/view/ViewGroup;

.field private mFullScreenIndicateRotation90View:Landroid/view/ViewGroup;

.field private mFullScreenIndicateView:Landroid/view/ViewGroup;

.field private mFullScreenIndicateViewOnClickListener:Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;

.field private mFullScreenListObserver:Landroid/database/ContentObserver;

.field private mFullScreenWindowView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHasAddFullScreenWindowFlag:Z

.field private mHasNavigationBar:Z

.field private mHideIndicateViewTask:Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;

.field private mIsNeedHideIndicateViewFlag:Z

.field private mLastX:I

.field private mLastY:I

.field private mLock:Ljava/lang/Object;

.field private mNavigationStatusObserver:Landroid/database/ContentObserver;

.field private mNeedResizeWindowApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveFullScreenWindowTask:Ljava/lang/Runnable;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 47
    const-string v0, "com.netease.hzhy.uc"

    const-string v1, "com.tencent.tmgp.hzhy.zqb"

    const-string v2, "com.tencent.tmgp.sdxl"

    const-string v3, "com.tencent.tmgp.wooduan.ssjj"

    const-string v4, "com.wooduan.ssjj.nubia"

    const-string v5, "com.tencent.tmgp.yxzg"

    const-string v6, "com.candyrufusgames.survivalcrafttrial"

    const-string v7, "com.gamedo.hlw.nubia"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->sDefaultNeedResizeAppNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    .line 76
    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFocusedAppPkgName:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mWindowManager:Landroid/view/WindowManager;

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHasAddFullScreenWindowFlag:Z

    .line 84
    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenWindowView:Landroid/view/View;

    .line 86
    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateView:Landroid/view/ViewGroup;

    .line 88
    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation90View:Landroid/view/ViewGroup;

    .line 90
    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation270View:Landroid/view/ViewGroup;

    .line 92
    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateViewOnClickListener:Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;

    .line 94
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    .line 96
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mLock:Ljava/lang/Object;

    .line 98
    iput v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mLastX:I

    .line 100
    iput v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mLastY:I

    .line 102
    new-instance v2, Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;

    invoke-direct {v2, p0, v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;-><init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHideIndicateViewTask:Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;

    .line 104
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mIsNeedHideIndicateViewFlag:Z

    .line 106
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHasNavigationBar:Z

    .line 108
    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenListObserver:Landroid/database/ContentObserver;

    .line 110
    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNavigationStatusObserver:Landroid/database/ContentObserver;

    .line 112
    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    .line 320
    new-instance v0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController$2;-><init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mRemoveFullScreenWindowTask:Ljava/lang/Runnable;

    .line 115
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHandler:Landroid/os/Handler;

    .line 117
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mWindowManager:Landroid/view/WindowManager;

    .line 120
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->initData()V

    .line 121
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->registerNavigationBarObserver()V

    .line 122
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHideIndicateViewTask:Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/NubiaFullScreenController;IIII)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->getFullScreenWindowLayoutParams(IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->createFullScreenWindowView()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/NubiaFullScreenController;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->setChildViewLayoutByOrientation(I)V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mLastX:I

    return v0
.end method

.method static synthetic access$1502(Lcn/nubia/server/appmgmt/NubiaFullScreenController;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p1, "x1"    # I

    .line 43
    iput p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mLastX:I

    return p1
.end method

.method static synthetic access$1600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mLastY:I

    return v0
.end method

.method static synthetic access$1602(Lcn/nubia/server/appmgmt/NubiaFullScreenController;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p1, "x1"    # I

    .line 43
    iput p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mLastY:I

    return p1
.end method

.method static synthetic access$1800(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->showFullscreenAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFocusedAppPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->handleClickIndicateViewEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFocusedAppPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Lnubia/widget/NubiaCenterAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    return-object v0
.end method

.method static synthetic access$2200(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->restartFocusedApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$2400(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation90View:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2500(Lcn/nubia/server/appmgmt/NubiaFullScreenController;F)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p1, "x1"    # F

    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->dip2px(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation270View:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2700(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2800(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->updateNeedResizeAppList()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->isAppNeedResizeWindowSize(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHasAddFullScreenWindowFlag:Z

    return v0
.end method

.method static synthetic access$402(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHasAddFullScreenWindowFlag:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenWindowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p1, "x1"    # Landroid/view/View;

    .line 43
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenWindowView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mRemoveFullScreenWindowTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    .line 43
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHasNavigationBar:Z

    return v0
.end method

.method static synthetic access$802(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHasNavigationBar:Z

    return p1
.end method

.method static synthetic access$902(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaFullScreenController;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mIsNeedHideIndicateViewFlag:Z

    return p1
.end method

.method private addFullScreenWindow(Ljava/lang/String;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "winPkgName"    # Ljava/lang/String;
    .param p2, "screenOrientation"    # I
    .param p3, "screenDisplayFrame"    # Landroid/graphics/Rect;
    .param p4, "contentFrame"    # Landroid/graphics/Rect;

    move-object/from16 v8, p0

    move/from16 v9, p2

    move-object/from16 v10, p3

    .line 232
    move-object/from16 v11, p4

    iget-object v0, v8, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 234
    if-eqz v9, :cond_3

    const/4 v0, 0x2

    if-ne v9, v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    const/4 v0, 0x1

    const/high16 v1, 0x42a00000    # 80.0f

    if-ne v9, v0, :cond_2

    .line 243
    iget v0, v11, Landroid/graphics/Rect;->right:I

    .line 244
    .local v0, "x":I
    const/4 v2, 0x0

    .line 245
    .local v2, "y":I
    const/4 v3, -0x1

    .line 246
    .local v3, "height":I
    iget v4, v10, Landroid/graphics/Rect;->right:I

    iget v5, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-direct {v8, v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->dip2px(F)I

    move-result v1

    add-int/2addr v4, v1

    .line 247
    .local v4, "width":I
    if-nez v4, :cond_1

    .line 248
    return-void

    .line 259
    :cond_1
    move v12, v0

    move v13, v2

    move v15, v3

    move v14, v4

    goto :goto_1

    .line 251
    .end local v0    # "x":I
    .end local v2    # "y":I
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_2
    invoke-direct {v8, v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->dip2px(F)I

    move-result v0

    neg-int v0, v0

    .line 252
    .restart local v0    # "x":I
    const/4 v2, 0x0

    .line 253
    .restart local v2    # "y":I
    const/4 v3, -0x1

    .line 254
    .restart local v3    # "height":I
    iget v4, v11, Landroid/graphics/Rect;->left:I

    invoke-direct {v8, v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->dip2px(F)I

    move-result v1

    add-int/2addr v4, v1

    .line 255
    .restart local v4    # "width":I
    if-nez v4, :cond_1

    .line 256
    return-void

    .line 235
    .end local v0    # "x":I
    .end local v2    # "y":I
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 236
    .restart local v0    # "x":I
    iget v1, v11, Landroid/graphics/Rect;->bottom:I

    .line 237
    .local v1, "y":I
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    iget v3, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 238
    .local v2, "height":I
    const/4 v3, -0x1

    .line 239
    .local v3, "width":I
    if-nez v2, :cond_4

    .line 240
    return-void

    .line 259
    :cond_4
    move v12, v0

    move v13, v1

    move v15, v2

    move v14, v3

    .end local v0    # "x":I
    .end local v1    # "y":I
    .end local v2    # "height":I
    .end local v3    # "width":I
    .local v12, "x":I
    .local v13, "y":I
    .local v14, "width":I
    .local v15, "height":I
    :goto_1
    iget-object v7, v8, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;

    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, p1

    move v3, v9

    move v4, v12

    move v5, v13

    move-object v8, v6

    move v6, v14

    move-object v9, v7

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcn/nubia/server/appmgmt/NubiaFullScreenController$AddOrUpdateFullScreenWindowTask;-><init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;IIIII)V

    invoke-virtual {v9, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    .end local v12    # "x":I
    .end local v13    # "y":I
    .end local v14    # "width":I
    .end local v15    # "height":I
    :cond_5
    return-void
.end method

.method private adjustAppWindowFrameRect(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "screenOrientation"    # I
    .param p2, "isAppNeedFullSizeWindow"    # Z
    .param p3, "needResizeRect"    # Landroid/graphics/Rect;
    .param p4, "screenDisplayFrame"    # Landroid/graphics/Rect;

    .line 199
    if-eqz p3, :cond_9

    if-nez p4, :cond_0

    goto/16 :goto_2

    .line 202
    :cond_0
    if-eqz p2, :cond_1

    .line 203
    invoke-virtual {p3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 204
    return-void

    .line 206
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3feaaaab

    if-eqz p1, :cond_6

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 213
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 214
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gtz v2, :cond_3

    .line 215
    return-void

    .line 217
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    div-float/2addr v2, v3

    cmpl-float v0, v2, v1

    if-lez v0, :cond_8

    .line 218
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 220
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_8

    .line 221
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gtz v2, :cond_5

    .line 222
    return-void

    .line 224
    :cond_5
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    div-float/2addr v2, v3

    cmpl-float v0, v2, v1

    if-lez v0, :cond_8

    .line 225
    iget v0, p4, Landroid/graphics/Rect;->right:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 226
    iget v0, p4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 207
    :cond_6
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gtz v2, :cond_7

    .line 208
    return-void

    .line 210
    :cond_7
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    div-float/2addr v2, v3

    cmpl-float v0, v2, v1

    if-lez v0, :cond_8

    .line 211
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 229
    :cond_8
    :goto_1
    return-void

    .line 200
    :cond_9
    :goto_2
    return-void
.end method

.method private createFullScreenWindowView()V
    .locals 3

    .line 371
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 372
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    const v2, 0x30a0012

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenWindowView:Landroid/view/View;

    .line 373
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenWindowView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 374
    return-void

    .line 376
    :cond_0
    new-instance v2, Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;

    invoke-direct {v2, p0, v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;-><init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateViewOnClickListener:Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;

    .line 377
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenWindowView:Landroid/view/View;

    const v2, 0x3080019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateView:Landroid/view/ViewGroup;

    .line 378
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 379
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateViewOnClickListener:Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenWindowView:Landroid/view/View;

    const v2, 0x308001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation90View:Landroid/view/ViewGroup;

    .line 382
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation90View:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 383
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation90View:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateViewOnClickListener:Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenWindowView:Landroid/view/View;

    const v2, 0x308001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation270View:Landroid/view/ViewGroup;

    .line 386
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation270View:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 387
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation270View:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateViewOnClickListener:Lcn/nubia/server/appmgmt/NubiaFullScreenController$FullScreenIndicateViewOnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    :cond_3
    return-void
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dpValue"    # F

    .line 524
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 525
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getFullScreenWindowLayoutParams(IIII)Landroid/view/WindowManager$LayoutParams;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 345
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 346
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 347
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 348
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 349
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 350
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 351
    const/16 v1, 0x960

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 352
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 353
    const-string v1, "NubiaFullScreenWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 354
    const v1, 0x9060728

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 363
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 364
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 365
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 366
    const/16 v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 367
    return-object v0
.end method

.method private handleClickIndicateViewEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "nowFocusedApp"    # Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHideIndicateViewTask:Lcn/nubia/server/appmgmt/NubiaFullScreenController$HideIndicateViewTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/appmgmt/NubiaFullScreenController$5;

    invoke-direct {v2, p0, p1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController$5;-><init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 478
    :cond_0
    monitor-exit v0

    .line 479
    return-void

    .line 478
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initData()V
    .locals 12

    .line 600
    :try_start_0
    new-instance v0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$8;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController$8;-><init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenListObserver:Landroid/database/ContentObserver;

    .line 606
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 607
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :try_start_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_full_screen_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "appFullScreenListStr":Ljava/lang/String;
    const-string v2, "NubiaFullScreenController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initData start and appFullScreenListStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 611
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_7

    .line 612
    const/4 v2, 0x0

    .line 613
    .local v2, "isChanged":Z
    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 614
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 615
    const/4 v2, 0x1

    .line 617
    :cond_0
    sget-object v5, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->sDefaultNeedResizeAppNames:[Ljava/lang/String;

    array-length v6, v5

    move-object v7, v1

    move v1, v3

    .line 617
    .end local v1    # "appFullScreenListStr":Ljava/lang/String;
    .local v7, "appFullScreenListStr":Ljava/lang/String;
    :goto_0
    if-ge v1, v6, :cond_2

    aget-object v8, v5, v1

    .line 618
    .local v8, "defaultApp":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 619
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 620
    const/4 v2, 0x1

    .line 617
    .end local v8    # "defaultApp":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    :cond_2
    if-eqz v2, :cond_3

    .line 624
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "app_full_screen_list"

    invoke-static {v1, v5, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 626
    :cond_3
    const-string v1, "\\|"

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "splitedStr":[Ljava/lang/String;
    if-eqz v1, :cond_6

    array-length v5, v1

    if-le v5, v4, :cond_6

    .line 628
    sget-object v5, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->sDefaultNeedResizeAppNames:[Ljava/lang/String;

    array-length v6, v5

    move v8, v3

    :goto_1
    if-ge v8, v6, :cond_6

    aget-object v9, v5, v8

    .line 629
    .local v9, "defaultApp":Ljava/lang/String;
    aget-object v10, v1, v3

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    aget-object v10, v1, v3

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 630
    iget-object v10, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :cond_4
    aget-object v10, v1, v4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    aget-object v10, v1, v4

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 633
    iget-object v10, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .end local v9    # "defaultApp":Ljava/lang/String;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 637
    .end local v1    # "splitedStr":[Ljava/lang/String;
    .end local v2    # "isChanged":Z
    :cond_6
    goto :goto_3

    .line 638
    .end local v7    # "appFullScreenListStr":Ljava/lang/String;
    .local v1, "appFullScreenListStr":Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    sget-object v5, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->sDefaultNeedResizeAppNames:[Ljava/lang/String;

    array-length v6, v5

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_8

    aget-object v8, v5, v7

    .line 641
    .restart local v8    # "defaultApp":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    iget-object v9, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .end local v8    # "defaultApp":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 645
    :cond_8
    iget-object v4, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "app_full_screen_list"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 647
    .end local v1    # "appFullScreenListStr":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    :try_start_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_full_screen_list"

    .line 650
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenListObserver:Landroid/database/ContentObserver;

    .line 649
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 647
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 655
    :cond_9
    :goto_4
    goto :goto_5

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 656
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method private isAppNeedResizeWindowSize(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 582
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 583
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 584
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 585
    .local v3, "tmpPkgName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 586
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 587
    const/4 v1, 0x1

    return v1

    .line 590
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v3    # "tmpPkgName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 592
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private registerNavigationBarObserver()V
    .locals 4

    .line 663
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cc_navi_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHasNavigationBar:Z

    .line 665
    new-instance v0, Lcn/nubia/server/appmgmt/NubiaFullScreenController$9;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController$9;-><init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNavigationStatusObserver:Landroid/database/ContentObserver;

    .line 672
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cc_navi_status"

    .line 673
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNavigationStatusObserver:Landroid/database/ContentObserver;

    .line 672
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    goto :goto_1

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 678
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private restartFocusedApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "nowFocusedAppPkgName"    # Ljava/lang/String;

    .line 554
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 555
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 560
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 562
    :try_start_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 563
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 564
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 565
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 566
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 570
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_1

    .line 568
    :catch_1
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 572
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method private setChildViewLayoutByOrientation(I)V
    .locals 3
    .param p1, "screenOrientation"    # I

    .line 482
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation90View:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation270View:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_2

    .line 485
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mIsNeedHideIndicateViewFlag:Z

    if-eqz v0, :cond_1

    .line 486
    return-void

    .line 488
    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_4

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 492
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 493
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 494
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation270View:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 495
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation90View:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation90View:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/appmgmt/NubiaFullScreenController$6;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController$6;-><init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1

    .line 506
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 507
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 508
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation90View:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 509
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation270View:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation270View:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/appmgmt/NubiaFullScreenController$7;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController$7;-><init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1

    .line 489
    :cond_4
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation90View:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mFullScreenIndicateRotation270View:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 521
    :cond_5
    :goto_1
    return-void

    .line 483
    :cond_6
    :goto_2
    return-void
.end method

.method private showFullscreenAlertDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    new-instance v0, Lnubia/widget/NubiaCenterAlertDialog$Builder;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    const v2, 0x30e000a

    invoke-direct {v0, v1, v2}, Lnubia/widget/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x30c004d

    .line 410
    invoke-virtual {v0, v1}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->setTitle(I)Lnubia/widget/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    const v2, 0x30c004c

    .line 411
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lnubia/widget/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcn/nubia/server/appmgmt/NubiaFullScreenController$4;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController$4;-><init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;)V

    .line 412
    invoke-virtual {v0, v1, v2}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcn/nubia/server/appmgmt/NubiaFullScreenController$3;

    invoke-direct {v2, p0, p1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController$3;-><init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, v1, v2}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    .line 426
    .local v0, "mBuilder":Lnubia/widget/NubiaCenterAlertDialog$Builder;
    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->create()Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    .line 427
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    invoke-virtual {v1}, Lnubia/widget/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 428
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    invoke-virtual {v1}, Lnubia/widget/NubiaCenterAlertDialog;->show()V

    .line 429
    return-void
.end method

.method private updateNeedResizeAppList()V
    .locals 13

    .line 684
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    .line 687
    :try_start_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_full_screen_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "appFullScreenListStr":Ljava/lang/String;
    const-string v2, "NubiaFullScreenController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNeedResizeAppList start and appFullScreenListStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v2, "needStopAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 691
    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, "splitedStr":[Ljava/lang/String;
    if-eqz v3, :cond_4

    array-length v5, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    .line 693
    sget-object v5, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->sDefaultNeedResizeAppNames:[Ljava/lang/String;

    array-length v7, v5

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_4

    aget-object v9, v5, v8

    .line 694
    .local v9, "defaultApp":Ljava/lang/String;
    aget-object v10, v3, v4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    aget-object v10, v3, v4

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 695
    iget-object v10, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 696
    .local v10, "value":Ljava/lang/Object;
    if-eqz v10, :cond_0

    instance-of v11, v10, Ljava/lang/Boolean;

    if-eqz v11, :cond_0

    .line 697
    move-object v11, v10

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 698
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_0
    iget-object v11, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    .end local v10    # "value":Ljava/lang/Object;
    :cond_1
    aget-object v10, v3, v6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    aget-object v10, v3, v6

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 704
    iget-object v10, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 705
    .restart local v10    # "value":Ljava/lang/Object;
    if-eqz v10, :cond_2

    instance-of v11, v10, Ljava/lang/Boolean;

    if-eqz v11, :cond_2

    .line 706
    move-object v11, v10

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_2

    .line 707
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_2
    iget-object v11, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    .end local v9    # "defaultApp":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 715
    .end local v3    # "splitedStr":[Ljava/lang/String;
    :cond_4
    const-string v3, "NubiaFullScreenController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateNeedResizeAppList and needStopAppList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    .local v5, "needStopApp":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    .line 719
    invoke-interface {v6, v5, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 722
    goto :goto_2

    .line 720
    :catch_0
    move-exception v6

    .line 721
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 723
    .end local v5    # "needStopApp":Ljava/lang/String;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_1

    .line 726
    .end local v1    # "appFullScreenListStr":Ljava/lang/String;
    .end local v2    # "needStopAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    goto :goto_3

    .line 724
    :catch_1
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 728
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    monitor-exit v0

    .line 729
    return-void

    .line 728
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method


# virtual methods
.method public adjustAppWindowSize(Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "screenOrientation"    # I
    .param p3, "screenDisplayFrame"    # Landroid/graphics/Rect;
    .param p4, "containFrame"    # Landroid/graphics/Rect;
    .param p5, "frame"    # Landroid/graphics/Rect;
    .param p6, "parentFrame"    # Landroid/graphics/Rect;
    .param p7, "displayFrame"    # Landroid/graphics/Rect;
    .param p8, "contentFrame"    # Landroid/graphics/Rect;
    .param p9, "visibleFrame"    # Landroid/graphics/Rect;
    .param p10, "stableFrame"    # Landroid/graphics/Rect;
    .param p11, "outsetFrame"    # Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p8

    .line 167
    iget-object v5, v0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    iget-object v6, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 169
    return-void

    .line 172
    :cond_0
    const v5, 0x40071c72

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-eq v2, v7, :cond_2

    const/4 v8, 0x3

    if-ne v2, v8, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    div-float/2addr v8, v9

    cmpl-float v5, v8, v5

    if-gtz v5, :cond_3

    .line 178
    return-void

    .line 173
    :cond_2
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    div-float/2addr v8, v9

    cmpl-float v5, v8, v5

    if-gtz v5, :cond_3

    .line 174
    return-void

    .line 182
    :cond_3
    iget-object v5, v0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mNeedResizeWindowApps:Landroid/util/ArrayMap;

    iget-object v6, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/2addr v5, v7

    .line 183
    .local v5, "isAppNeedFullSizeWindow":Z
    move-object/from16 v6, p4

    invoke-direct {v0, v2, v5, v6, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->adjustAppWindowFrameRect(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 184
    move-object/from16 v7, p5

    invoke-direct {v0, v2, v5, v7, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->adjustAppWindowFrameRect(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 185
    move-object/from16 v8, p6

    invoke-direct {v0, v2, v5, v8, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->adjustAppWindowFrameRect(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 186
    move-object/from16 v9, p7

    invoke-direct {v0, v2, v5, v9, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->adjustAppWindowFrameRect(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 187
    invoke-direct {v0, v2, v5, v4, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->adjustAppWindowFrameRect(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 188
    move-object/from16 v10, p9

    invoke-direct {v0, v2, v5, v10, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->adjustAppWindowFrameRect(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 189
    move-object/from16 v11, p10

    invoke-direct {v0, v2, v5, v11, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->adjustAppWindowFrameRect(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 190
    move-object/from16 v12, p11

    invoke-direct {v0, v2, v5, v12, v3}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->adjustAppWindowFrameRect(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 192
    if-nez v5, :cond_4

    .line 193
    iget-object v13, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v0, v13, v2, v3, v4}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->addFullScreenWindow(Ljava/lang/String;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 195
    :cond_4
    return-void
.end method

.method public noteFocusedApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "focusedAppPkgName"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/NubiaFullScreenController$1;-><init>(Lcn/nubia/server/appmgmt/NubiaFullScreenController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 156
    :cond_0
    return-void
.end method

.method public noteNaviGestureFinalization()V
    .locals 0

    .line 162
    return-void
.end method

.method public noteNaviGestureStarted()V
    .locals 0

    .line 159
    return-void
.end method
