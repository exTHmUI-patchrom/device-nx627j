.class public Lcn/nubia/server/presssensor/PressGestureMutex;
.super Ljava/lang/Object;
.source "PressGestureMutex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;
    }
.end annotation


# static fields
.field private static final FUNCTION_CUSTOM:Ljava/lang/String; = "custom"

.field private static final FUNCTION_FLOAT_SHORTCUT:Ljava/lang/String; = "shortcut_action"

.field private static final FUNCTION_LIGHT:Ljava/lang/String; = "v5light"

.field private static final FUNCTION_SUPER_SNAP:Ljava/lang/String; = "screen_shot"

.field private static final FUNCTION_VOICE_ASSIST:Ljava/lang/String; = "voice_assist"

.field private static final KEY_DUAL_SCREEN_MULTI_TASKS:Ljava/lang/String; = "multi_screen_multi_tasks"

.field private static final KEY_GAME_SPACE:Ljava/lang/String; = "virtual_game_key"

.field private static final KEY_PAINT_EGG_USING:Ljava/lang/String; = "nubia_paint_egg_using"

.field private static final KEY_SETTING_SINGLE_HAND:Ljava/lang/String; = "single_hand_on_off"

.field private static final KEY_SHORTCUT_SWITCH:Ljava/lang/String; = "nubia_dualscreen_shortcut_switch"

.field private static final SHUTDOWN_REBOOT:Ljava/lang/String; = "cn.nubia.systemui.SHUTDOWN_REBOOT"

.field private static final SUB_TAG:Ljava/lang/String; = "[Mutex] "


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentActivity:Ljava/lang/String;

.field private mCurrentPackage:Ljava/lang/String;

.field private mDisallowedCallback:Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;

.field private mGlobalContentObserver:Landroid/database/ContentObserver;

.field private mHander:Landroid/os/Handler;

.field private mIsInGameSpace:Z

.field private mIsKeyguardOn:Z

.field private mIsRinging:Z

.field private mIsSetUpWizard:Z

.field private mIsShowShutdownDialog:Z

.field private mIsShutdown:Z

.field private mIsStarted:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

.field private mSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

