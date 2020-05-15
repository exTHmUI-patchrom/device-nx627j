.class public Lcom/android/server/policy/SingleModeCtrl;
.super Ljava/lang/Object;
.source "SingleModeCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeQueueingHandler;
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
.implements Lcom/android/server/policy/ISettingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;,
        Lcom/android/server/policy/SingleModeCtrl$SingleModeH;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_ADD_VIEW:I = 0x7d0

.field private static final MSG_REMOVE_VIEW:I = 0x7d1

.field private static final SINGLE_UI_FLAG:Ljava/lang/String; = "single_hand_switch"

.field private static final SINGLE_UI_MODE:Ljava/lang/String; = "single_hand_on_off"

.field private static final TAG:Ljava/lang/String; = "SingleModeCtrl"

.field private static final TAP_GAP_TIME:I = 0x3e8

.field private static mIsShowWindow:Z

.field public static mSingleModeByPress:Z

.field public static mSingleModeProp:Z

.field private static sInstance:Lcom/android/server/policy/SingleModeCtrl;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private defaultDisplay:Landroid/view/Display;

.field private mActivityBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArrowsTipBar:Landroid/widget/ImageView;

.field private mArrowsTipLp:Landroid/view/WindowManager$LayoutParams;

.field private mArrowsTipRootView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentActivity:Ljava/lang/String;

.field private mCurrentPkg:Ljava/lang/String;

.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private mDoubleFpHandled:Z

.field private mDoubleSimultaneousDown:Z

.field private mKeyF3Down:Z

.field private mKeyF3Event:Landroid/view/KeyEvent;

.field private mKeyF4Down:Z

.field private mKeyF4Event:Landroid/view/KeyEvent;

.field private mLock:Ljava/lang/Object;

.field private mOverScanPointerEventReceiver:Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;

.field private mPackageBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mPressSettingsHandle:I

.field private mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

.field private mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

.field private mSingleBackground:Landroid/view/View;

.field mSingleModeH:Lcom/android/server/policy/SingleModeCtrl$SingleModeH;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field singleModeR:Ljava/lang/Runnable;

.field private singlemodeHeight:I

.field private singlemodeWidth:I

.field startPoint:Landroid/graphics/Point;

.field private windowManager:Landroid/view/WindowManager;

