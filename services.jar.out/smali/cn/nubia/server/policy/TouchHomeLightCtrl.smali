.class public Lcn/nubia/server/policy/TouchHomeLightCtrl;
.super Ljava/lang/Object;
.source "TouchHomeLightCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;


# static fields
.field private static final ACTION_CLOSE_COUNTDOWN:Ljava/lang/String; = "close_countdown_from_menu"

.field private static final ACTION_CLOSE_LIGHT:Ljava/lang/String; = "com.ztemt.v5light.home_key_close_light"

.field private static final ACTION_OPEN_LIGHT:Ljava/lang/String; = "com.ztemt.v5light.home_key_open_light"

.field private static final ACTIVITY_NAME:Ljava/lang/String; = "cn.nubia.v5light.preset.MainActivity"

.field private static final ACTIVITY_NAME_ALARM_ALERT_CENTER_DIALOG:Ljava/lang/String; = "cn.nubia.deskclock.activity.AlarmAlertCenterDialogActivity"

.field private static final ACTIVITY_NAME_ALARM_ALERT_FULLSCRREN:Ljava/lang/String; = "cn.nubia.deskclock.activity.AlarmAlertFullScreen"

.field private static final ACTIVITY_NAME_COUNTDOWN_ALERT_CENTER_DIALOG:Ljava/lang/String; = "cn.nubia.deskclock.activity.CountdownAlertCenterDialogActivity"

.field private static final ACTIVITY_NAME_COUNTDOWN_ALERT_FULLSCRREN:Ljava/lang/String; = "cn.nubia.deskclock.activity.CountdownAlertActivity"

.field private static final LONG_PRESS_FAST_ON_FLASHLIGHT:Ljava/lang/String; = "long_press_fast_on_flash_light"

.field private static final TAG:Ljava/lang/String; = "TouchHomeLightCtrl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLightOpened:Z

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mLightOpened:Z

    .line 33
    iput-object p2, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 34
    iput-object p1, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcn/nubia/server/policy/TouchHomeLightCtrl$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl$1;-><init>(Lcn/nubia/server/policy/TouchHomeLightCtrl;)V

    iput-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mRunnable:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/TouchHomeLightCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/TouchHomeLightCtrl;

    .line 16
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->isCurrentLightActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/TouchHomeLightCtrl;)Lcom/android/server/policy/PhoneWindowManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/TouchHomeLightCtrl;

    .line 16
    iget-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/TouchHomeLightCtrl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/TouchHomeLightCtrl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->sendLightBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/TouchHomeLightCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/TouchHomeLightCtrl;

    .line 16
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->stopTimer()V

    return-void
.end method

.method private closeLight(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 82
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 83
    .local v0, "down":Z
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mLightOpened:Z

    if-eqz v2, :cond_1

    .line 84
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->startTimer()V

    .line 85
    iput-boolean v1, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mLightOpened:Z

    .line 87
    :cond_1
    return-void
.end method

.method private isAlarmAlertOrCenterDialogActivity()Z
    .locals 5

    .line 138
    iget-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 140
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "cn":Ljava/lang/String;
    const-string v4, "cn.nubia.deskclock.activity.AlarmAlertFullScreen"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "cn.nubia.deskclock.activity.AlarmAlertCenterDialogActivity"

    .line 142
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "cn.nubia.deskclock.activity.CountdownAlertCenterDialogActivity"

    .line 143
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    return v3

    .line 144
    :cond_1
    :goto_0
    return v1
.end method

.method private isCountdownAlertFullActivity()Z
    .locals 5

    .line 150
    iget-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 152
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "cn":Ljava/lang/String;
    const-string v4, "cn.nubia.deskclock.activity.CountdownAlertActivity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    return v1

    .line 156
    :cond_0
    return v3
.end method

.method private isCurrentLightActivity()Z
    .locals 5

    .line 128
    iget-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 130
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "cn":Ljava/lang/String;
    const-string v4, "cn.nubia.v5light.preset.MainActivity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    return v1

    .line 134
    :cond_0
    return v3
.end method

.method private longPressFastOnFlashlight()Z
    .locals 3

    .line 161
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "long_press_fast_on_flash_light"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .local v1, "state":I
    if-nez v1, :cond_0

    .line 163
    return v0

    .line 165
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 167
    .end local v1    # "state":I
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private openLight(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)V
    .locals 5
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "repeatCount"    # I

    .line 90
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-nez v0, :cond_1

    .line 92
    return-void

    .line 93
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 94
    .local v1, "type":I
    const/16 v2, 0x7d9

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v1, v2, :cond_3

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_2

    goto :goto_1

    .line 104
    :cond_2
    if-ne p2, v4, :cond_4

    .line 105
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->stopTimer()V

    .line 106
    iput-boolean v3, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mLightOpened:Z

    goto :goto_2

    .line 97
    :cond_3
    :goto_1
    if-ne p2, v4, :cond_4

    iget-object v2, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mLightOpened:Z

    if-nez v2, :cond_4

    .line 99
    const-string v2, "com.ztemt.v5light.home_key_open_light"

    invoke-direct {p0, v2}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->sendLightBroadcast(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->stopTimer()V

    .line 101
    iput-boolean v3, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mLightOpened:Z

    .line 109
    :cond_4
    :goto_2
    return-void
.end method

.method private sendLightBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method private startTimer()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 5
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 53
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 54
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 55
    .local v1, "repeatCount":I
    const-wide/16 v2, -0x1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 56
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->longPressFastOnFlashlight()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    invoke-direct {p0, p2}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->closeLight(Landroid/view/KeyEvent;)V

    .line 58
    invoke-direct {p0, p1, v1}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->openLight(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)V

    .line 60
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->isCurrentLightActivity()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    return-wide v2

    .line 63
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->isAlarmAlertOrCenterDialogActivity()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    return-wide v2

    .line 68
    :cond_2
    const/16 v4, 0x52

    if-ne v0, v4, :cond_4

    .line 69
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->isAlarmAlertOrCenterDialogActivity()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 70
    return-wide v2

    .line 72
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/policy/TouchHomeLightCtrl;->isCountdownAlertFullActivity()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    new-instance v2, Landroid/content/Intent;

    const-string v3, "close_countdown_from_menu"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcn/nubia/server/policy/TouchHomeLightCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method
