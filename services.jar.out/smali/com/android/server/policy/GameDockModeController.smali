.class public Lcom/android/server/policy/GameDockModeController;
.super Ljava/lang/Object;
.source "GameDockModeController.java"

# interfaces
.implements Lcom/android/server/policy/ISettingListener;
.implements Lcom/android/server/policy/IKeyBeforeQueueingHandler;
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GameDockModeController$GameDockModePhoneStateListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_GAME_DOCK_MODE:I = 0x0

.field public static final DEFAULT_STATUS_NAVIGATION_BAR:I = 0x0

.field private static final KEYS_SWITCH_MAIN_LAMP_PREFERENCE:Ljava/lang/String; = "switch_main_lamp_enable"

.field private static final NUBIA_ACTION_GAME_MODE_START:Ljava/lang/String; = "cn.nubia.intent.action.lock_screen_hang_up_option"

.field private static final NUBIA_ACTION_GAME_MODE_STOP:Ljava/lang/String; = "cn.nubia.systemui.NOTIFICATION_CLICKED"

.field private static final STATUS_NAVIGATION_BAR:Ljava/lang/String; = "cc_status"

.field public static final STR_GAME_DOCK_MODE:Ljava/lang/String; = "nubia_game_dock_mode"

.field private static final TAG:Ljava/lang/String; = "GameDockModeController"


# instance fields
.field private final DEBUG:Z

.field private isDockUnlockViewShowing:Z

.field private isGameDockMode:Z

.field private mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mAutomaticMode:Z

.field private mBrightness:I

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDockModeUnlockView:Lcom/android/server/policy/GameDockModeView;

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGameMockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mGameModeHelper:Lcn/nubia/game/GameModeHelper;

.field private mHandler:Landroid/os/Handler;

.field private mMainLampState:I

.field private mNeedRestore:Z

.field private mPhoneStateListener:Lcom/android/server/policy/GameDockModeController$GameDockModePhoneStateListener;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GameDockModeController;->DEBUG:Z

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GameDockModeController;->isDockUnlockViewShowing:Z

    .line 57
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mHandler:Landroid/os/Handler;

    .line 59
    iput-boolean v0, p0, Lcom/android/server/policy/GameDockModeController;->isGameDockMode:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/policy/GameDockModeController;->mAutomaticMode:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/server/policy/GameDockModeController;->mNeedRestore:Z

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/GameDockModeController;->mBrightness:I

    .line 66
    iput v0, p0, Lcom/android/server/policy/GameDockModeController;->mMainLampState:I

    .line 69
    new-instance v0, Lcom/android/server/policy/GameDockModeController$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GameDockModeController$1;-><init>(Lcom/android/server/policy/GameDockModeController;)V

    iput-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mGameMockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    new-instance v0, Lcom/android/server/policy/GameDockModeController$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GameDockModeController$5;-><init>(Lcom/android/server/policy/GameDockModeController;)V

    iput-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 82
    iput-object p2, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->getDefault()Lcn/nubia/game/GameModeHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mGameModeHelper:Lcn/nubia/game/GameModeHelper;

    .line 84
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 85
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->registerPhoneState()V

    .line 86
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->registerGameMockModeReceive()V

    .line 87
    return-void
.end method

.method private abortIdentify()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mFingerprintCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mFingerprintCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 354
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 355
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/GameDockModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameDockModeController;

    .line 39
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->startGameDockMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/GameDockModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameDockModeController;

    .line 39
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->stopGameDockMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/GameDockModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameDockModeController;

    .line 39
    iget-boolean v0, p0, Lcom/android/server/policy/GameDockModeController;->isDockUnlockViewShowing:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/GameDockModeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameDockModeController;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/server/policy/GameDockModeController;->isDockUnlockViewShowing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/GameDockModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameDockModeController;

    .line 39
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->showDockModeUnlockView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/GameDockModeController;)Lcom/android/server/policy/GameDockModeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameDockModeController;

    .line 39
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mDockModeUnlockView:Lcom/android/server/policy/GameDockModeView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/GameDockModeController;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GameDockModeController;

    .line 39
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/GameDockModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameDockModeController;

    .line 39
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->abortIdentify()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/policy/GameDockModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GameDockModeController;

    .line 39
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->startIdentify()V

    return-void