.field private wms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeByPress:Z

    .line 74
    sput-boolean v0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeProp:Z

    .line 77
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/policy/SingleModeCtrl;->sLock:Ljava/lang/Object;

    .line 99
    sput-boolean v0, Lcom/android/server/policy/SingleModeCtrl;->mIsShowWindow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "funcs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x3a2

    iput v0, p0, Lcom/android/server/policy/SingleModeCtrl;->singlemodeHeight:I

    .line 63
    const/16 v0, 0x438

    iput v0, p0, Lcom/android/server/policy/SingleModeCtrl;->singlemodeWidth:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mPressSettingsHandle:I

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mLock:Ljava/lang/Object;

    .line 78
    const-string v1, "cn.nubia.settings.fingerprint.FingerprintSettings"

    const-string v2, "cn.nubia.settings.fingerprint.FingerprintIdentifyActivity"

    const-string v3, "com.alipay.android.phone.fingerprint.FingerprintSettingMainActivity"

    const-string v4, "com.alipay.android.app.flybird.ui.window.FlyBirdWindowActivity"

    const-string v5, "com.tencent.mm/.plugin.wallet.pwd.ui.WalletPasswordSettingUI"

    const-string v6, "com.tencent.mm/.plugin.fingerprint.ui.FingerPrintAuthUI"

    const-string v7, "com.tencent.mm/.plugin.wallet.balance.ui.WalletBalanceFetchPwdInputUI"

    const-string v8, "cn.nubia.settings.fingerprint.FingerprintEnrollFinish"

    const-string v9, "cn.nubia.settings.fingerprint.FingerprintEnrollEnrolling"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mActivityBlackList:Ljava/util/List;

    .line 89
    const-string v0, "cn.nubia.testtest"

    const-string v1, "cn.nubia.factory"

    const-string v2, "cn.nubia.testtest1"

    const-string v3, "com.android.systemui"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mPackageBlackList:Ljava/util/List;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipRootView:Landroid/view/View;

    .line 102
    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipLp:Landroid/view/WindowManager$LayoutParams;

    .line 345
    new-instance v0, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;-><init>(Lcom/android/server/policy/SingleModeCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeH:Lcom/android/server/policy/SingleModeCtrl$SingleModeH;

    .line 347
    new-instance v0, Lcom/android/server/policy/SingleModeCtrl$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SingleModeCtrl$2;-><init>(Lcom/android/server/policy/SingleModeCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->singleModeR:Ljava/lang/Runnable;

    .line 424
    new-instance v0, Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;-><init>(Lcom/android/server/policy/SingleModeCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mOverScanPointerEventReceiver:Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;

    .line 482
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->startPoint:Landroid/graphics/Point;

    .line 483
    new-instance v0, Lcom/android/server/policy/SingleModeCtrl$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SingleModeCtrl$3;-><init>(Lcom/android/server/policy/SingleModeCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 539
    new-instance v0, Lcom/android/server/policy/SingleModeCtrl$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SingleModeCtrl$4;-><init>(Lcom/android/server/policy/SingleModeCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/android/server/policy/SingleModeCtrl;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/android/server/policy/SingleModeCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 120
    iput-object p3, p0, Lcom/android/server/policy/SingleModeCtrl;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 121
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->wms:Lcom/android/server/wm/WindowManagerService;

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mContext:Landroid/content/Context;

    const-class v1, Lnubia/os/screenswitch/ScreenSwitchManager;

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchManager;

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    .line 124
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->windowManager:Landroid/view/WindowManager;

    .line 126
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->defaultDisplay:Landroid/view/Display;

    .line 127
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 128
    const-string v0, "SingleModeCtrl"

    const-string v1, "SingleModeCtrl new"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/SingleModeCtrl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 52
    iget v0, p0, Lcom/android/server/policy/SingleModeCtrl;->singlemodeHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/SingleModeCtrl;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->wms:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/SingleModeCtrl;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 52
    invoke-direct {p0}, Lcom/android/server/policy/SingleModeCtrl;->getBlurImageWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mSingleBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/android/server/policy/SingleModeCtrl;->mIsShowWindow:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 52
    sput-boolean p0, Lcom/android/server/policy/SingleModeCtrl;->mIsShowWindow:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipLp:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/SingleModeCtrl;)Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mOverScanPointerEventReceiver:Lcom/android/server/policy/SingleModeCtrl$OverScanPointerEventReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/SingleModeCtrl;)Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/DisplayInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/SingleModeCtrl;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SingleModeCtrl;

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->defaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method private getBlurImageWallpaper()Landroid/graphics/Bitmap;
    .locals 4

    .line 535
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/policy/SingleModeCtrl;->singlemodeWidth:I

    iget v2, p0, Lcom/android/server/policy/SingleModeCtrl;->singlemodeHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 536
    .local v0, "screenRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lnubia/util/BlurUtil;->clipWallpaper(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentActivity()Ljava/lang/String;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mCurrentActivity:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 361
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCurrentPkg()Ljava/lang/String;
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mCurrentPkg:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/android/server/policy/SingleModeCtrl;
    .locals 1

    .line 106
    sget-object v0, Lcom/android/server/policy/SingleModeCtrl;->sInstance:Lcom/android/server/policy/SingleModeCtrl;

    return-object v0
.end method

.method private hideWindow()V
    .locals 4

    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/SingleModeCtrl;->updateSingleStateSettings(Z)V

    .line 522
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeH:Lcom/android/server/policy/SingleModeCtrl$SingleModeH;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->removeMessages(I)V

    .line 523
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeH:Lcom/android/server/policy/SingleModeCtrl$SingleModeH;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->sendEmptyMessageDelayed(IJ)Z

    .line 524
    return-void
.end method

.method private initView()V
    .locals 6

    .line 443
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 444
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    const v2, 0x30a0037

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipRootView:Landroid/view/View;

    .line 445
    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipRootView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipRootView:Landroid/view/View;

    const v4, 0x30800c0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mSingleBackground:Landroid/view/View;

    .line 447
    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipRootView:Landroid/view/View;

    const v4, 0x3080004

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipBar:Landroid/widget/ImageView;

    .line 448
    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipBar:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipLp:Landroid/view/WindowManager$LayoutParams;

    .line 450
    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/server/policy/SingleModeCtrl;->singlemodeWidth:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 451
    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 452
    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/server/policy/SingleModeCtrl;->singlemodeHeight:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 453
    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x31

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 454
    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipLp:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "ArrowsTip"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipLp:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x1010109

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 460
    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 461
    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipLp:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x30e001f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 466
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Lcom/android/server/policy/SingleModeCtrl;->getBlurImageWallpaper()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 467
    .local v2, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/android/server/policy/SingleModeCtrl;->mSingleBackground:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 470
    .local v3, "wallpaperChangedFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/server/policy/SingleModeCtrl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/SingleModeCtrl;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 471
    iget-object v4, p0, Lcom/android/server/policy/SingleModeCtrl;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/policy/SingleModeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 473
    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipBar:Landroid/widget/ImageView;

    const v4, 0x307015f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 474
    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipBar:Landroid/widget/ImageView;

    const v4, 0x43f28000    # 485.0f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 475
    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mArrowsTipBar:Landroid/widget/ImageView;

    const v4, 0x44578000    # 862.0f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 480
    return-void
.end method

.method private interceptF3KeyDown(Landroid/view/KeyEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 195
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF3Event:Landroid/view/KeyEvent;

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF3Down:Z

    .line 197
    iget-boolean v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF4Down:Z

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF4Event:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF3Event:Landroid/view/KeyEvent;

    .line 199
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 200
    .local v1, "timeGap":J
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 201
    iput-boolean v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mDoubleSimultaneousDown:Z

    .line 202
    invoke-direct {p0, v0}, Lcom/android/server/policy/SingleModeCtrl;->setDualFingerprintPress(Z)V

    .line 205
    .end local v1    # "timeGap":J
    :cond_0
    return-void
.end method

.method private interceptF3KeyUp(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 208
    iget-boolean v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mDoubleSimultaneousDown:Z

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF3Down:Z

    .line 213
    iget-boolean v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mDoubleSimultaneousDown:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF4Down:Z

    if-nez v1, :cond_0

    .line 214
    iput-boolean v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mDoubleSimultaneousDown:Z

    .line 215
    const-string v1, "SingleModeCtrl"

    const-string v2, "Both fingerprint interceptF3KeyUp "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleModeCtrl;->shortPressFingerUp(Landroid/view/KeyEvent;)V

    .line 218
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/SingleModeCtrl;->setDualFingerprintPress(Z)V

    .line 219
    return-void
.end method

.method private interceptF4KeyDown(Landroid/view/KeyEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 222
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF4Event:Landroid/view/KeyEvent;

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF4Down:Z

    .line 224
    iget-boolean v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF3Down:Z

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF3Event:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF4Event:Landroid/view/KeyEvent;

    .line 226
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 227
    .local v1, "timeGap":J
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 228
    iput-boolean v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mDoubleSimultaneousDown:Z

    .line 229
    invoke-direct {p0, v0}, Lcom/android/server/policy/SingleModeCtrl;->setDualFingerprintPress(Z)V

    .line 232
    .end local v1    # "timeGap":J
    :cond_0
    return-void
.end method

.method private interceptF4KeyUp(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 235
    iget-boolean v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mDoubleSimultaneousDown:Z

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF4Down:Z

    .line 240
    iget-boolean v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mDoubleSimultaneousDown:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF3Down:Z

    if-nez v1, :cond_0

    .line 241
    iput-boolean v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mDoubleSimultaneousDown:Z

    .line 242
    const-string v1, "SingleModeCtrl"

    const-string v2, "Both fingerprint interceptF4KeyUp "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleModeCtrl;->shortPressFingerUp(Landroid/view/KeyEvent;)V

    .line 245
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/SingleModeCtrl;->setDualFingerprintPress(Z)V

    .line 246
    return-void
.end method

.method private isAllowedToStartSuperSnap(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mPackageBlackList:Ljava/util/List;

    .line 380
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 381
    :cond_1
    :goto_0
    const-string v0, "SingleModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not allowed to start supersnap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method private isLearningUI()Z
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getFocusedWindow()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    .line 180
    .local v0, "ws":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    if-nez v0, :cond_0

    .line 181
    const/4 v1, 0x0

    return v1

    .line 183
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.dualscreen.SwitchIntroduceActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/server/policy/SingleModeCtrl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "funcs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 110
    sget-object v0, Lcom/android/server/policy/SingleModeCtrl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/android/server/policy/SingleModeCtrl;->sInstance:Lcom/android/server/policy/SingleModeCtrl;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/android/server/policy/SingleModeCtrl;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/SingleModeCtrl;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    sput-object v1, Lcom/android/server/policy/SingleModeCtrl;->sInstance:Lcom/android/server/policy/SingleModeCtrl;

    .line 114
    :cond_0
    sget-object v1, Lcom/android/server/policy/SingleModeCtrl;->sInstance:Lcom/android/server/policy/SingleModeCtrl;

    monitor-exit v0

    return-object v1

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reset()V
    .locals 1

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF3Down:Z

    .line 189
    iput-boolean v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mKeyF4Down:Z

    .line 190
    iput-boolean v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mDoubleSimultaneousDown:Z

    .line 191
    invoke-direct {p0, v0}, Lcom/android/server/policy/SingleModeCtrl;->setDualFingerprintPress(Z)V

    .line 192
    return-void
.end method

.method private setDualFingerprintPress(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .line 254
    iget-boolean v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mDoubleFpHandled:Z

    if-ne v0, p1, :cond_0

    .line 255
    return-void

    .line 257
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/SingleModeCtrl;->mDoubleFpHandled:Z

    .line 258
    const-string v0, "SingleModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Both fingerprint press "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    if-nez v0, :cond_1

    .line 260
    const-class v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 261
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    invoke-virtual {v0, p1}, Lnubia/os/screenswitch/ScreenSwitchInternal;->setDualFingerprintPress(Z)V

    .line 266
    :cond_2
    return-void
.end method

.method private shortPressFingerUp(Landroid/view/KeyEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 269
    sget-boolean v0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeProp:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeByPress:Z

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 271
    .local v0, "keyCode":I
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->getDefault()Lcn/nubia/game/GameModeHelper;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Lcn/nubia/game/GameModeHelper;->IsGameModeRunning()Z

    move-result v1

    .line 273
    .local v1, "gameModeRunning":Z
    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 274
    .local v2, "rotation":I
    const-string v3, "SingleModeCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shortPress keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", downTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", eventTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", gameModeRunning="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mSingleModeByPress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeByPress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", rotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/SingleModeCtrl;->getCurrentActivity()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/policy/SingleModeCtrl;->getCurrentPkg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/policy/SingleModeCtrl;->isAllowedToStartSuperSnap(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    sget-boolean v3, Lcom/android/server/policy/NubiaPhoneWindowManager;->mKeyguardLock:Z

    if-nez v3, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/android/server/policy/SingleModeCtrl;->triggerSingleAction()V

    .line 287
    :cond_1
    return-void
.end method

.method private showWindow()V
    .locals 4

    .line 516
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeH:Lcom/android/server/policy/SingleModeCtrl$SingleModeH;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->removeMessages(I)V

    .line 517
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeH:Lcom/android/server/policy/SingleModeCtrl$SingleModeH;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->sendEmptyMessageDelayed(IJ)Z

    .line 518
    return-void
.end method

.method private triggerSingleAction()V
    .locals 10

    .line 291
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->defaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 292
    const-string v0, "SingleModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "injectKeyEvent top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->overscanTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->overscanTop:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mPressSettingsHandle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeProp:Z

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeH:Lcom/android/server/policy/SingleModeCtrl$SingleModeH;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->removeMessages(I)V

    .line 295
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeH:Lcom/android/server/policy/SingleModeCtrl$SingleModeH;

    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->singleModeR:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1770

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    invoke-direct {p0, v1}, Lcom/android/server/policy/SingleModeCtrl;->updateSingleStateSettings(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeH:Lcom/android/server/policy/SingleModeCtrl$SingleModeH;

    new-instance v1, Lcom/android/server/policy/SingleModeCtrl$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SingleModeCtrl$1;-><init>(Lcom/android/server/policy/SingleModeCtrl;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/SingleModeCtrl$SingleModeH;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 305
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/SingleModeCtrl;->wms:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->setOverscan(IIIII)V

    .line 307
    :goto_0
    return-void
.end method

.method private updateSingleStateSettings(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .line 417
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "statusbar_switch_corner"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    if-nez p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "single_hand_on_off"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    :cond_0
    return-void
.end method


# virtual methods
.method public handlePressAction()V
    .locals 5

    .line 310
    sget-boolean v0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeProp:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeByPress:Z

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->getDefault()Lcn/nubia/game/GameModeHelper;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcn/nubia/game/GameModeHelper;->IsGameModeRunning()Z

    move-result v0

    .line 313
    .local v0, "gameModeRunning":Z
    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 314
    .local v1, "rotation":I
    const-string v2, "SingleModeCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePressAction , gameModeRunning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mSingleModeByPress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeByPress:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", rotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/SingleModeCtrl;->getCurrentActivity()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/policy/SingleModeCtrl;->getCurrentPkg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/SingleModeCtrl;->isAllowedToStartSuperSnap(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/android/server/policy/SingleModeCtrl;->triggerSingleAction()V

    .line 321
    :cond_1
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 250
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .line 142
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 143
    .local v0, "keyCode":I
    const/16 v1, 0x86

    const/16 v2, 0x85

    const-wide/high16 v3, -0x8000000000000000L

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    const/16 v5, 0x1a

    if-ne v0, v5, :cond_8

    .line 145
    :cond_0
    const-string v5, "SingleModeCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "interceptKeyBeforeQueueing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-nez p3, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/android/server/policy/SingleModeCtrl;->reset()V

    .line 148
    return-wide v3

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 151
    .local v5, "down":Z
    :goto_0
    if-ne v0, v2, :cond_4

    .line 152
    if-eqz v5, :cond_3

    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleModeCtrl;->interceptF3KeyDown(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 155
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleModeCtrl;->interceptF3KeyUp(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 157
    :cond_4
    if-ne v0, v1, :cond_6

    .line 158
    if-eqz v5, :cond_5

    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleModeCtrl;->interceptF4KeyDown(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 161
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleModeCtrl;->interceptF4KeyUp(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 164
    :cond_6
    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl;->defaultDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/policy/SingleModeCtrl;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 165
    iget-object v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanTop:I

    if-eqz v1, :cond_7

    .line 166
    iget-object v6, p0, Lcom/android/server/policy/SingleModeCtrl;->wms:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->setOverscan(IIIII)V

    .line 169
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/android/server/policy/SingleModeCtrl;->isLearningUI()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 170
    return-wide v3

    .line 175
    .end local v5    # "down":Z
    :cond_8
    return-wide v3
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 390
    const-string/jumbo v0, "single_hand_on_off"

    .line 391
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 390
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 393
    const-string/jumbo v0, "single_hand_switch"

    .line 394
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 393
    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 396
    return-void
.end method

.method public systemBooted()V
    .locals 1

    .line 132
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-class v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 134
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    iput-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/SingleModeCtrl;->initView()V

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/SingleModeCtrl;->updateSingleStateSettings(Z)V

    .line 138
    return-void
.end method

.method public updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    iput-object p1, p0, Lcom/android/server/policy/SingleModeCtrl;->mCurrentActivity:Ljava/lang/String;

    .line 373
    iput-object p2, p0, Lcom/android/server/policy/SingleModeCtrl;->mCurrentPkg:Ljava/lang/String;

    .line 374
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSettings()V
    .locals 4

    .line 399
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX616"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mContext:Landroid/content/Context;

    .line 401
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "single_hand_switch"

    .line 400
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeProp:Z

    .line 402
    const-string v0, "SingleModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings mSingleModeProp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeProp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,Build.DEVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    :cond_1
    sput-boolean v1, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeByPress:Z

    .line 405
    iget-object v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mContext:Landroid/content/Context;

    .line 406
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "single_hand_on_off"

    .line 405
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 407
    .local v0, "currentValue":I
    const-string v1, "SingleModeCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/SingleModeCtrl;->mPressSettingsHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget v1, p0, Lcom/android/server/policy/SingleModeCtrl;->mPressSettingsHandle:I

    if-eq v1, v0, :cond_2

    .line 409
    iput v0, p0, Lcom/android/server/policy/SingleModeCtrl;->mPressSettingsHandle:I

    .line 410
    invoke-virtual {p0}, Lcom/android/server/policy/SingleModeCtrl;->handlePressAction()V

    .line 413
    .end local v0    # "currentValue":I
    :cond_2
    :goto_1
    return-void
.end method

.method public updateWindowUI(I)V
    .locals 0
    .param p1, "top"    # I

    .line 527
    if-lez p1, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/android/server/policy/SingleModeCtrl;->showWindow()V

    goto :goto_0

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/SingleModeCtrl;->hideWindow()V

    .line 532
    :goto_0
    return-void
.end method
