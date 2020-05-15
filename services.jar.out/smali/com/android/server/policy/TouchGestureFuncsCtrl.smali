.class public Lcom/android/server/policy/TouchGestureFuncsCtrl;
.super Ljava/lang/Object;
.source "TouchGestureFuncsCtrl.java"

# interfaces
.implements Lcom/android/server/policy/ISettingListener;


# static fields
.field private static final ACTION_SCREEN_SAVER_SHOW:Ljava/lang/String; = "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"

.field private static final TAG:Ljava/lang/String; = "GesturePolicy"


# instance fields
.field private isScreenSaverShow:Z

.field private mContext:Landroid/content/Context;

.field mDbStatus:Z

.field private mGestureListener:Lnubia/gesture/touch/GestureListener;

.field private mGestureMode:I

.field private mHandler:Landroid/os/Handler;

.field private mMultiFingerMove:Z

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field mScreenSaverReceiver:Landroid/content/BroadcastReceiver;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field private mSwitchAppCtrl:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

.field private pointEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lcom/android/server/policy/TouchGestureFuncsCtrl$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl$3;-><init>(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 213
    new-instance v0, Lcom/android/server/policy/TouchGestureFuncsCtrl$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl$4;-><init>(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mScreenSaverReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    iput-object p1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 63
    iput-object p2, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    invoke-direct {v0, p1, p2}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mSwitchAppCtrl:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mScreenSaverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;

    .line 40
    iget-boolean v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->isScreenSaverShow:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/TouchGestureFuncsCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->isScreenSaverShow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;

    .line 40
    invoke-direct {p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->takeSnot()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Lcom/android/server/policy/MultiFingerSwitchAppCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;

    .line 40
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mSwitchAppCtrl:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Lnubia/gesture/touch/GestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;

    .line 40
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;

    .line 40
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private takeSnot()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 210
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    .line 209
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    return-void
.end method


# virtual methods
.method public disableTouchGesture()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 180
    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 181
    iput-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    invoke-static {v0}, Lnubia/gesture/touch/GestureManager;->unDetect(Lnubia/gesture/touch/GestureListener;)V

    .line 185
    iput-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    .line 187
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mMultiFingerMove:Z

    if-nez v0, :cond_2

    .line 188
    const-string/jumbo v0, "persist.sys.gesture.capture"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_2
    return-void
.end method

.method public enableTouchGesture()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl$1;-><init>(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    .line 156
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/android/server/policy/TouchGestureFuncsCtrl$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl$2;-><init>(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 166
    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 168
    const/4 v0, 0x1

    new-array v0, v0, [Lnubia/gesture/touch/GestureArg;

    const/4 v1, 0x0

    new-instance v2, Lnubia/gesture/touch/MultiPointArg;

    invoke-direct {v2}, Lnubia/gesture/touch/MultiPointArg;-><init>()V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    .line 169
    invoke-static {v0, v1}, Lnubia/gesture/touch/GestureManager;->detect([Lnubia/gesture/touch/GestureArg;Lnubia/gesture/touch/GestureListener;)Lnubia/gesture/touch/ListenerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {v0, v1}, Lnubia/gesture/touch/ListenerClient;->setContext(Landroid/content/Context;)V

    .line 171
    iget-boolean v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mMultiFingerMove:Z

    if-eqz v0, :cond_1

    .line 172
    const-string/jumbo v0, "persist.sys.gesture.capture"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    return-void
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 75
    const-string/jumbo v0, "multi_point_up"

    .line 76
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 79
    const-string v0, "dualscreen_send_application"

    .line 80
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 79
    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 82
    const-string v0, "dualscreen_send_application"

    .line 83
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 85
    return-void
.end method

.method public updateSettings()V
    .locals 9

    .line 89
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "multi_point_up"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 93
    .local v1, "upMove":I
    const-string v3, "dualscreen_send_application"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 95
    .local v3, "leftMove":I
    const-string v5, "dualscreen_send_application"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 98
    .local v5, "rightMove":I
    const-string v6, "GesturePolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current touch gesture switch state, upMove = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " leftMove = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " rightMove = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    or-int v6, v1, v3

    or-int/2addr v6, v5

    .line 101
    .local v6, "gestureMode":I
    if-eq v1, v4, :cond_1

    if-eq v3, v4, :cond_1

    if-ne v5, v4, :cond_0

    goto :goto_0

    :cond_0
    move v7, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v4

    :goto_1
    iput-boolean v7, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mMultiFingerMove:Z

    .line 103
    iget-object v7, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mSwitchAppCtrl:Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    if-eq v3, v4, :cond_3

    if-ne v5, v4, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v2, v4

    :goto_3
    invoke-virtual {v7, v2}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->setEnable(Z)V

    .line 105
    iget v2, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureMode:I

    if-eq v2, v6, :cond_5

    .line 106
    iput v6, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureMode:I

    .line 107
    iget v2, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl;->mGestureMode:I

    if-eqz v2, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->enableTouchGesture()V

    goto :goto_4

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->disableTouchGesture()V

    .line 114
    :cond_5
    :goto_4
    return-void
.end method