.field private mTaskCallback:Lnubia/os/ITaskCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/presssensor/PressGestureSettings;Lcn/nubia/server/presssensor/PressSensorService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcn/nubia/server/presssensor/PressGestureSettings;
    .param p3, "service"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mHander:Landroid/os/Handler;

    .line 82
    iput-object p2, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    .line 83
    invoke-virtual {p3}, Lcn/nubia/server/presssensor/PressSensorService;->getScreenSwitchInternal()Lnubia/os/screenswitch/ScreenSwitchInternal;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 84
    new-instance v0, Lcn/nubia/server/presssensor/PressGestureMutex$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/presssensor/PressGestureMutex$1;-><init>(Lcn/nubia/server/presssensor/PressGestureMutex;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    new-instance v0, Lcn/nubia/server/presssensor/PressGestureMutex$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/presssensor/PressGestureMutex$2;-><init>(Lcn/nubia/server/presssensor/PressGestureMutex;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mTaskCallback:Lnubia/os/ITaskCallback;

    .line 112
    new-instance v0, Lcn/nubia/server/presssensor/PressGestureMutex$3;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mHander:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/presssensor/PressGestureMutex$3;-><init>(Lcn/nubia/server/presssensor/PressGestureMutex;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mGlobalContentObserver:Landroid/database/ContentObserver;

    .line 123
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isSetupWizard()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsSetUpWizard:Z

    .line 124
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isInGameSpace()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsInGameSpace:Z

    .line 125
    new-instance v0, Lcn/nubia/server/presssensor/PressGestureMutex$4;

    invoke-direct {v0, p0}, Lcn/nubia/server/presssensor/PressGestureMutex$4;-><init>(Lcn/nubia/server/presssensor/PressGestureMutex;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 139
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 141
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 142
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mPowerManager:Landroid/os/PowerManager;

    .line 144
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/server/presssensor/PressGestureMutex;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureMutex;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsShutdown:Z

    return p1
.end method

.method static synthetic access$1000(Lcn/nubia/server/presssensor/PressGestureMutex;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureMutex;

    .line 31
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->checkDisallow()V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/server/presssensor/PressGestureMutex;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureMutex;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsShowShutdownDialog:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/server/presssensor/PressGestureMutex;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureMutex;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/presssensor/PressGestureMutex;->actionPerformedInner(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcn/nubia/server/presssensor/PressGestureMutex;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureMutex;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsSetUpWizard:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/server/presssensor/PressGestureMutex;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureMutex;

    .line 31
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isSetupWizard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcn/nubia/server/presssensor/PressGestureMutex;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureMutex;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsInGameSpace:Z

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/server/presssensor/PressGestureMutex;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureMutex;

    .line 31
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isInGameSpace()Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcn/nubia/server/presssensor/PressGestureMutex;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureMutex;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$802(Lcn/nubia/server/presssensor/PressGestureMutex;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureMutex;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mCurrentPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcn/nubia/server/presssensor/PressGestureMutex;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureMutex;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mCurrentActivity:Ljava/lang/String;

    return-object p1
.end method

.method private actionPerformedInner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mHander:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/presssensor/PressGestureMutex$5;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/server/presssensor/PressGestureMutex$5;-><init>(Lcn/nubia/server/presssensor/PressGestureMutex;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

.method private checkDisallow()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mDisallowedCallback:Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;

    invoke-interface {v0}, Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;->isNeedDisallow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mDisallowedCallback:Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;

    invoke-interface {v0}, Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;->disallowed()V

    .line 318
    :cond_0
    return-void
.end method

.method private isChipSeaApp()Z
    .locals 2

    .line 341
    const-string v0, "com.chipsea.edgesensor"

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isDualFloatShortcutPermitted()Z
    .locals 4

    .line 252
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 253
    return v1

    .line 255
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "multi_screen_multi_tasks"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 257
    return v1

    .line 259
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "nubia_dualscreen_shortcut_switch"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 261
    return v1

    .line 264
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 265
    invoke-virtual {v0}, Lnubia/os/screenswitch/ScreenSwitchInternal;->getShowingDisplayId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    return v1

    .line 268
    :cond_3
    return v3
.end method

.method private isFactoryTest()Z
    .locals 2

    .line 345
    const-string v0, "cn.nubia.factory"

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isHoldPermited(Ljava/lang/String;)Z
    .locals 2
    .param p1, "func"    # Ljava/lang/String;

    .line 228
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsSetUpWizard:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsShutdown:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isInCallActvity()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsShowShutdownDialog:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsInGameSpace:Z

    if-nez v0, :cond_4

    .line 229
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isChipSeaApp()Z

    move-result v0

    if-nez v0, :cond_4

    .line 230
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isFactoryTest()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isInPaintEgg()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isPressRankAjustActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    return v1

    .line 236
    :cond_1
    const-string/jumbo v0, "shortcut_action"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isDualFloatShortcutPermitted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    return v1

    .line 240
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 241
    return v1

    .line 243
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 231
    :cond_4
    :goto_0
    return v1
.end method

.method private isInCallActvity()Z
    .locals 2

    .line 326
    const-string v0, "com.android.incallui"

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.incallui.InCallActivity"

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mCurrentActivity:Ljava/lang/String;

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0
.end method

.method private isInGameSpace()Z
    .locals 3

    .line 161
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virtual_game_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isInPaintEgg()Z
    .locals 3

    .line 247
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_paint_egg_using"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isIncomingCallActvity()Z
    .locals 2

    .line 321
    const-string v0, "com.android.incallui"

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.incallui.InCallActivity"

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mCurrentActivity:Ljava/lang/String;

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsRinging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0
.end method

.method private isPressRankAjustActivity()Z
    .locals 2

    .line 331
    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.Settings$NubiaPressureLevalActivity"

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mCurrentActivity:Ljava/lang/String;

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 331
    :goto_0
    return v0
.end method

.method private isSetupWizard()Z
    .locals 3

    .line 166
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private isSingleHandOn()Z
    .locals 3

    .line 336
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "single_hand_on_off"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 349
    const-string v0, "State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  allow : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  short hold permited : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isShortHoldPermited()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  double hold permited : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isDoubleHoldPermited()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  long hold permited : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isLongHoldPermited()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  paint egg permited : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isPaintEggPermited()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  in paint egg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isInPaintEgg()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  in single hand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isSingleHandOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  shutdown dialog show : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsShowShutdownDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  shut down : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsShutdown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  phone state ringing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsRinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  current activity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mCurrentActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  keyguard lock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  interactive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mutex detector start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  keyguard on : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsKeyguardOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public isAllowed()Z
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isShortHoldPermited()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isDoubleHoldPermited()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isLongHoldPermited()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 171
    :goto_1
    return v0
.end method

.method public isDoubleHoldPermited()Z
    .locals 1

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public isLongHoldPermited()Z
    .locals 3

    .line 200
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureSettings;->isLongHoldEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 201
    return v1

    .line 203
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureSettings;->getLongHoldFunction()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "func":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    const-string/jumbo v0, "screen_shot"

    .line 207
    :cond_1
    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isHoldPermited(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 208
    return v1

    .line 210
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public isPaintEggPermited()Z
    .locals 2

    .line 214
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsSetUpWizard:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsShutdown:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isInCallActvity()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsShowShutdownDialog:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsInGameSpace:Z

    if-nez v0, :cond_5

    .line 215
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isChipSeaApp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 218
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isPressRankAjustActivity()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isSingleHandOn()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 221
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 224
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 222
    :cond_3
    :goto_0
    return v1

    .line 219
    :cond_4
    :goto_1
    return v1

    .line 216
    :cond_5
    :goto_2
    return v1
.end method

.method public isShortHoldPermited()Z
    .locals 2

    .line 176
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureSettings;->isShortHoldEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 177
    return v1

    .line 179
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureSettings;->getShortHoldFunction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isHoldPermited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    return v1

    .line 182
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public noteKeyguardStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 308
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsKeyguardOn:Z

    .line 309
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsKeyguardOn:Z

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mDisallowedCallback:Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;

    invoke-interface {v0}, Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;->interruptPaintEgg()V

    .line 312
    :cond_1
    return-void
.end method

.method public setDisallowedCallback(Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;

    .line 147
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mDisallowedCallback:Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;

    .line 148
    return-void
.end method

.method public start()V
    .locals 5

    .line 272
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 273
    return-void

    .line 275
    :cond_0
    const-string v0, "PressSensorService"

    const-string v1, "[Mutex] start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsStarted:Z

    .line 277
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 278
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v1, "cn.nubia.systemui.SHUTDOWN_REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mHander:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 281
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    .line 282
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mGlobalContentObserver:Landroid/database/ContentObserver;

    .line 281
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 284
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "virtual_game_key"

    .line 285
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mGlobalContentObserver:Landroid/database/ContentObserver;

    .line 284
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 287
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mTaskCallback:Lnubia/os/ITaskCallback;

    const-wide/16 v2, 0x1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lnubia/os/ApplicationManager$Trigger;->registerCallback(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V

    .line 289
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 291
    return-void
.end method

.method public stop()V
    .locals 3

    .line 294
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 295
    return-void

    .line 297
    :cond_0
    const-string v0, "PressSensorService"

    const-string v1, "[Mutex] stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mIsStarted:Z

    .line 299
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 300
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mGlobalContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 302
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mTaskCallback:Lnubia/os/ITaskCallback;

    invoke-static {v1}, Lnubia/os/ApplicationManager$Trigger;->unregisterCallback(Lnubia/os/ITaskCallback;)V

    .line 303
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureMutex;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 305
    return-void
.end method
