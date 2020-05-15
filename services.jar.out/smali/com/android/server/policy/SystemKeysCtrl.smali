.class public Lcom/android/server/policy/SystemKeysCtrl;
.super Ljava/lang/Object;
.source "SystemKeysCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;
.implements Lcom/android/server/policy/ISettingListener;


# static fields
.field private static DEBUG:Z = false

.field private static DEBUG_BOTTOM_KEY_FUNC:Z = false

.field private static final FLAG_DEFAULT:I = 0xf

.field private static final FUN_CANCEL_APP:I = 0x2

.field private static final FUN_DEFAULT:I = -0x1

.field private static final FUN_OPEN_MENU:I = 0x1

.field private static final FUN_OPEN_MULTITASK:I = 0x1

.field private static final FUN_OPEN_NOTIFICATION:I = 0x3

.field private static final FUN_OPEN_SINGLE_HAND:I = 0x4

.field private static final FUN_OPEN_VIOCE_ASSISTENT:I = 0x5

.field private static final GAME_MODE_RUNNING_DB:Ljava/lang/String; = "game_mode_lock"

.field private static final GAME_MODE_TOAST_COUNTS_DB:Ljava/lang/String; = "game_mode_toast_counts"

.field private static final GAME_MODE_VIRTUAL_KEY_DB:Ljava/lang/String; = "navigation_hidden"

.field private static final SINGLE_HAND_MODE_CLOSE:I = 0x0

.field private static final SINGLE_HAND_MODE_LEFT:I = 0x2

.field private static final SINGLE_HAND_MODE_RIGHT:I = 0x1

.field private static final SINGLE_UI_DB:Ljava/lang/String; = "single_ui_mode"

.field public static final SYSTEM_KEYS_CLICK_MENU:Ljava/lang/String; = "system_keys_onclick_menu"

.field public static final SYSTEM_KEYS_GESTURE_REVERSE:Ljava/lang/String; = "navi_ges_flag"

.field public static final SYSTEM_KEYS_LONG_PRESS_BACK:Ljava/lang/String; = "system_keys_long_press_back"

.field public static final SYSTEM_KEYS_LONG_PRESS_HOME:Ljava/lang/String; = "system_keys_long_press_home"

.field public static final SYSTEM_KEYS_LONG_PRESS_MENU:Ljava/lang/String; = "system_keys_long_press_menu"

.field public static final SYSTEM_KEYS_REVERSE:Ljava/lang/String; = "system_keys_reverse"

.field private static final TAG:Ljava/lang/String; = "SystemKeysCtrl"

.field private static mSystemKeysCtrl:Lcom/android/server/policy/SystemKeysCtrl;


# instance fields
.field private isBackLongPress:Z

.field private isBackLongPressCancelCurrentApp:Z

.field private isBackLongPressExpandNotificationPanel:Z

.field private isDoubleClick:Z

.field private isHasVirtualKey:Z

.field private isHomeLPMultiTask:Z

.field private isHomeLongPress:Z

.field private isHomeLongPressCancelCurrentApp:Z

.field private isHomeLongPressExpandNotificationPanel:Z

.field private isHomeLongPressOpenVoiceAssistent:Z

.field private isLockedByGameMode:Z

.field private isMenuBackLongPressOpenSingleHand:Z

.field private isMenuClickMultiTask:Z

.field private isMenuLongPress:Z

.field private isMenuLongPressCancelCurrentApp:Z

.field private isMenuLongPressExpandNotificationPanel:Z

.field private isMenuLongPressMenu:Z

.field private isMenuOnClick:Z

.field private isNavigationGesture:Z

.field private isPopWindowShowing:Z

.field private isSingleHandBack:Z

.field private isTheKeysReverse:Z

.field private isUnLockByUser:Z

.field private mContext:Landroid/content/Context;

.field private mGameModeHelper:Lcn/nubia/game/GameModeHelper;

.field private mHandler:Landroid/os/Handler;

.field private mLastClickTime:J

.field private mLastKeyCode:I

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field mPm:Landroid/content/pm/PackageManager;

.field private mRemovePopWindowRunnable:Ljava/lang/Runnable;

.field private mSingleUIMode:I

.field private mToastCounts:I

.field private mToastRunnable:Ljava/lang/Runnable;