.end method

.method private getBrightness()I
    .locals 4

    .line 300
    const/4 v0, -0x1

    .line 302
    .local v0, "brightness":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    .line 302
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 307
    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "GameDockModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brightness:="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return v0
.end method

.method private getBrightnessMode(I)I
    .locals 4
    .param p1, "defaultValue"    # I

    .line 277
    move v0, p1

    .line 279
    .local v0, "brightnessMode":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    .line 280
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_mode"

    .line 279
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 284
    goto :goto_0

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "GameDockModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brightnessMode:="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return v0
.end method

.method private hasFingers()Z
    .locals 6

    .line 341
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    .line 345
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 346
    .local v2, "fingerprintCount":I
    :goto_0
    const-string v3, "GameDockModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasFingers fingerprintCount:="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-lez v2, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method private interceptPowerKey(ZI)V
    .locals 3
    .param p1, "down"    # Z
    .param p2, "repeatCount"    # I

    .line 140
    const-string v0, "GameDockModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "down:="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", repeatCount:="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 142
    iget-boolean v0, p0, Lcom/android/server/policy/GameDockModeController;->isGameDockMode:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->stopGameDockMode()V

    .line 146
    :cond_0
    return-void
.end method

.method private isBrightnessAutoMode()Z
    .locals 3

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/GameDockModeController;->getBrightnessMode(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0
.end method

.method private registerGameMockModeReceive()V
    .locals 3

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "cn.nubia.intent.action.lock_screen_hang_up_option"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "cn.nubia.systemui.NOTIFICATION_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GameDockModeController;->mGameMockModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    return-void
.end method

.method private registerPhoneState()V
    .locals 3

    .line 313
    new-instance v0, Lcom/android/server/policy/GameDockModeController$GameDockModePhoneStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/GameDockModeController$GameDockModePhoneStateListener;-><init>(Lcom/android/server/policy/GameDockModeController;Lcom/android/server/policy/GameDockModeController$1;)V

    iput-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mPhoneStateListener:Lcom/android/server/policy/GameDockModeController$GameDockModePhoneStateListener;

    .line 314
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 315
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mPhoneStateListener:Lcom/android/server/policy/GameDockModeController$GameDockModePhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 316
    return-void
.end method

.method private removeDockView()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/GameDockModeController$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GameDockModeController$4;-><init>(Lcom/android/server/policy/GameDockModeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method

.method private setBrightnessMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    .line 292
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    .line 291
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private showDockModeUnlockView()V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mWindowManager:Landroid/view/WindowManager;

    .line 224
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 225
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 226
    new-instance v1, Lcom/android/server/policy/GameDockModeView;

    iget-object v2, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/policy/GameDockModeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mDockModeUnlockView:Lcom/android/server/policy/GameDockModeView;

    .line 227
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mDockModeUnlockView:Lcom/android/server/policy/GameDockModeView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GameDockModeView;->setFocusable(Z)V

    .line 228
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mDockModeUnlockView:Lcom/android/server/policy/GameDockModeView;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GameDockModeView;->setFocusableInTouchMode(Z)V

    .line 229
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mDockModeUnlockView:Lcom/android/server/policy/GameDockModeView;

    new-instance v3, Lcom/android/server/policy/GameDockModeController$3;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GameDockModeController$3;-><init>(Lcom/android/server/policy/GameDockModeController;)V

    invoke-virtual {v1, v3}, Lcom/android/server/policy/GameDockModeView;->setOnSlideToUnlockListener(Lcom/android/server/policy/GameDockModeView$OnSlideToUnlockListener;)V

    .line 235
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 236
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7d3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 238
    const/16 v3, 0x740

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 242
    const-string v3, "GameDockView"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 244
    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 245
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 246
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 247
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 248
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 249
    iget-object v2, p0, Lcom/android/server/policy/GameDockModeController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/policy/GameDockModeController;->mDockModeUnlockView:Lcom/android/server/policy/GameDockModeView;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    return-void
.end method

.method private showDockView()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/GameDockModeController$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GameDockModeController$2;-><init>(Lcom/android/server/policy/GameDockModeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method private startGameDockMode()V
    .locals 4

    .line 159
    iget-boolean v0, p0, Lcom/android/server/policy/GameDockModeController;->isGameDockMode:Z

    if-eqz v0, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GameDockModeController;->isGameDockMode:Z

    .line 163
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_game_dock_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "switch_main_lamp_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GameDockModeController;->mMainLampState:I

    .line 165
    iget v1, p0, Lcom/android/server/policy/GameDockModeController;->mMainLampState:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "switch_main_lamp_enable"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->getBrightness()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GameDockModeController;->mBrightness:I

    .line 169
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    .line 171
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->isBrightnessAutoMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    invoke-direct {p0, v2}, Lcom/android/server/policy/GameDockModeController;->setBrightnessMode(I)V

    .line 173
    iput-boolean v0, p0, Lcom/android/server/policy/GameDockModeController;->mNeedRestore:Z

    .line 176
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->showDockView()V

    .line 178
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->hasFingers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->startIdentify()V

    .line 181
    :cond_3
    return-void
.end method

.method private startIdentify()V
    .locals 7

    .line 358
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 359
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/server/policy/GameDockModeController;->mFingerprintCancel:Landroid/os/CancellationSignal;

    iget-object v5, p0, Lcom/android/server/policy/GameDockModeController;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 360
    return-void
.end method

.method private stopGameDockMode()V
    .locals 4

    .line 184
    iget-boolean v0, p0, Lcom/android/server/policy/GameDockModeController;->isGameDockMode:Z

    if-nez v0, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GameDockModeController;->isGameDockMode:Z

    .line 188
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_game_dock_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    iget v1, p0, Lcom/android/server/policy/GameDockModeController;->mMainLampState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "switch_main_lamp_enable"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->abortIdentify()V

    .line 193
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->removeDockView()V

    .line 195
    iget-boolean v1, p0, Lcom/android/server/policy/GameDockModeController;->mNeedRestore:Z

    if-eqz v1, :cond_2

    .line 196
    invoke-direct {p0, v2}, Lcom/android/server/policy/GameDockModeController;->setBrightnessMode(I)V

    .line 197
    iput-boolean v0, p0, Lcom/android/server/policy/GameDockModeController;->mNeedRestore:Z

    .line 199
    :cond_2
    iget v0, p0, Lcom/android/server/policy/GameDockModeController;->mBrightness:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 200
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v1, p0, Lcom/android/server/policy/GameDockModeController;->mBrightness:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    .line 202
    :cond_3
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 3
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 106
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 107
    .local v0, "keyCode":I
    iget-boolean v1, p0, Lcom/android/server/policy/GameDockModeController;->isGameDockMode:Z

    if-eqz v1, :cond_1

    .line 108
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_1

    .line 111
    :cond_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v1

    .line 114
    :cond_1
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .line 91
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 92
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 93
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 95
    .local v2, "repeatCount":I
    const/16 v3, 0x1a

    if-ne v0, v3, :cond_1

    .line 96
    iget-object v3, p0, Lcom/android/server/policy/GameDockModeController;->mGameModeHelper:Lcn/nubia/game/GameModeHelper;

    invoke-virtual {v3}, Lcn/nubia/game/GameModeHelper;->IsGameModeRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/policy/GameDockModeController;->isGameDockMode:Z

    if-eqz v3, :cond_1

    .line 97
    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/GameDockModeController;->interceptPowerKey(ZI)V

    .line 98
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v3

    .line 101
    :cond_1
    const-wide/high16 v3, -0x8000000000000000L

    return-wide v3
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 119
    const-string v0, "cc_status"

    .line 120
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 119
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 122
    return-void
.end method

.method public updateSettings()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mGameModeHelper:Lcn/nubia/game/GameModeHelper;

    invoke-virtual {v0}, Lcn/nubia/game/GameModeHelper;->IsGameModeRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cc_status"

    const/4 v2, 0x0

    .line 130
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 133
    .local v0, "navigationBarStatus":I
    const-string v1, "GameDockModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "navigationBarStatus:="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/android/server/policy/GameDockModeController;->stopGameDockMode()V

    .line 137
    :cond_1
    return-void
.end method
