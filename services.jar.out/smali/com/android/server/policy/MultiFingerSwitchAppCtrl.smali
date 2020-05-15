.class public Lcom/android/server/policy/MultiFingerSwitchAppCtrl;
.super Ljava/lang/Object;
.source "MultiFingerSwitchAppCtrl.java"


# static fields
.field private static final MAX_TASKS:I = 0x15


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mChangeBySwitch:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentAppIndex:I

.field private mIsThreeFingerSlideEnable:Z

.field mLaunchReceiver:Landroid/content/BroadcastReceiver;

.field private mNeedUpdate:Z

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mRecentAppSwitchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    .line 30
    iput-boolean v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mIsThreeFingerSlideEnable:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mChangeBySwitch:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mNeedUpdate:Z

    .line 180
    new-instance v0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl$1;-><init>(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;)V

    iput-object v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mLaunchReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 36
    iput-object p1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 37
    iput-object p2, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    .local v0, "launchFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTIVITY_STACK_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mLaunchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mActivityManager:Landroid/app/ActivityManager;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    .line 24
    iget-boolean v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mIsThreeFingerSlideEnable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/MultiFingerSwitchAppCtrl;

    .line 24
    iget-boolean v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mChangeBySwitch:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/MultiFingerSwitchAppCtrl;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mChangeBySwitch:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/policy/MultiFingerSwitchAppCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/MultiFingerSwitchAppCtrl;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mNeedUpdate:Z

    return p1
.end method

.method private canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 91
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->isHomeApplication(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.systemui"

    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cn.nubia.setupwizard"

    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cn.nubia.applockmanager"

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android"

    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    nop

    .line 93
    :cond_0
    return v0

    .line 99
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private canAddIntoRecentAppSwitchList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    .line 75
    .local v0, "canBeAdd":Z
    invoke-direct {p0, p1}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->isHomeApplication(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 79
    :cond_0
    const-string v1, "com.android.systemui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    const/4 v0, 0x0

    .line 83
    :cond_1
    const-string v1, "cn.nubia.setupwizard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const/4 v0, 0x0

    .line 87
    :cond_2
    return v0
.end method

.method private getCurrentRuningApp()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 5

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mActivityManager:Landroid/app/ActivityManager;

    .line 55
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 57
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 58
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 59
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 60
    new-instance v3, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    move-object v0, v3

    .line 61
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iput v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 62
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 63
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 64
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 68
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method private getInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 3
    .param p1, "info"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .line 167
    const/4 v0, -0x1

    .line 169
    .local v0, "instanceId":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 170
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 171
    if-lez v0, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 176
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private isHomeApplication(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "bHome":Z
    iget-object v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 105
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 106
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 108
    .local v2, "homeInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 112
    :cond_0
    return v0
.end method

.method private removeDuplicateTasks(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 142
    .local p1, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 145
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "newTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 147
    .local v2, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    const/4 v3, 0x0

    .line 148
    .local v3, "i":I
    invoke-direct {p0, v2}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->getInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v4

    .line 149
    .local v4, "instanceId":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v3, v5, :cond_2

    .line 150
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 151
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 152
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 153
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 154
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 155
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {p0, v5}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->getInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 156
    goto :goto_2

    .line 149
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 159
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 160
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v3    # "i":I
    .end local v4    # "instanceId":I
    :cond_3
    goto :goto_0

    .line 163
    :cond_4
    return-object v0

    .line 143
    .end local v0    # "newTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_5
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private switchToNewApp(Z)V
    .locals 8
    .param p1, "bNext"    # Z

    .line 257
    iget-object v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    iget v1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mCurrentAppIndex:I

    .line 258
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 259
    .local v0, "newTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v0, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    const/4 v1, 0x0

    .line 263
    .local v1, "opts":Landroid/app/ActivityOptions;
    if-eqz p1, :cond_1

    .line 265
    iget-object v2, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    const v3, 0x10a0091

    const v4, 0x10a0094

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    goto :goto_0

    .line 270
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    const v3, 0x10a0002

    const v4, 0x10a0003

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 279
    :goto_0
    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v3, 0x1

    if-gez v2, :cond_2

    .line 280
    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 281
    .local v2, "intent":Landroid/content/Intent;
    const v4, 0x10104000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    iget-object v4, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, -0x2

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 286
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 287
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mActivityManager:Landroid/app/ActivityManager;

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 288
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 287
    invoke-virtual {v2, v4, v3, v5}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 290
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mChangeBySwitch:Z

    .line 291
    return-void
.end method

.method private updateRecentAppSwitchList()V
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v1, 0x15

    const/4 v2, 0x2

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 125
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->removeDuplicateTasks(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, "newRecentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 127
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 128
    .local v3, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v3, :cond_2

    .line 129
    goto :goto_1

    .line 131
    :cond_2
    iget-object v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_3

    .line 132
    iget-object v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 133
    .local v4, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v4}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 134
    iget-object v5, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v3    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "i":I
    :cond_4
    return-void

    .line 124
    .end local v1    # "newRecentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method doSwitchApp(Z)V
    .locals 3
    .param p1, "bNext"    # Z

    .line 198
    iget-object v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->getCurrentRuningApp()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    .line 202
    .local v0, "currentRunApp":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v0, :cond_1

    .line 203
    return-void

    .line 204
    :cond_1
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "cn.nubia.setupwizard"

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->getScreenSwitchManager()Lnubia/os/screenswitch/ScreenSwitchInternal;

    move-result-object v2

    .line 211
    .local v2, "ss":Lnubia/os/screenswitch/ScreenSwitchInternal;
    if-eqz v2, :cond_3

    .line 212
    invoke-virtual {v2, p1}, Lnubia/os/screenswitch/ScreenSwitchInternal;->threeFingerSwipe(Z)V

    .line 254
    :cond_3
    return-void

    .line 207
    .end local v2    # "ss":Lnubia/os/screenswitch/ScreenSwitchInternal;
    :cond_4
    :goto_0
    return-void
.end method

.method getScreenSwitchManager()Lnubia/os/screenswitch/ScreenSwitchInternal;
    .locals 1

    .line 296
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    if-nez v0, :cond_1

    .line 298
    const-class v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 299
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    iput-object v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    return-object v0
.end method

.method setEnable(Z)V
    .locals 1
    .param p1, "IsThreeFingerSlideEnable"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mIsThreeFingerSlideEnable:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MultiFingerSwitchAppCtrl;->mNeedUpdate:Z

    .line 50
    return-void
.end method