.field private mVibrationMotor:Lcn/nubia/Motor/IVibrationMotor;

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    const-string v0, "SystemKeysCtrl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 4
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPress:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuOnClick:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPress:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPress:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isSingleHandBack:Z

    .line 87
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->mSingleUIMode:I

    .line 88
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLPMultiTask:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isLockedByGameMode:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuClickMultiTask:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressMenu:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressCancelCurrentApp:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressExpandNotificationPanel:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressCancelCurrentApp:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressExpandNotificationPanel:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressOpenVoiceAssistent:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressExpandNotificationPanel:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressCancelCurrentApp:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isNavigationGesture:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isUnLockByUser:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHasVirtualKey:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isDoubleClick:Z

    .line 126
    iput v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mToastCounts:I

    .line 685
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isPopWindowShowing:Z

    .line 686
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mHandler:Landroid/os/Handler;

    .line 130
    iput-object p2, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mPm:Landroid/content/pm/PackageManager;

    .line 132
    iput-object p1, p0, Lcom/android/server/policy/SystemKeysCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 133
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/Motor/VibrationMotorFactory;->createVibrationMotor(Landroid/content/Context;)Lcn/nubia/Motor/IVibrationMotor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mVibrationMotor:Lcn/nubia/Motor/IVibrationMotor;

    .line 134
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->getDefault()Lcn/nubia/game/GameModeHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mGameModeHelper:Lcn/nubia/game/GameModeHelper;

    .line 135
    sput-object p0, Lcom/android/server/policy/SystemKeysCtrl;->mSystemKeysCtrl:Lcom/android/server/policy/SystemKeysCtrl;

    .line 136
    const-string v0, "false"

    .line 137
    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v1, "nubia_navigationbar_switch_feature"

    invoke-static {v1}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHasVirtualKey:Z

    .line 139
    sget-boolean v1, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SystemKeysCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHasVirtualKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHasVirtualKey:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/SystemKeysCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SystemKeysCtrl;

    .line 53
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->isLockedKeys()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1004(Lcom/android/server/policy/SystemKeysCtrl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SystemKeysCtrl;

    .line 53
    iget v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mToastCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mToastCounts:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/SystemKeysCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/SystemKeysCtrl;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isUnLockByUser:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/SystemKeysCtrl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/SystemKeysCtrl;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemKeysCtrl;->removePopWindowAtTime(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SystemKeysCtrl;

    .line 53
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SystemKeysCtrl;

    .line 53
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/policy/SystemKeysCtrl;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/SystemKeysCtrl;
    .param p1, "x1"    # Landroid/view/WindowManager;

    .line 53
    iput-object p1, p0, Lcom/android/server/policy/SystemKeysCtrl;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SystemKeysCtrl;

    .line 53
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/policy/SystemKeysCtrl;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/SystemKeysCtrl;
    .param p1, "x1"    # Landroid/view/View;

    .line 53
    iput-object p1, p0, Lcom/android/server/policy/SystemKeysCtrl;->mView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SystemKeysCtrl;

    .line 53
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->setUpPopWindowView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/SystemKeysCtrl;Landroid/view/WindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SystemKeysCtrl;
    .param p1, "x1"    # Landroid/view/WindowManager;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemKeysCtrl;->getScreenRotation(Landroid/view/WindowManager;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/SystemKeysCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/SystemKeysCtrl;

    .line 53
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->removePopWindow()V

    return-void
.end method

.method private cancelCurrentApp()V
    .locals 10

    .line 580
    sget-boolean v0, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SystemKeysCtrl"

    const-string v1, "cancelCurrentApp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mVibrationMotor:Lcn/nubia/Motor/IVibrationMotor;

    invoke-interface {v0}, Lcn/nubia/Motor/IVibrationMotor;->longPressMenuBackHomeKey()V

    .line 583
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 584
    .local v0, "iam":Landroid/app/IActivityManager;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v1

    .line 585
    .local v1, "listTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 586
    .local v3, "taskId":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 587
    .local v4, "topPkg":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 588
    .local v5, "pkg":Ljava/lang/String;
    const-string v6, ""

    .line 590
    .local v6, "appLabel":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/policy/SystemKeysCtrl;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v7, :cond_1

    .line 591
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v7, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, p0, Lcom/android/server/policy/SystemKeysCtrl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v8

    .line 593
    .local v8, "currentDefaultHome":Landroid/content/ComponentName;
    if-eqz v8, :cond_1

    .line 594
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 595
    return-void

    .line 599
    .end local v7    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "currentDefaultHome":Landroid/content/ComponentName;
    :cond_1
    const-string v7, "cn.nubia.launcher"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 600
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->collapseNotificationsPanel()V

    .line 602
    :cond_2
    const-string v7, "com.android.systemui.action.auto_test.clear"

    .line 603
    .local v7, "action":Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "auto_clear_flag"

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    const-string v2, "auto_clear_taskid"

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 606
    const-string v2, "auto_clear_pkg"

    invoke-virtual {v8, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    const-string v2, "auto_clear_topPkg"

    invoke-virtual {v8, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    const-string v2, "auto_clear_label"

    invoke-virtual {v8, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    iget-object v2, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .end local v0    # "iam":Landroid/app/IActivityManager;
    .end local v1    # "listTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "taskId":I
    .end local v4    # "topPkg":Ljava/lang/String;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "appLabel":Ljava/lang/String;
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemKeysCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelCurrentApp Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private cancelScreenPin()Z
    .locals 4

    .line 552
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 553
    .local v1, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    invoke-interface {v1}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    const/4 v0, 0x1

    return v0

    .line 557
    :cond_0
    return v0

    .line 559
    .end local v1    # "activityManager":Landroid/app/IActivityManager;
    :catch_0
    move-exception v1

    .line 560
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SystemKeysCtrl"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    return v0
.end method

.method private collapseNotificationsPanel()V
    .locals 3

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 523
    .local v0, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 524
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v0    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemKeysCtrl"

    const-string v2, "Exception when expandNotificationsPanel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private expandNotificationsPanel()V
    .locals 3

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isTopIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mVibrationMotor:Lcn/nubia/Motor/IVibrationMotor;

    invoke-interface {v0}, Lcn/nubia/Motor/IVibrationMotor;->longPressMenuBackHomeKey()V

    .line 508
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 509
    .local v0, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_1

    .line 510
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v0    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemKeysCtrl"

    const-string v2, "Exception when expandNotificationsPanel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/policy/SystemKeysCtrl;
    .locals 1

    .line 143
    sget-object v0, Lcom/android/server/policy/SystemKeysCtrl;->mSystemKeysCtrl:Lcom/android/server/policy/SystemKeysCtrl;

    return-object v0
.end method

.method private getScreenRotation(Landroid/view/WindowManager;)I
    .locals 1
    .param p1, "wm"    # Landroid/view/WindowManager;

    .line 794
    if-nez p1, :cond_0

    .line 795
    const/4 v0, 0x0

    return v0

    .line 797
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 798
    .local v0, "rotation":I
    return v0
.end method

.method private iniKeyFunction()V
    .locals 12

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuClickMultiTask:Z

    .line 361
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressMenu:Z

    .line 362
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressCancelCurrentApp:Z

    .line 363
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressExpandNotificationPanel:Z

    .line 364
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressCancelCurrentApp:Z

    .line 365
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressExpandNotificationPanel:Z

    .line 366
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressOpenVoiceAssistent:Z

    .line 367
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressExpandNotificationPanel:Z

    .line 368
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressCancelCurrentApp:Z

    .line 369
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    .line 370
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isNavigationGesture:Z

    .line 372
    iget-object v2, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    .line 373
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navi_ges_flag"

    .line 372
    const/16 v4, 0xf

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 377
    .local v2, "show":I
    iget-object v3, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "system_keys_long_press_home"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 378
    .local v3, "homeLong":I
    const-string v4, "cn.nubia.voiceassist"

    invoke-direct {p0, v4}, Lcom/android/server/policy/SystemKeysCtrl;->isAppExisted(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x5

    if-nez v4, :cond_0

    const-string v4, "cn.nubia.voiceassistants"

    invoke-direct {p0, v4}, Lcom/android/server/policy/SystemKeysCtrl;->isAppExisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "system_keys_long_press_home"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 382
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "system_keys_reverse"

    invoke-static {v4, v7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 385
    .local v4, "keysReverse":I
    const/4 v7, 0x4

    .line 386
    .local v7, "menuLong":I
    const/4 v8, 0x4

    .line 387
    .local v8, "backLong":I
    const/4 v9, 0x1

    .line 390
    .local v9, "menuClick":I
    and-int/lit8 v10, v2, 0x1

    if-ne v10, v1, :cond_2

    .line 391
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isNavigationGesture:Z

    goto :goto_0

    .line 393
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isNavigationGesture:Z

    .line 396
    :goto_0
    iget-boolean v10, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHasVirtualKey:Z

    if-nez v10, :cond_3

    .line 397
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isNavigationGesture:Z

    .line 400
    :cond_3
    if-ne v9, v1, :cond_4

    .line 401
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuClickMultiTask:Z

    goto :goto_1

    .line 403
    :cond_4
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuClickMultiTask:Z

    .line 406
    :goto_1
    const/4 v10, 0x4

    const/4 v11, 0x2

    if-ne v7, v1, :cond_5

    .line 407
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressMenu:Z

    goto :goto_2

    .line 408
    :cond_5
    if-ne v7, v11, :cond_6

    .line 409
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressCancelCurrentApp:Z

    goto :goto_2

    .line 410
    :cond_6
    if-ne v7, v5, :cond_7

    .line 411
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressExpandNotificationPanel:Z

    goto :goto_2

    .line 412
    :cond_7
    if-ne v7, v10, :cond_8

    .line 413
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    goto :goto_2

    .line 415
    :cond_8
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressMenu:Z

    .line 416
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressCancelCurrentApp:Z

    .line 417
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPressExpandNotificationPanel:Z

    .line 418
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    .line 421
    :goto_2
    if-ne v3, v11, :cond_9

    .line 422
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressCancelCurrentApp:Z

    goto :goto_3

    .line 423
    :cond_9
    if-ne v3, v5, :cond_a

    .line 424
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressExpandNotificationPanel:Z

    goto :goto_3

    .line 425
    :cond_a
    if-ne v3, v6, :cond_b

    .line 426
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressOpenVoiceAssistent:Z

    goto :goto_3

    .line 428
    :cond_b
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressCancelCurrentApp:Z

    .line 429
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressExpandNotificationPanel:Z

    .line 432
    :goto_3
    if-ne v8, v11, :cond_c

    .line 433
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressCancelCurrentApp:Z

    goto :goto_4

    .line 434
    :cond_c
    if-ne v8, v5, :cond_d

    .line 435
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressExpandNotificationPanel:Z

    goto :goto_4

    .line 436
    :cond_d
    if-ne v8, v10, :cond_e

    .line 437
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    goto :goto_4

    .line 439
    :cond_e
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressCancelCurrentApp:Z

    .line 440
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressExpandNotificationPanel:Z

    .line 441
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    .line 444
    :goto_4
    if-ne v4, v1, :cond_f

    .line 445
    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    goto :goto_5

    .line 446
    :cond_f
    const/4 v0, -0x1

    if-ne v4, v0, :cond_10

    .line 447
    iput-boolean v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    .line 461
    :cond_10
    :goto_5
    return-void
.end method

.method private interceptChatKeyDown()V
    .locals 4

    .line 465
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 467
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.voiceassist"

    invoke-direct {p0, v1}, Lcom/android/server/policy/SystemKeysCtrl;->isAppExisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.voiceassist"

    const-string v3, "cn.nubia.voiceassist.AssistService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "cmp":Landroid/content/ComponentName;
    goto :goto_0

    .line 470
    .end local v1    # "cmp":Landroid/content/ComponentName;
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.voiceassistants"

    const-string v3, "cn.nubia.voiceassistants.AssistService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .restart local v1    # "cmp":Landroid/content/ComponentName;
    :goto_0
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 473
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 474
    const-string v2, "data"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    const-string v2, "from"

    const-string v3, "HomeKey"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    iget-object v2, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "cmp":Landroid/content/ComponentName;
    goto :goto_1

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 480
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private interceptChatKeyUp()V
    .locals 4

    .line 484
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 486
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.voiceassist"

    invoke-direct {p0, v1}, Lcom/android/server/policy/SystemKeysCtrl;->isAppExisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.voiceassist"

    const-string v3, "cn.nubia.voiceassist.AssistService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "cmp":Landroid/content/ComponentName;
    goto :goto_0

    .line 489
    .end local v1    # "cmp":Landroid/content/ComponentName;
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.voiceassistants"

    const-string v3, "cn.nubia.voiceassistants.AssistService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .restart local v1    # "cmp":Landroid/content/ComponentName;
    :goto_0
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 492
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 493
    const-string v2, "data"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    const-string v2, "from"

    const-string v3, "HomeKey"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    iget-object v2, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "cmp":Landroid/content/ComponentName;
    goto :goto_1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private isAppExisted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 832
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 835
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    const/4 v1, 0x1

    .line 840
    .local v1, "installed":Z
    goto :goto_0

    .line 837
    .end local v1    # "installed":Z
    :catch_0
    move-exception v1

    .line 838
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 839
    const/4 v1, 0x0

    .line 841
    .local v1, "installed":Z
    :goto_0
    return v1
.end method

.method private isLockedKeys()Z
    .locals 1

    .line 692
    iget-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isUnLockByUser:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mGameModeHelper:Lcn/nubia/game/GameModeHelper;

    invoke-virtual {v0}, Lcn/nubia/game/GameModeHelper;->IsGameModeSubNoKeysRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    const/4 v0, 0x1

    return v0

    .line 695
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isScreenPinMode()Z
    .locals 4

    .line 567
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 568
    .local v1, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 569
    const/4 v0, 0x1

    return v0

    .line 571
    :cond_0
    return v0

    .line 573
    .end local v1    # "activityManager":Landroid/app/IActivityManager;
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SystemKeysCtrl"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    return v0
.end method

.method private removePopWindow()V
    .locals 2

    .line 773
    sget-boolean v0, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SystemKeysCtrl"

    const-string v1, "... remove the pop window"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isPopWindowShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isPopWindowShowing:Z

    .line 778
    :cond_1
    return-void
.end method

.method private removePopWindowAtTime(I)V
    .locals 4
    .param p1, "delay"    # I

    .line 781
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mRemovePopWindowRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 782
    sget-boolean v0, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SystemKeysCtrl"

    const-string/jumbo v1, "removePopWindowAtTime removeCallbacks [mRemovePopWindowRunnable]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->mRemovePopWindowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/SystemKeysCtrl$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SystemKeysCtrl$3;-><init>(Lcom/android/server/policy/SystemKeysCtrl;)V

    iput-object v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->mRemovePopWindowRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 792
    return-void
.end method

.method private setUpPopWindowView()Landroid/view/View;
    .locals 5

    .line 699
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x30a0032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 700
    .local v0, "view":Landroid/view/View;
    const v1, 0x3080089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 701
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->isLockedKeys()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    iget-object v2, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x307006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 704
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x3070174

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 706
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/policy/SystemKeysCtrl;->isHasVirtualKey:Z

    if-eqz v2, :cond_1

    .line 707
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 708
    .local v2, "lay":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0xa

    const/16 v4, 0x78

    invoke-virtual {v2, v4, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 709
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    .end local v2    # "lay":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v2, Lcom/android/server/policy/SystemKeysCtrl$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/SystemKeysCtrl$1;-><init>(Lcom/android/server/policy/SystemKeysCtrl;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    return-object v0
.end method

.method private showKeyToast()V
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/SystemKeysCtrl$5;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SystemKeysCtrl$5;-><init>(Lcom/android/server/policy/SystemKeysCtrl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 829
    return-void
.end method

.method private showPopWindow()V
    .locals 2

    .line 732
    iget-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isPopWindowShowing:Z

    if-eqz v0, :cond_0

    .line 733
    return-void

    .line 736
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/SystemKeysCtrl$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SystemKeysCtrl$2;-><init>(Lcom/android/server/policy/SystemKeysCtrl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isPopWindowShowing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    goto :goto_0

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 771
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private showToast()V
    .locals 4

    .line 802
    iget v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mToastCounts:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 803
    sget-boolean v0, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SystemKeysCtrl"

    const-string v1, "... >2 do not show toast ...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    return-void

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/SystemKeysCtrl$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SystemKeysCtrl$4;-><init>(Lcom/android/server/policy/SystemKeysCtrl;)V

    iput-object v1, p0, Lcom/android/server/policy/SystemKeysCtrl;->mToastRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1fe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 818
    return-void
.end method

.method private toggleRecentApps()V
    .locals 3

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 540
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 541
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .end local v0    # "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_0
    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemKeysCtrl"

    const-string v2, "Exception when toggleRecentApps"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private updateSingleUIMode()V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "single_ui_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mSingleUIMode:I

    .line 622
    return-void
.end method

.method private updateToastCounts()V
    .locals 3

    .line 667
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_toast_counts"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mToastCounts:I

    .line 668
    sget-boolean v0, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SystemKeysCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateToastCounts mToastCounts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/SystemKeysCtrl;->mToastCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 18
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    move-object/from16 v0, p0

    .line 148
    iget-boolean v1, v0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    .line 149
    .local v1, "leftBack":Z
    iget-object v2, v0, Lcom/android/server/policy/SystemKeysCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v2

    .line 150
    .local v2, "keyguardOn":Z
    const-wide/high16 v3, -0x8000000000000000L

    if-eqz v2, :cond_0

    .line 151
    return-wide v3

    .line 153
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 154
    .local v5, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 155
    .local v6, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    .line 156
    .local v7, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    .line 157
    .local v8, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_1

    move v9, v11

    goto :goto_0

    :cond_1
    move v9, v10

    .line 158
    .local v9, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v12

    .line 159
    .local v12, "canceled":Z
    if-nez v6, :cond_2

    if-eqz v9, :cond_2

    move v13, v11

    goto :goto_1

    :cond_2
    move v13, v10

    .line 160
    .local v13, "isClick":Z
    :goto_1
    sget-boolean v14, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v14, :cond_3

    const-string v14, "SystemKeysCtrl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive : "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SystemKeysCtrl;->isLockedKeys()Z

    move-result v3

    const/4 v4, 0x3

    const/16 v14, 0x52

    const/4 v15, 0x4

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_b

    if-eq v5, v15, :cond_4

    if-eq v5, v4, :cond_4

    if-ne v5, v14, :cond_b

    :cond_4
    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isNavigationGesture:Z

    if-nez v3, :cond_b

    .line 168
    if-eqz v13, :cond_8

    .line 169
    iget v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->mLastKeyCode:I

    if-ne v3, v5, :cond_6

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v14, v0, Lcom/android/server/policy/SystemKeysCtrl;->mLastClickTime:J

    sub-long/2addr v3, v14

    const-wide/16 v14, 0x1f4

    cmp-long v3, v3, v14

    if-gez v3, :cond_6

    .line 171
    sget-boolean v3, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "SystemKeysCtrl"

    const-string v4, "game mode double click!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_5
    iput-boolean v11, v0, Lcom/android/server/policy/SystemKeysCtrl;->isDoubleClick:Z

    .line 173
    iget-object v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->mToastRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_7

    .line 174
    iget-object v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/android/server/policy/SystemKeysCtrl;->mToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 177
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SystemKeysCtrl;->showToast()V

    .line 179
    :cond_7
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->mLastClickTime:J

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->mLastKeyCode:I

    .line 183
    :cond_8
    if-nez v9, :cond_a

    .line 184
    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isDoubleClick:Z

    if-eqz v3, :cond_a

    .line 185
    iput-boolean v10, v0, Lcom/android/server/policy/SystemKeysCtrl;->isDoubleClick:Z

    .line 186
    iput-boolean v11, v0, Lcom/android/server/policy/SystemKeysCtrl;->isUnLockByUser:Z

    .line 187
    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isPopWindowShowing:Z

    if-nez v3, :cond_9

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SystemKeysCtrl;->showPopWindow()V

    .line 189
    const/16 v3, 0xbb8

    invoke-direct {v0, v3}, Lcom/android/server/policy/SystemKeysCtrl;->removePopWindowAtTime(I)V

    .line 191
    :cond_9
    sget-boolean v3, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "SystemKeysCtrl"

    const-string v4, "game mode double click on key up!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_a
    return-wide v16

    .line 198
    :cond_b
    if-ne v5, v15, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_c

    .line 199
    iput-boolean v11, v0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPress:Z

    .line 201
    :cond_c
    if-ne v5, v14, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_d

    .line 202
    iput-boolean v11, v0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPress:Z

    .line 204
    :cond_d
    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPress:Z

    if-nez v3, :cond_e

    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPress:Z

    if-eqz v3, :cond_f

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SystemKeysCtrl;->isScreenPinMode()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 205
    iput-boolean v10, v0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPress:Z

    .line 206
    iput-boolean v10, v0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuLongPress:Z

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SystemKeysCtrl;->cancelScreenPin()Z

    .line 208
    return-wide v16

    .line 211
    :cond_f
    if-ne v5, v15, :cond_1c

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_19

    .line 214
    iput-boolean v11, v0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPress:Z

    .line 215
    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressExpandNotificationPanel:Z

    if-eqz v3, :cond_11

    .line 216
    sget-boolean v3, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v3, :cond_10

    const-string v3, "SystemKeysCtrl"

    const-string v4, "KEYCODE_BACK FLAG_LONG_PRESS open NotificationPanel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SystemKeysCtrl;->expandNotificationsPanel()V

    goto :goto_4

    .line 218
    :cond_11
    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPressCancelCurrentApp:Z

    if-eqz v3, :cond_13

    .line 219
    sget-boolean v3, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v3, :cond_12

    const-string v3, "SystemKeysCtrl"

    const-string v4, "KEYCODE_BACK FLAG_LONG_PRESS cancel current app"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SystemKeysCtrl;->cancelCurrentApp()V

    goto :goto_4

    .line 221
    :cond_13
    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuBackLongPressOpenSingleHand:Z

    if-eqz v3, :cond_18

    .line 222
    sget-boolean v3, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v3, :cond_14

    const-string v3, "SystemKeysCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEYCODE_BACK FLAG_LONG_PRESS open SingleHand isTheKeysReverse = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_14
    if-eqz v1, :cond_15

    .line 224
    sget-boolean v3, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v3, :cond_16

    const-string v3, "SystemKeysCtrl"

    const-string v4, "[Key]Left:Back:Long press:single hand"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 226
    :cond_15
    sget-boolean v3, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v3, :cond_16

    const-string v3, "SystemKeysCtrl"

    const-string v4, "[Key]Right:Back:Long press:single hand"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_16
    :goto_3
    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isTheKeysReverse:Z

    if-eqz v3, :cond_17

    .line 229
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/server/policy/SystemKeysCtrl;->startSingleHand(I)V

    goto :goto_4

    .line 231
    :cond_17
    invoke-virtual {v0, v11}, Lcom/android/server/policy/SystemKeysCtrl;->startSingleHand(I)V

    .line 234
    :cond_18
    :goto_4
    return-wide v16

    .line 237
    :cond_19
    if-nez v9, :cond_1a

    .line 238
    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPress:Z

    if-eqz v3, :cond_31

    .line 239
    iput-boolean v10, v0, Lcom/android/server/policy/SystemKeysCtrl;->isBackLongPress:Z

    .line 240
    return-wide v16

    .line 243
    :cond_1a
    if-eqz v1, :cond_1b

    .line 244
    sget-boolean v3, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v3, :cond_31

    const-string v3, "SystemKeysCtrl"

    const-string v4, "[Key]Left:Back:Click:normal back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 246
    :cond_1b
    sget-boolean v3, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v3, :cond_31

    const-string v3, "SystemKeysCtrl"

    const-string v4, "[Key]Right:Back:Click:normal back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 249
    :cond_1c
    if-ne v5, v4, :cond_2d

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_29

    .line 252
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->isGameKeyOn()Z

    move-result v3

    .line 253
    .local v3, "isGameKeyOn":Z
    if-eqz v3, :cond_1e

    .line 254
    sget-boolean v4, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v4, :cond_1d

    const-string v4, "SystemKeysCtrl"

    const-string v10, "KEYCODE_HOME LONGPRESS gameKeyOn,return"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1d
    iput-boolean v11, v0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPress:Z

    .line 256
    return-wide v16

    .line 258
    :cond_1e
    iget-boolean v4, v0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressCancelCurrentApp:Z

    if-eqz v4, :cond_21

    .line 259
    sget-boolean v4, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v4, :cond_1f

    const-string v4, "SystemKeysCtrl"

    const-string v10, "KEYCODE_HOME LONGPRESS cancel current app"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1f
    sget-boolean v4, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v4, :cond_20

    const-string v4, "SystemKeysCtrl"

    const-string v10, "[Key]Middle:home:Long press:cancel current app"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_20
    iput-boolean v11, v0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPress:Z

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SystemKeysCtrl;->cancelCurrentApp()V

    .line 263
    return-wide v16

    .line 264
    :cond_21
    iget-boolean v4, v0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressExpandNotificationPanel:Z

    if-eqz v4, :cond_24

    .line 265
    sget-boolean v4, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v4, :cond_22

    const-string v4, "SystemKeysCtrl"

    const-string v10, "KEYCODE_HOME LONGPRESS  open NotificationPanel"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_22
    sget-boolean v4, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v4, :cond_23

    const-string v4, "SystemKeysCtrl"

    const-string v10, "[Key]Middle:home:Long press:Expand notification"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_23
    iput-boolean v11, v0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPress:Z

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SystemKeysCtrl;->expandNotificationsPanel()V

    .line 269
    return-wide v16

    .line 270
    :cond_24
    iget-boolean v4, v0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressOpenVoiceAssistent:Z

    if-eqz v4, :cond_26

    .line 271
    sget-boolean v4, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v4, :cond_25

    const-string v4, "SystemKeysCtrl"

    const-string v10, "KEYCODE_HOME LONGPRESS  open vioce assistent"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_25
    iput-boolean v11, v0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPress:Z

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SystemKeysCtrl;->interceptChatKeyDown()V

    .line 274
    return-wide v16

    .line 276
    :cond_26
    iput-boolean v11, v0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLPMultiTask:Z

    .line 277
    sget-boolean v4, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v4, :cond_27

    const-string v4, "SystemKeysCtrl"

    const-string v10, "[Key]Middle:home:Long press:MultiTask"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_27
    sget-boolean v4, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v4, :cond_28

    const-string v4, "SystemKeysCtrl"

    const-string v10, "KEYCODE_HOME LONGPRESS  open multitask"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_28
    iput-boolean v11, v0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPress:Z

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SystemKeysCtrl;->toggleRecentApps()V

    .line 281
    return-wide v16

    .line 285
    .end local v3    # "isGameKeyOn":Z
    :cond_29
    if-nez v9, :cond_31

    .line 286
    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPress:Z

    if-eqz v3, :cond_2b

    .line 287
    iput-boolean v10, v0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPress:Z

    .line 289
    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLongPressOpenVoiceAssistent:Z

    if-eqz v3, :cond_2a

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SystemKeysCtrl;->interceptChatKeyUp()V

    .line 293
    :cond_2a
    return-wide v16

    .line 294
    :cond_2b
    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLPMultiTask:Z

    if-nez v3, :cond_2c

    .line 295
    sget-boolean v3, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v3, :cond_2c

    const-string v3, "SystemKeysCtrl"

    const-string v4, "[Key]Middle:home:Click:Launcher"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_2c
    iput-boolean v10, v0, Lcom/android/server/policy/SystemKeysCtrl;->isHomeLPMultiTask:Z

    goto :goto_6

    .line 299
    :cond_2d
    if-ne v5, v14, :cond_31

    .line 302
    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuClickMultiTask:Z

    if-eqz v3, :cond_2e

    if-eqz v13, :cond_2e

    .line 303
    iput-boolean v11, v0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuOnClick:Z

    .line 304
    return-wide v16

    .line 335
    :cond_2e
    if-nez v9, :cond_31

    .line 341
    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuOnClick:Z

    if-eqz v3, :cond_31

    iget-boolean v3, v0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuClickMultiTask:Z

    if-eqz v3, :cond_31

    if-nez v12, :cond_31

    .line 342
    if-eqz v1, :cond_2f

    .line 343
    sget-boolean v3, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v3, :cond_30

    const-string v3, "SystemKeysCtrl"

    const-string v4, "[Key]Right:Menu:Click:MultiTask"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 345
    :cond_2f
    sget-boolean v3, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG_BOTTOM_KEY_FUNC:Z

    if-eqz v3, :cond_30

    const-string v3, "SystemKeysCtrl"

    const-string v4, "[Key]Left:Menu:Click:MultiTask"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_30
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SystemKeysCtrl;->toggleRecentApps()V

    .line 348
    iput-boolean v10, v0, Lcom/android/server/policy/SystemKeysCtrl;->isMenuOnClick:Z

    .line 349
    return-wide v16

    .line 354
    :cond_31
    :goto_6
    sget-boolean v3, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v3, :cond_32

    const-string v3, "SystemKeysCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "return to-->{PhoneWindowManager} "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_32
    const-wide/high16 v3, -0x8000000000000000L

    return-wide v3
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 631
    const-string/jumbo v0, "system_keys_onclick_menu"

    .line 632
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 631
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 635
    const-string/jumbo v0, "system_keys_long_press_back"

    .line 636
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 635
    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 639
    const-string/jumbo v0, "system_keys_long_press_menu"

    .line 640
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 639
    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 643
    const-string/jumbo v0, "system_keys_long_press_home"

    .line 644
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 643
    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 647
    const-string/jumbo v0, "system_keys_reverse"

    .line 648
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 647
    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 651
    const-string v0, "game_mode_toast_counts"

    .line 652
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 651
    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 655
    const-string/jumbo v0, "navi_ges_flag"

    .line 656
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 655
    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 658
    return-void
.end method

.method public setToastCounts(I)V
    .locals 2
    .param p1, "counts"    # I

    .line 672
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_toast_counts"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 673
    return-void
.end method

.method public startSingleHand(I)V
    .locals 0
    .param p1, "direction"    # I

    .line 627
    return-void
.end method

.method public updateGameModeStatus(I)V
    .locals 3
    .param p1, "state"    # I

    .line 676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SystemKeysCtrl;->isUnLockByUser:Z

    .line 677
    if-nez p1, :cond_0

    .line 678
    invoke-direct {p0, v0}, Lcom/android/server/policy/SystemKeysCtrl;->removePopWindowAtTime(I)V

    .line 680
    :cond_0
    sget-boolean v0, Lcom/android/server/policy/SystemKeysCtrl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SystemKeysCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "... updateGameModeStatus(state) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_1
    return-void
.end method

.method public updateSettings()V
    .locals 0

    .line 662
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->iniKeyFunction()V

    .line 663
    invoke-direct {p0}, Lcom/android/server/policy/SystemKeysCtrl;->updateToastCounts()V

    .line 664
    return-void
.end method
