.class Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;
.super Ljava/lang/Object;
.source "PowerAndVolumeScreenshotCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
.implements Lcom/android/server/policy/IKeyBeforeQueueingHandler;
.implements Lcom/android/server/policy/ISettingListener;


# static fields
.field private static final DUAL_FINGERPRINT_HOME_BACK:Ljava/lang/String; = "dual_fingerprint_home_back"

.field private static final DUAL_SCREEN_DEVICE:[Ljava/lang/String;

.field private static final POWER_VOLUME_SCREENSHOT:Ljava/lang/String; = "power_volume_screenshot"

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "supersnapshot"


# instance fields
.field private mActivityBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mActivityManagerNative:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCurrentActivity:Ljava/lang/String;

.field private mCurrentPkg:Ljava/lang/String;

.field private mDisplay:[Landroid/view/Display;

.field private mDumpSystraceMethod:Ljava/lang/reflect/Method;

.field private mDumpsysInfo:Ljava/lang/reflect/Method;

.field private mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

.field private mFingerBackHomeType:I

.field private mHandler:Landroid/os/Handler;

.field mLastVolumeDownKeyTime:J

.field mLastVolumeUpKeyTime:J

.field private final mLongPressRunnableVolDown:Ljava/lang/Runnable;

.field private final mLongPressRunnableVolUp:Ljava/lang/Runnable;

.field private mLongPressVolDownPwr:Z

.field private mLongPressVolUpPwr:Z

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

.field private mPowerAndVolumeDownTime:J

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private mPowerKeyUpBeforeTimeout:Z

.field private mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

.field private mScreenshotEnable:Z

.field private final mScreenshotForLog:Ljava/lang/Runnable;

.field private mSettingScreenshotEnable:Z

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumedByScreenshotChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    const-string v0, "NX616J"

    const-string v1, "NX627J"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->DUAL_SCREEN_DEVICE:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/policy/FeatureFunctionManager;Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 11
    .param p1, "featureManager"    # Lcom/android/server/policy/FeatureFunctionManager;
    .param p2, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "context"    # Landroid/content/Context;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mActivityManagerNative:Ljava/lang/Object;

    .line 61
    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDumpSystraceMethod:Ljava/lang/reflect/Method;

    .line 66
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->obj:Ljava/lang/Object;

    .line 67
    const-string v2, "com.android.settings.fingerprint.FingerprintSettings"

    const-string v3, "com.android.settings.fingerprint.FingerprintIdentifyActivity"

    const-string v4, "com.alipay.android.phone.fingerprint.FingerprintSettingMainActivity"

    const-string v5, "com.alipay.android.app.flybird.ui.window.FlyBirdWindowActivity"

    const-string v6, "com.tencent.mm/.plugin.wallet.pwd.ui.WalletPasswordSettingUI"

    const-string v7, "com.tencent.mm/.plugin.fingerprint.ui.FingerPrintAuthUI"

    const-string v8, "com.tencent.mm/.plugin.wallet.balance.ui.WalletBalanceFetchPwdInputUI"

    const-string v9, "com.android.settings.fingerprint.FingerprintEnrollFinish"

    const-string v10, "com.android.settings.fingerprint.FingerprintEnrollEnrolling"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mActivityBlackList:Ljava/util/List;

    .line 76
    const-string v1, "cn.nubia.testtest"

    const-string v2, "cn.nubia.factory"

    const-string v3, "cn.nubia.testtest1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPackageBlackList:Ljava/util/List;

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mFingerBackHomeType:I

    .line 83
    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDisplay:[Landroid/view/Display;

    .line 86
    new-instance v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;-><init>(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressRunnableVolDown:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$2;-><init>(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressRunnableVolUp:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$3;-><init>(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;

    .line 380
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLastVolumeDownKeyTime:J

    .line 381
    iput-wide v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLastVolumeUpKeyTime:J

    .line 135
    iput-object p3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 137
    iput-object p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mFeatureFunctionManager:Lcom/android/server/policy/FeatureFunctionManager;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    .line 139
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    const-class v2, Lnubia/os/screenswitch/ScreenSwitchManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchManager;

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    .line 141
    sget-object v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->DUAL_SCREEN_DEVICE:[Ljava/lang/String;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 142
    .local v3, "device":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    const-string v1, "display"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDisplay:[Landroid/view/Display;

    .line 145
    goto :goto_1

    .line 141
    .end local v3    # "device":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolDownPwr:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .line 35
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingScreenshotForLog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .line 35
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .line 35
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolUpPwr:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .line 35
    iget-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mSettingScreenshotEnable:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .line 35
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .line 35
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->dumpsysInfo()V

    return-void
.end method

.method private cancelPendingLongPressRunnableVolDown()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressRunnableVolDown:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method private cancelPendingLongPressRunnableVolUp()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressRunnableVolUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method

.method private cancelPendingScreenshotForLog()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method

.method private closeOriginScreenshot()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setScreenshotChordEnabled(Z)V

    .line 233
    return-void
.end method

.method private dumpsysInfo()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDumpsysInfo:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 204
    :cond_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 206
    :try_start_0
    const-string v0, "android.app.ActivityManagerInternal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 207
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 208
    const-string v2, "dumpsysInfo"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDumpsysInfo:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 213
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    nop

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDumpsysInfo:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDumpsysInfo:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 224
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 221
    :catch_1
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 222
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 219
    :catch_2
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 225
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    goto :goto_1

    .line 227
    :cond_3
    const-string/jumbo v0, "supersnapshot"

    const-string v1, "dumpsysInfo fail, because mActivityManagerInternal or mDumpsysInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_1
    return-void

    .line 210
    :catch_3
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    return-void
.end method

.method private getActivityManagerNative()Ljava/lang/Object;
    .locals 4

    .line 161
    const/4 v0, 0x0

    move-object v1, v0

    .line 163
    .local v1, "objActivityManager":Ljava/lang/Object;
    :try_start_0
    const-string v2, "android.app.ActivityManagerNative"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 164
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getDefault"

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 165
    .local v0, "getDefault":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 168
    .end local v0    # "getDefault":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 166
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method private getCurrentActivity()Ljava/lang/String;
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->obj:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mCurrentActivity:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 394
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCurrentPkg()Ljava/lang/String;
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->obj:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mCurrentPkg:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 400
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 2

    .line 377
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private injectKeyEvent(I)V
    .locals 18
    .param p1, "keycode"    # I

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 515
    .local v8, "now":J
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v10

    new-instance v11, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v11

    move-wide v1, v8

    move-wide v3, v8

    move/from16 v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v0, 0x0

    invoke-virtual {v10, v11, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 518
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    new-instance v2, Landroid/view/KeyEvent;

    const-wide/16 v3, 0xa

    add-long v11, v8, v3

    add-long v13, v8, v3

    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object v10, v2

    move/from16 v16, p1

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v1, v2, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 521
    return-void
.end method

.method private interceptScreenshotChord()V
    .locals 14

    .line 335
    iget-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x1

    const-wide/16 v4, 0x96

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    if-nez v0, :cond_1

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 338
    .local v6, "now":J
    iput-wide v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerAndVolumeDownTime:J

    .line 339
    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    add-long/2addr v8, v4

    cmp-long v0, v6, v8

    if-gtz v0, :cond_1

    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    add-long/2addr v8, v4

    cmp-long v0, v6, v8

    if-gtz v0, :cond_1

    .line 341
    const-string/jumbo v0, "supersnapshot"

    const-string v8, "POWER AND VOLUME DOWN AT THE SAME TIME."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iput-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 343
    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    iget-wide v10, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    cmp-long v0, v8, v10

    if-lez v0, :cond_0

    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    goto :goto_0

    :cond_0
    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    .line 344
    .local v8, "startTime":J
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 345
    .local v0, "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "powerandvolume"

    const-string/jumbo v11, "interval"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v10, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressRunnableVolDown:Ljava/lang/Runnable;

    sub-long v12, v6, v8

    sub-long v12, v1, v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    .end local v0    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "now":J
    .end local v8    # "startTime":J
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    if-nez v0, :cond_3

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 352
    .restart local v6    # "now":J
    iput-wide v6, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerAndVolumeDownTime:J

    .line 353
    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    add-long/2addr v8, v4

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    add-long/2addr v8, v4

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    .line 355
    const-string/jumbo v0, "supersnapshot"

    const-string v4, "POWER AND VOLUME UP AT THE SAME TIME."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iput-boolean v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 357
    iget-wide v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    iget-wide v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    cmp-long v0, v3, v8

    if-lez v0, :cond_2

    iget-wide v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    .line 358
    .local v3, "startTime":J
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 359
    .restart local v0    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "powerandvolume"

    const-string/jumbo v8, "interval"

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v5, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressRunnableVolUp:Ljava/lang/Runnable;

    sub-long v9, v6, v3

    sub-long/2addr v1, v9

    invoke-virtual {v5, v8, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    .end local v0    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "startTime":J
    .end local v6    # "now":J
    :cond_3
    return-void
.end method

.method private isAllowedToStartSuperSnap(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPackageBlackList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 385
    :cond_1
    :goto_0
    const-string/jumbo v0, "supersnapshot"

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

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method private isScreenOn(Z)Z
    .locals 4
    .param p1, "isScreenOn"    # Z

    .line 151
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDisplay:[Landroid/view/Display;

    if-nez v0, :cond_0

    return p1

    .line 153
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDisplay:[Landroid/view/Display;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 154
    iget-object v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDisplay:[Landroid/view/Display;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    return v0

    .line 153
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_2
    return v0
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 17
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    move-object/from16 v0, p0

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 406
    .local v1, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    .line 407
    .local v2, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 408
    .local v3, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 436
    .local v5, "repeatCount":I
    iget-boolean v6, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    if-eqz v6, :cond_f

    and-int/lit16 v6, v2, 0x400

    if-nez v6, :cond_f

    .line 437
    iget-boolean v6, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    const-wide/16 v7, 0x1c2

    const-wide/16 v9, 0x96

    if-eqz v6, :cond_2

    iget-boolean v6, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-nez v6, :cond_2

    .line 438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 439
    .local v13, "now":J
    move v15, v5

    iget-wide v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    .line 439
    .end local v5    # "repeatCount":I
    .local v15, "repeatCount":I
    add-long/2addr v4, v9

    .line 442
    .local v4, "timeoutTime":J
    iget-wide v9, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    iget-wide v11, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLastVolumeDownKeyTime:J

    sub-long/2addr v9, v11

    .line 443
    .local v9, "time":J
    iget-wide v11, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    iput-wide v11, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLastVolumeDownKeyTime:J

    .line 444
    cmp-long v6, v9, v7

    if-gez v6, :cond_1

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-lez v6, :cond_1

    .line 445
    return-wide v11

    .line 448
    :cond_1
    cmp-long v6, v13, v4

    if-gez v6, :cond_3

    .line 449
    sub-long v6, v4, v13

    return-wide v6

    .line 452
    .end local v4    # "timeoutTime":J
    .end local v9    # "time":J
    .end local v13    # "now":J
    .end local v15    # "repeatCount":I
    .restart local v5    # "repeatCount":I
    :cond_2
    move v15, v5

    .line 452
    .end local v5    # "repeatCount":I
    .restart local v15    # "repeatCount":I
    :cond_3
    iget-boolean v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    if-eqz v4, :cond_5

    iget-boolean v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-nez v4, :cond_5

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 454
    .local v4, "now":J
    iget-wide v9, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    const-wide/16 v11, 0x96

    add-long/2addr v9, v11

    .line 457
    .local v9, "timeoutTime":J
    iget-wide v11, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    iget-wide v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLastVolumeUpKeyTime:J

    sub-long/2addr v11, v13

    .line 458
    .local v11, "time":J
    iget-wide v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    iput-wide v13, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLastVolumeUpKeyTime:J

    .line 459
    cmp-long v6, v11, v7

    if-gez v6, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v8, v11, v6

    if-lez v8, :cond_4

    .line 460
    return-wide v6

    .line 463
    :cond_4
    cmp-long v6, v4, v9

    if-gez v6, :cond_5

    .line 464
    sub-long v6, v9, v4

    return-wide v6

    .line 467
    .end local v4    # "now":J
    .end local v9    # "timeoutTime":J
    .end local v11    # "time":J
    :cond_5
    const/16 v4, 0x19

    const-wide/16 v5, -0x1

    if-ne v1, v4, :cond_a

    iget-boolean v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-nez v4, :cond_6

    iget-boolean v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolDownPwr:Z

    if-nez v4, :cond_6

    iget-boolean v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    if-eqz v4, :cond_a

    .line 469
    :cond_6
    if-nez v3, :cond_9

    .line 470
    iget-boolean v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    if-eqz v4, :cond_7

    .line 471
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    goto :goto_1

    .line 473
    :cond_7
    iget-boolean v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolDownPwr:Z

    if-nez v4, :cond_8

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 475
    .local v7, "now":J
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 476
    .local v4, "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "powerandvolumeonekeyup"

    const-string/jumbo v10, "interval"

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string/jumbo v9, "supersnapshot"

    const-string v10, "VOLUME DOWN KEY UP BEFORE TIMEOUT"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingLongPressRunnableVolDown()V

    .line 479
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 480
    iget-object v9, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 481
    .end local v4    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "now":J
    goto :goto_1

    .line 483
    :cond_8
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolDownPwr:Z

    .line 486
    :cond_9
    :goto_1
    return-wide v5

    .line 488
    :cond_a
    const/16 v4, 0x18

    if-ne v1, v4, :cond_10

    iget-boolean v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolUpPwr:Z

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    if-eqz v4, :cond_10

    .line 490
    :cond_b
    if-nez v3, :cond_e

    .line 491
    iget-boolean v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    if-eqz v4, :cond_c

    .line 492
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    goto :goto_2

    .line 494
    :cond_c
    iget-boolean v4, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolUpPwr:Z

    if-nez v4, :cond_d

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 496
    .restart local v7    # "now":J
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 497
    .restart local v4    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "powerandvolumeonekeyup"

    const-string/jumbo v10, "interval"

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string/jumbo v9, "supersnapshot"

    const-string v10, "VOLUME UP KEY UP BEFORE TIMEOUT"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingLongPressRunnableVolUp()V

    .line 500
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 501
    iget-object v9, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    .end local v4    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "now":J
    goto :goto_2

    .line 504
    :cond_d
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mLongPressVolUpPwr:Z

    .line 507
    :cond_e
    :goto_2
    return-wide v5

    .line 510
    .end local v15    # "repeatCount":I
    .restart local v5    # "repeatCount":I
    :cond_f
    move v15, v5

    .line 510
    .end local v5    # "repeatCount":I
    .restart local v15    # "repeatCount":I
    :cond_10
    const-wide/high16 v4, -0x8000000000000000L

    return-wide v4
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "screenOn"    # Z

    .line 237
    iget-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_0

    return-wide v1

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 239
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 240
    .local v3, "down":Z
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->isScreenOn(Z)Z

    move-result v6

    .line 242
    .local v6, "isScreenOn":Z
    const/16 v7, 0x19

    if-ne v0, v7, :cond_3

    .line 243
    if-eqz v3, :cond_2

    .line 244
    if-eqz v6, :cond_3

    iget-boolean v7, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    if-nez v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_3

    .line 245
    iput-boolean v4, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    .line 246
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    .line 247
    iput-boolean v5, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 248
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->interceptScreenshotChord()V

    goto :goto_1

    .line 251
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    .line 254
    :cond_3
    :goto_1
    const/16 v7, 0x18

    if-ne v0, v7, :cond_5

    .line 255
    if-eqz v3, :cond_4

    .line 256
    if-eqz v6, :cond_5

    iget-boolean v7, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    if-nez v7, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_5

    .line 257
    iput-boolean v4, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    .line 258
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    .line 259
    iput-boolean v5, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 260
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->interceptScreenshotChord()V

    goto :goto_2

    .line 263
    :cond_4
    iput-boolean v5, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    .line 266
    :cond_5
    :goto_2
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_9

    .line 267
    if-eqz v3, :cond_6

    .line 268
    if-eqz v6, :cond_9

    iget-boolean v5, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-nez v5, :cond_9

    .line 269
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_9

    .line 270
    iput-boolean v4, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    .line 271
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    .line 272
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->interceptScreenshotChord()V

    goto :goto_3

    .line 275
    :cond_6
    iget-boolean v7, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v7, :cond_7

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 277
    .local v7, "now":J
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v9, "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "powerandvolumeonekeyup"

    const-string/jumbo v11, "interval"

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v10, "supersnapshot"

    const-string v11, "POWER KEY UP BEFORE TIMEOUT"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingLongPressRunnableVolDown()V

    .line 281
    iput-boolean v5, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 282
    iget-object v10, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    iput-boolean v4, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    .line 285
    .end local v7    # "now":J
    .end local v9    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    iget-boolean v7, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    if-eqz v7, :cond_8

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 287
    .restart local v7    # "now":J
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 288
    .restart local v9    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "powerandvolumeonekeyup"

    const-string/jumbo v11, "interval"

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string/jumbo v10, "supersnapshot"

    const-string v11, "POWER KEY UP BEFORE TIMEOUT"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->cancelPendingLongPressRunnableVolUp()V

    .line 291
    iput-boolean v5, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 292
    iget-object v10, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    iput-boolean v4, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyUpBeforeTimeout:Z

    .line 295
    .end local v7    # "now":J
    .end local v9    # "mapSupersnap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    iput-boolean v5, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    .line 298
    :cond_9
    :goto_3
    return-wide v1
.end method

.method public reflectDumpSystrace()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mActivityManagerNative:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDumpSystraceMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 176
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->getActivityManagerNative()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mActivityManagerNative:Ljava/lang/Object;

    .line 177
    const-string v0, "android.app.IActivityManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 178
    .local v0, "iActivityManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mActivityManagerNative:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 179
    const-string v2, "dumpSystrace"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDumpSystraceMethod:Ljava/lang/reflect/Method;

    .line 180
    iget-object v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDumpSystraceMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 185
    .end local v0    # "iActivityManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    nop

    .line 189
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDumpSystraceMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mActivityManagerNative:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mDumpSystraceMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mActivityManagerNative:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 193
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 191
    :catch_2
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 197
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    :goto_0
    nop

    .line 199
    :goto_1
    return-void

    .line 182
    :catch_3
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    return-void
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 304
    invoke-direct {p0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->closeOriginScreenshot()V

    .line 305
    const-string/jumbo v0, "power_volume_screenshot"

    .line 306
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 305
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 308
    const-string v0, "dual_fingerprint_home_back"

    .line 309
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 308
    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 311
    return-void
.end method

.method public updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->obj:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_0
    iput-object p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mCurrentActivity:Ljava/lang/String;

    .line 330
    iput-object p2, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mCurrentPkg:Ljava/lang/String;

    .line 331
    monitor-exit v0

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSettings()V
    .locals 4

    .line 315
    nop

    .line 316
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    .line 315
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "power_volume_screenshot"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 316
    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    .line 318
    iget-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mSettingScreenshotEnable:Z

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_fingerprint_home_back"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->mFingerBackHomeType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    goto :goto_1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
