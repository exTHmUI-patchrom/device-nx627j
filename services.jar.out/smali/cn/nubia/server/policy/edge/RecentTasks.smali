.class public Lcn/nubia/server/policy/edge/RecentTasks;
.super Ljava/lang/Object;
.source "RecentTasks.java"


# static fields
.field private static final ACTIVITY_STACK_CHANGED:Ljava/lang/String; = "android.intent.action.ACTIVITY_STACK_CHANGED"

.field private static final MAX_TASKS:I = 0x15

.field private static final SWITCH_APP_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RecentsTask"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mActivityStackReceiver:Landroid/content/BroadcastReceiver;

.field private mChangeBySwitch:Z

.field private mChangeTaskBySwitch:Z

.field private mContext:Landroid/content/Context;

.field private mNeedUpdate:Z

.field private mObject:Ljava/lang/Object;

.field private mRecentAppSwitchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetAppIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mObject:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mTargetAppIndex:I

    .line 46
    new-instance v0, Lcn/nubia/server/policy/edge/RecentTasks$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/RecentTasks$1;-><init>(Lcn/nubia/server/policy/edge/RecentTasks;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mActivityStackReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    iput-object p1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mActivityManager:Landroid/app/ActivityManager;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mNeedUpdate:Z

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTIVITY_STACK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mActivityStackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/RecentTasks;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/RecentTasks;

    .line 19
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeTaskBySwitch:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/server/policy/edge/RecentTasks;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/RecentTasks;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeTaskBySwitch:Z

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/server/policy/edge/RecentTasks;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/RecentTasks;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mNeedUpdate:Z

    return p1
.end method

.method private canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 154
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/RecentTasks;->isHomeApplication(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/RecentTasks;->isFitCardAuxiliaryActivity(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cn.nubia.splitscreen.home"

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.systemui"

    .line 159
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cn.nubia.setupwizard"

    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cn.nubia.applockmanager"

    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android"

    .line 162
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    nop

    .line 156
    :cond_0
    return v0

    .line 164
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private checkCurrentComponentName(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 6
    .param p1, "recentInfo"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .line 129
    invoke-virtual {p0}, Lcn/nubia/server/policy/edge/RecentTasks;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 130
    .local v0, "currentComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_6

    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    goto :goto_2

    .line 131
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "cn.nubia.applockmanager"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android"

    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 134
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/RecentTasks;->isFitCardAuxiliaryActivity(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 137
    :cond_1
    const/4 v2, 0x0

    .line 138
    .local v2, "exclude":Z
    iget-object v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    .line 139
    iget-object v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 140
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    .line 142
    :cond_2
    iget-object v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 143
    .local v3, "component":Landroid/content/ComponentName;
    if-eqz v3, :cond_3

    .line 144
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 147
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 148
    const-string v3, "RecentsTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exclude, recent task\'s first component="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", current component="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcn/nubia/server/policy/edge/RecentTasks;->setTargetAppIndex(I)V

    .line 151
    :cond_4
    return-void

    .line 135
    .end local v2    # "exclude":Z
    :cond_5
    :goto_1
    return-void

    .line 130
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_6
    :goto_2
    return-void
.end method

.method private getInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 3
    .param p1, "info"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .line 115
    const/4 v0, -0x1

    .line 117
    .local v0, "instanceId":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 118
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 119
    if-lez v0, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 124
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private getRecentAppSwitchList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mActivityManager:Landroid/app/ActivityManager;

    .line 248
    const/16 v2, 0x15

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    .line 249
    .local v1, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 251
    :cond_0
    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/RecentTasks;->removeDuplicateTasks(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 252
    .local v2, "newRecentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 253
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 254
    .local v4, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v4, :cond_1

    .line 255
    goto :goto_1

    .line 257
    :cond_1
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    .line 258
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 259
    .local v5, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v5}, Lcn/nubia/server/policy/edge/RecentTasks;->canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 260
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v4    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v5    # "component":Landroid/content/ComponentName;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    .end local v3    # "i":I
    :cond_3
    return-object v0

    .line 250
    .end local v2    # "newRecentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_4
    :goto_2
    return-object v0
.end method

.method private isFitCardAuxiliaryActivity(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 168
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 169
    return v0

    .line 170
    :cond_0
    const-string v1, "cn.nubia.fitcard.EmptyActivity"

    .line 171
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cn.nubia.edge"

    .line 172
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    nop

    .line 170
    :cond_1
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

    .line 90
    .local p1, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 93
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
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

    .line 95
    .local v2, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    const/4 v3, 0x0

    .line 96
    .local v3, "i":I
    invoke-direct {p0, v2}, Lcn/nubia/server/policy/edge/RecentTasks;->getInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v4

    .line 97
    .local v4, "instanceId":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v3, v5, :cond_2

    .line 98
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 99
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 100
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 101
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 102
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {p0, v5}, Lcn/nubia/server/policy/edge/RecentTasks;->getInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 104
    goto :goto_2

    .line 97
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 108
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v3    # "i":I
    .end local v4    # "instanceId":I
    :cond_3
    goto :goto_0

    .line 111
    :cond_4
    return-object v0

    .line 91
    .end local v0    # "newTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_5
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateRecentAppSwitchList()V
    .locals 6

    .line 60
    iget-object v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v1, 0x15

    const/16 v2, 0x102

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 70
    :cond_1
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/RecentTasks;->removeDuplicateTasks(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "newRecentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 73
    .local v3, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v3, :cond_2

    .line 74
    goto :goto_1

    .line 76
    :cond_2
    iget-object v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_4

    .line 77
    iget-object v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 78
    .local v4, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v4}, Lcn/nubia/server/policy/edge/RecentTasks;->canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 79
    iget-object v5, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 80
    invoke-direct {p0, v3}, Lcn/nubia/server/policy/edge/RecentTasks;->checkCurrentComponentName(Landroid/app/ActivityManager$RecentTaskInfo;)V

    .line 82
    :cond_3
    iget-object v5, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v3    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "i":I
    :cond_5
    return-void

    .line 69
    .end local v1    # "newRecentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_6
    :goto_2
    return-void
.end method

.method private updateRecentTasks()V
    .locals 7

    .line 268
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/RecentTasks;->getRecentAppSwitchList()Ljava/util/List;

    move-result-object v0

    .line 269
    .local v0, "newTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 271
    .local v2, "newTask":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v3, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 272
    .local v4, "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v4, :cond_1

    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 274
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 275
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 277
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 276
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 279
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 280
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 282
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 281
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    iget v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    if-ne v5, v6, :cond_1

    .line 284
    iget v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iput v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 285
    iget v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iput v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 286
    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 288
    .end local v4    # "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    goto :goto_1

    .line 289
    .end local v2    # "newTask":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_2
    goto :goto_0

    .line 290
    :cond_3
    return-void
.end method


# virtual methods
.method public getCurrentRunAppComponent()Landroid/content/ComponentName;
    .locals 3

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 179
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 180
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 181
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 182
    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 185
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method public getRecentTaskList(Z)Ljava/util/List;
    .locals 3
    .param p1, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 216
    if-nez p1, :cond_0

    .line 217
    iget-object v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    return-object v0

    .line 220
    :cond_0
    const-string v0, "RecentsTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecentTasks mNeedUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mNeedUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mChangeBySwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeBySwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mNeedUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 222
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mNeedUpdate:Z

    .line 223
    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/edge/RecentTasks;->setTargetAppIndex(I)V

    .line 224
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/RecentTasks;->updateRecentAppSwitchList()V

    .line 225
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeBySwitch:Z

    goto :goto_0

    .line 226
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeBySwitch:Z

    if-eqz v0, :cond_2

    .line 227
    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeBySwitch:Z

    .line 228
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/RecentTasks;->updateRecentTasks()V

    .line 230
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mRecentAppSwitchList:Ljava/util/List;

    return-object v0
.end method

.method public getRecentTaskNum()I
    .locals 1

    .line 242
    const/4 v0, 0x3

    return v0
.end method

.method public getTargetAppIndex()I
    .locals 1

    .line 238
    iget v0, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mTargetAppIndex:I

    return v0
.end method

.method public isHomeApplication(Landroid/content/ComponentName;)Z
    .locals 8
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 189
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 190
    return v0

    .line 191
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 192
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 195
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 196
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 197
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 198
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 200
    const-string v0, "RecentsTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isHomeApplication, component is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x1

    return v0

    .line 203
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 204
    :cond_2
    return v0
.end method

.method public isRecentTaksActivity(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 208
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 209
    return v0

    .line 210
    :cond_0
    const-string v1, "com.android.systemui.recentsview.nubiauiv3.RecentsActivity"

    .line 211
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.systemui"

    .line 212
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    nop

    .line 210
    :cond_1
    return v0
.end method

.method public setTargetAppIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 234
    iput p1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mTargetAppIndex:I

    .line 235
    return-void
.end method

.method public updateRecentTasksFlag(Z)V
    .locals 0
    .param p1, "changeBySwitch"    # Z

    .line 293
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeBySwitch:Z

    .line 294
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/RecentTasks;->mChangeTaskBySwitch:Z

    .line 295
    return-void
.end method
