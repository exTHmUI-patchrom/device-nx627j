.class public Lcn/nubia/server/policy/edge/ActionExecutor;
.super Ljava/lang/Object;
.source "ActionExecutor.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/AnimationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;
    }
.end annotation


# static fields
.field private static final MANUAL_MODE_RANGE:I = 0xa

.field private static final REASON_EXPAND_CONTROL_CENTER:Ljava/lang/String; = "FitSingleSlide"

.field static final SCREEN_BRIGHTNESS_BACK:Ljava/lang/String; = "screen_brightness_back"

.field static final SCREEN_BRIGHTNESS_MODE_BACK:Ljava/lang/String; = "screen_brightness_mode_back"

.field private static final TAG:Ljava/lang/String; = "ActionExecutor"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBrightnessDialog:Lcn/nubia/server/policy/edge/BrightnessDialog;

.field private mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

.field private mContext:Landroid/content/Context;

.field private mControlCenterConnection:Landroid/content/ServiceConnection;

.field private mDefaultBrightness:I

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDoubleTapAction:Lcn/nubia/server/policy/edge/DoubleTapAction;

.field private mGestureHandler:Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;

.field private mMaximumBacklight:I

.field private mMessenger:Landroid/os/Messenger;

.field private mMinimumBacklight:I

.field private mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "gestureSettings"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcn/nubia/server/policy/edge/CommunalService;->getDefault()Lcn/nubia/server/policy/edge/CommunalService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    .line 64
    new-instance v0, Lcn/nubia/server/policy/edge/ActionExecutor$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/ActionExecutor$1;-><init>(Lcn/nubia/server/policy/edge/ActionExecutor;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mControlCenterConnection:Landroid/content/ServiceConnection;

    .line 89
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;-><init>(Lcn/nubia/server/policy/edge/ActionExecutor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mGestureHandler:Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mActivityManager:Landroid/app/ActivityManager;

    .line 92
    new-instance v0, Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-direct {v0, p1}, Lcn/nubia/server/policy/edge/BrightnessDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mBrightnessDialog:Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 93
    new-instance v0, Lcn/nubia/server/policy/edge/DoubleTapAction;

    invoke-direct {v0, p1, p3}, Lcn/nubia/server/policy/edge/DoubleTapAction;-><init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/GestureSettings;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mDoubleTapAction:Lcn/nubia/server/policy/edge/DoubleTapAction;

    .line 94
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 95
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mDefaultBrightness:I

    .line 96
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mMinimumBacklight:I

    .line 97
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mMaximumBacklight:I

    .line 98
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    const-class v2, Lnubia/os/screenswitch/ScreenSwitchManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnubia/os/screenswitch/ScreenSwitchManager;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    .line 101
    :cond_0
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 102
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/server/policy/edge/ActionExecutor;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 44
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/ActionExecutor;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;

    .line 44
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionExecutor;->sendExpandMessageControlCenter()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/server/policy/edge/ActionExecutor;ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 44
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/ActionExecutor;->doDoubleTapFunction(ILcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/ActionExecutor;)Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mGestureHandler:Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/ActionExecutor;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mControlCenterConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/ActionExecutor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/ActionExecutor;)Lcn/nubia/server/policy/edge/CommunalService;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;

    .line 44
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/edge/ActionExecutor;ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 44
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/ActionExecutor;->doSingleSlideFunction(ILcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/policy/edge/ActionExecutor;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;
    .param p1, "x1"    # I

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionExecutor;->doDoubleSlideFunction(I)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/policy/edge/ActionExecutor;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;
    .param p1, "x1"    # I

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionExecutor;->doLoopSlideFunction(I)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/policy/edge/ActionExecutor;ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/ActionExecutor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 44
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/ActionExecutor;->doPressDownFunction(ILcn/nubia/edgegesture/EdgeGesture;)V

    return-void
.end method

.method private clearRecentTask()V
    .locals 3

    .line 332
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.auto_test.clear"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/CommunalService;->isSingleSlideControlNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    const-string/jumbo v1, "paly_animation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string/jumbo v1, "show_toast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 338
    :cond_0
    const-string/jumbo v1, "paly_animation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string/jumbo v1, "show_toast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 342
    return-void
.end method

.method private collapse(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 440
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionExecutor;->collapseNotificationsPanel(Landroid/content/Context;)V

    .line 441
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.nubia.fitcard.COLLAPSE_FITCARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 442
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionExecutor;->collapseControlCenterPanel()V

    .line 443
    return-void
.end method

.method private collapseControlCenterPanel()V
    .locals 3

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.controlcenter.ACTION_COLLAPSE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reason"

    const-string v2, "FitSingleSlide"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 449
    return-void
.end method

.method private collapseNotificationsPanel(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 478
    const-string v0, "collapsePanels"

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->invokeStatusBar(Landroid/content/Context;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method private doDoubleSlideFunction(I)V
    .locals 2
    .param p1, "action"    # I

    .line 228
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedAtPresent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    return-void

    .line 232
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionExecutor;->isMainScreen()Z

    move-result v0

    .line 233
    .local v0, "isMainScreen":Z
    const/16 v1, 0x2001

    if-ne p1, v1, :cond_1

    .line 234
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->setBrightness(ZZ)V

    .line 236
    :cond_1
    const/16 v1, 0x2002

    if-ne p1, v1, :cond_2

    .line 237
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->setBrightness(ZZ)V

    .line 239
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mBrightnessDialog:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->setMainScreen(Z)V

    .line 240
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mBrightnessDialog:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/BrightnessDialog;->show()V

    .line 241
    return-void
.end method

.method private doDoubleTapFunction(ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 244
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mDoubleTapAction:Lcn/nubia/server/policy/edge/DoubleTapAction;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/DoubleTapAction;->doAction(ILcn/nubia/edgegesture/EdgeGesture;)V

    .line 245
    const-string/jumbo v0, "setting_edge_double_tap_back"

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->sendStatisticsEvent(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private doLoopSlideFunction(I)V
    .locals 3
    .param p1, "action"    # I

    .line 249
    const/16 v0, 0x3001

    if-eq p1, v0, :cond_0

    const/16 v0, 0x400a

    if-ne p1, v0, :cond_1

    .line 250
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->collapse(Landroid/content/Context;)V

    .line 251
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionExecutor;->clearRecentTask()V

    .line 252
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    const-string v2, "clear_task"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/StatisticsCollector;->singleSideLoop(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    const-string/jumbo v0, "setting_edge_repeatedly"

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->sendStatisticsEvent(Ljava/lang/String;)V

    .line 255
    :cond_1
    return-void
.end method

.method private doPressDownFunction(ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 212
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedAtPresent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    const/16 v0, 0x4008

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4009

    if-eq p1, v0, :cond_1

    const v0, 0x40001

    if-eq p1, v0, :cond_1

    const v0, 0x40002

    if-ne p1, v0, :cond_2

    .line 219
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/ActionExecutor;->doSingleSlideFunction(ILcn/nubia/edgegesture/EdgeGesture;)V

    .line 222
    :cond_2
    const/16 v0, 0x400a

    if-ne p1, v0, :cond_3

    .line 223
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/ActionExecutor;->doLoopSlideFunction(I)V

    .line 225
    :cond_3
    return-void
.end method

.method private doSingleSlideFunction(ILcn/nubia/edgegesture/EdgeGesture;)V
    .locals 11
    .param p1, "action"    # I
    .param p2, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 258
    const/16 v0, 0x4e21

    .line 259
    .local v0, "leftOrRight":I
    iget v1, p2, Lcn/nubia/edgegesture/EdgeGesture;->mPointerCount:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v1, p2, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v1, v1, v2

    iget v1, v1, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->x:F

    const/high16 v3, 0x43fa0000    # 500.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 260
    const/16 v0, 0x4e22

    .line 264
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/CommunalService;->isSingleSlideControlNotification()Z

    move-result v1

    const v3, 0x10002

    const/16 v4, 0x4009

    const/16 v5, 0x1002

    const/16 v6, 0x4008

    const/16 v7, 0x1001

    if-eqz v1, :cond_4

    .line 265
    const-string/jumbo v1, "setting_edge_up_down"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor;->sendStatisticsEvent(Ljava/lang/String;)V

    .line 266
    if-eq p1, v7, :cond_1

    if-eq p1, v6, :cond_1

    .line 271
    :cond_1
    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_3

    .line 274
    :cond_2
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionExecutor;->expandNotification()V

    .line 276
    :cond_3
    return-void

    .line 280
    :cond_4
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/CommunalService;->getSingleSlideFuns(I)I

    move-result v1

    const/16 v2, 0x2711

    const/16 v8, 0x4e24

    const/16 v9, 0x4e23

    const v10, 0x10001

    if-ne v1, v2, :cond_8

    .line 281
    const-string/jumbo v1, "setting_edge_updown_launch_app"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor;->sendStatisticsEvent(Ljava/lang/String;)V

    .line 282
    if-eq p1, v7, :cond_5

    if-eq p1, v6, :cond_5

    if-ne p1, v10, :cond_6

    .line 285
    :cond_5
    invoke-direct {p0, v9, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->luncherPresetApp(II)V

    .line 287
    :cond_6
    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_7

    if-ne p1, v3, :cond_c

    .line 290
    :cond_7
    invoke-direct {p0, v8, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->luncherPresetApp(II)V

    goto :goto_0

    .line 295
    :cond_8
    const-string/jumbo v1, "setting_edge_updown_recent_app"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/ActionExecutor;->sendStatisticsEvent(Ljava/lang/String;)V

    .line 296
    if-eq p1, v7, :cond_9

    if-eq p1, v6, :cond_9

    if-ne p1, v10, :cond_a

    .line 299
    :cond_9
    invoke-direct {p0, v9, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->doSwitchApp(II)V

    .line 301
    :cond_a
    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_b

    if-ne p1, v3, :cond_c

    .line 304
    :cond_b
    invoke-direct {p0, v8, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->doSwitchApp(II)V

    .line 307
    :cond_c
    :goto_0
    return-void
.end method

.method private doSwitchApp(II)V
    .locals 13
    .param p1, "upDown"    # I
    .param p2, "leftRight"    # I

    .line 345
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x4e23

    if-ne p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 346
    .local v2, "isUp":Z
    :goto_0
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    const/16 v5, 0x4e21

    if-ne p2, v5, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    const-string/jumbo v6, "switch_app"

    invoke-virtual {v3, v4, v2, v5, v6}, Lcn/nubia/server/policy/edge/StatisticsCollector;->singleSideMove(Landroid/content/Context;ZZLjava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/CommunalService;->getRecentTaskList()Ljava/util/List;

    move-result-object v3

    .line 351
    .local v3, "recentTaskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 352
    .local v4, "length":I
    if-gtz v4, :cond_2

    .line 353
    const-string v0, "ActionExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recent task\'s total size is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void

    .line 356
    :cond_2
    iget-object v5, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v5, v2}, Lcn/nubia/server/policy/edge/CommunalService;->getTargeAppIndex(Z)I

    move-result v5

    .line 357
    .local v5, "index":I
    if-ltz v5, :cond_7

    if-lt v5, v4, :cond_3

    goto/16 :goto_3

    .line 361
    :cond_3
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 362
    .local v6, "newTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v6, :cond_4

    .line 363
    const-string v0, "ActionExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recent task of index "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "is null"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void

    .line 366
    :cond_4
    iget-object v7, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-static {v7, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v7

    .line 367
    .local v7, "opts":Landroid/app/ActivityOptions;
    iget-object v8, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v9, 0x2

    .line 368
    invoke-virtual {v8, v0, v9}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v8

    .line 369
    .local v8, "runningRaskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 370
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v9, v10, :cond_5

    .line 371
    const-string v9, "ActionExecutor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current running app is the same as switched, id :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v11, v11, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", baseActivity: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", topActivity : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 371
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_5
    iget-object v9, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcn/nubia/server/policy/edge/ActionExecutor;->collapse(Landroid/content/Context;)V

    .line 382
    const-string v9, "ActionExecutor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ";persistentId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/server/policy/edge/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget v9, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v9, :cond_6

    .line 384
    iget-object v1, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 385
    .local v1, "intent":Landroid/content/Intent;
    const v9, 0x10104000

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 388
    const-string/jumbo v9, "nubia_start_reason"

    const-string v10, "FIT"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    iget-object v9, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    new-instance v11, Landroid/os/UserHandle;

    const/4 v12, -0x2

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v1, v10, v11}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 391
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 392
    :cond_6
    iget-object v9, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mActivityManager:Landroid/app/ActivityManager;

    iget v10, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 393
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v9, v10, v1, v11}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 396
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mActivityManager:Landroid/app/ActivityManager;

    iget v9, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 397
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 396
    invoke-virtual {v1, v9, v0, v10}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 399
    :goto_2
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/CommunalService;->updateRecentTasksFlag(Z)V

    .line 400
    return-void

    .line 358
    .end local v6    # "newTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v7    # "opts":Landroid/app/ActivityOptions;
    .end local v8    # "runningRaskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_7
    :goto_3
    const-string v0, "ActionExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recent task\'s index is not valid, index is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and the total size is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void
.end method

.method private expandControlCenter()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->collapseNotificationsPanel(Landroid/content/Context;)V

    .line 311
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionExecutor;->expandControlCenterPanel()V

    .line 312
    return-void
.end method

.method private expandControlCenterPanel()V
    .locals 4

    .line 452
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 454
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.controlcenter"

    const-string v3, "cn.nubia.controlcenter.export.MessengerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 455
    iget-object v1, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mControlCenterConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 456
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 457
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionExecutor;->sendExpandMessageControlCenter()V

    .line 459
    :goto_0
    return-void
.end method

.method private expandNotification()V
    .locals 1

    .line 315
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/ActionExecutor;->collapseControlCenterPanel()V

    .line 316
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->expandNotificationsPanel(Landroid/content/Context;)V

    .line 317
    return-void
.end method

.method private expandNotificationsPanel(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 474
    const-string v0, "expandNotificationsPanel"

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/policy/edge/ActionExecutor;->invokeStatusBar(Landroid/content/Context;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method private invokeStatusBar(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 462
    const-string/jumbo v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 464
    .local v0, "service":Ljava/lang/Object;
    :try_start_0
    const-string v1, "android.app.StatusBarManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 465
    .local v1, "statusBarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 466
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 467
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v1    # "statusBarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 468
    :catch_0
    move-exception v1

    .line 469
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 471
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private isMainScreen()Z
    .locals 3

    .line 201
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 202
    return v1

    .line 204
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    invoke-virtual {v0}, Lnubia/os/screenswitch/ScreenSwitchManager;->getCurrentDisplayId()I

    move-result v0

    .line 205
    .local v0, "displayId":I
    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    return v1

    .line 207
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private luncherPresetApp(II)V
    .locals 7
    .param p1, "upDown"    # I
    .param p2, "leftRight"    # I

    .line 403
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v0

    .line 404
    .local v0, "component":Landroid/content/ComponentName;
    invoke-static {}, Lcn/nubia/server/policy/edge/StatisticsCollector;->getInstance()Lcn/nubia/server/policy/edge/StatisticsCollector;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/16 v5, 0x4e23

    if-ne p1, v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    const/16 v6, 0x4e21

    if-ne p2, v6, :cond_1

    goto :goto_1

    .line 407
    :cond_1
    move v4, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    const-string v6, ""

    .line 404
    :goto_2
    invoke-virtual {v2, v3, v5, v4, v6}, Lcn/nubia/server/policy/edge/StatisticsCollector;->singleSideMove(Landroid/content/Context;ZZLjava/lang/String;)V

    .line 409
    if-nez v0, :cond_3

    .line 410
    const-string v2, "ActionExecutor"

    const-string/jumbo v3, "luncherPresetApp: app\'s component is null !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 413
    .local v1, "opts":Landroid/app/ActivityOptions;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mCommunalService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 415
    .local v2, "currentComponent":Landroid/content/ComponentName;
    if-eqz v2, :cond_4

    .line 416
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 417
    const-string v3, "ActionExecutor"

    const-string/jumbo v4, "luncherPresetApp: app\'s component is current running !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 421
    :cond_4
    iget-object v3, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcn/nubia/server/policy/edge/ActionExecutor;->collapse(Landroid/content/Context;)V

    .line 422
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const v4, 0x10304000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 428
    const-string/jumbo v4, "nubia_start_reason"

    const-string v5, "FIT"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 431
    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 434
    :catch_0
    move-exception v4

    .line 435
    .local v4, "el":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 435
    .end local v4    # "el":Ljava/lang/IllegalArgumentException;
    goto :goto_4

    .line 432
    :catch_1
    move-exception v4

    .line 433
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 436
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    :goto_3
    nop

    .line 437
    :goto_4
    return-void
.end method

.method private sendExpandMessageControlCenter()V
    .locals 4

    .line 320
    const/4 v0, 0x0

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 321
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 322
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "reason"

    const-string v3, "FitSingleSlide"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 325
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    goto :goto_0

    .line 326
    :catch_0
    move-exception v2

    .line 327
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private sendStatisticsEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "gesture"    # Ljava/lang/String;

    .line 482
    invoke-static {p1}, Lnubia/os/ApplicationManager$Trigger;->noteEdgeGesture(Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method private setBrightness(ZZ)V
    .locals 5
    .param p1, "isIncrease"    # Z
    .param p2, "isMainScreen"    # Z

    .line 166
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 168
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p2, :cond_0

    const-string/jumbo v1, "screen_brightness_mode"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "screen_brightness_mode_back"

    .line 169
    .local v1, "modeName":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 171
    .local v3, "mode":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 172
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 175
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/policy/edge/ActionExecutor;->setManualBrightness(ZZ)V

    .line 177
    :goto_1
    return-void
.end method

.method private setManualBrightness(ZZ)V
    .locals 5
    .param p1, "isIncrease"    # Z
    .param p2, "isMainScreen"    # Z

    .line 180
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 181
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p2, :cond_0

    const-string/jumbo v1, "screen_brightness"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "screen_brightness_back"

    .line 183
    .local v1, "brightnessName":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mDefaultBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 185
    .local v2, "currentBrightness":I
    if-eqz p1, :cond_1

    .line 186
    add-int/lit8 v3, v2, 0xa

    .line 186
    .local v3, "brightness":I
    goto :goto_1

    .line 188
    .end local v3    # "brightness":I
    :cond_1
    add-int/lit8 v3, v2, -0xa

    .line 191
    .restart local v3    # "brightness":I
    :goto_1
    iget v4, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mMinimumBacklight:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 192
    iget v4, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mMaximumBacklight:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 194
    iget-object v4, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v3}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    .line 196
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    return-void
.end method


# virtual methods
.method public onAnimationFinish(Lcn/nubia/edgegesture/EdgeGesture;)V
    .locals 4
    .param p1, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .line 106
    if-nez p1, :cond_0

    .line 107
    const-string v0, "ActionExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationFinish, gesture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 110
    :cond_0
    const-string v0, "ActionExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationFinish, gesture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionExecutor;->mGestureHandler:Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;

    iget v1, p1, Lcn/nubia/edgegesture/EdgeGesture;->mType:I

    iget v2, p1, Lcn/nubia/edgegesture/EdgeGesture;->mAction:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcn/nubia/server/policy/edge/ActionExecutor$GestureHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method
