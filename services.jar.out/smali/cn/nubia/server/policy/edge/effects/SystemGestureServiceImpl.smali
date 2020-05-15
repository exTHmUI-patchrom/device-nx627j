.class public Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;
.super Ljava/lang/Object;
.source "SystemGestureServiceImpl.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentScreenLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealService:Lcn/nubia/server/policy/edge/CommunalService;

.field private mRecentAppSwitchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mAm:Landroid/app/ActivityManager;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRecentAppSwitchList:Ljava/util/List;

    .line 41
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->init()V

    .line 42
    invoke-static {}, Lcn/nubia/server/policy/edge/CommunalService;->getDefault()Lcn/nubia/server/policy/edge/CommunalService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    .line 43
    return-void
.end method

.method private canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 69
    if-eqz p1, :cond_3

    .line 70
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->isSplitScreenHome(Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 79
    return v2

    .line 83
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->isSystemUIApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    return v2

    .line 87
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->isSelfApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    return v2

    .line 91
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->isSetupWizardApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    return v2

    .line 95
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private init()V
    .locals 5

    .line 46
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mAm:Landroid/app/ActivityManager;

    const/16 v1, 0x15

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    .line 49
    .local v0, "recents":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v0, :cond_2

    .line 50
    const-string/jumbo v1, "zxj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemGestureCtrl recents size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v1, 0x0

    .line 51
    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 53
    .local v2, "r":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 54
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 55
    .local v3, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v3}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v2    # "r":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    :cond_1
    const-string/jumbo v1, "zxj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemGestureCtrl add size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    return-void
.end method

.method private isHomeApplication(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "bHome":Z
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 101
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 102
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 104
    .local v2, "homeInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 108
    :cond_0
    return v0
.end method

.method private isSelfApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 118
    if-eqz p1, :cond_0

    const-string v0, "cn.nubia.FitDNA"

    .line 119
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0
.end method

.method private isSetupWizardApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 123
    if-eqz p1, :cond_0

    const-string v0, "cn.nubia.setupwizard"

    .line 124
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0
.end method

.method private isSplitScreenHome(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 129
    if-eqz p1, :cond_0

    const-string v0, "cn.nubia.splitscreen.home"

    .line 130
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0
.end method

.method private isSystemUIApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 113
    if-eqz p1, :cond_0

    const-string v0, "com.android.systemui"

    .line 114
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0
.end method

.method private nofityLoadCurrentScreen(Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V
    .locals 3
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    .line 194
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 198
    :cond_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl$1;-><init>(Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    .line 223
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mCurrentScreenLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    return-void
.end method


# virtual methods
.method public getCurrentAppIndex()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/CommunalService;->getCurrentAppIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentScreenBitmap(Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V
    .locals 1
    .param p1, "callback"    # Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    .line 187
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mCallback:Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;

    .line 189
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getScreenShot(Lcn/nubia/server/policy/edge/effects/resloader/TakeCurrentScreenCallback;)V

    .line 191
    return-void
.end method

.method public getNextAppIndex(Z)I
    .locals 1
    .param p1, "isUp"    # Z

    .line 145
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getNextAppIndex(Z)I

    move-result v0

    return v0
.end method

.method public getNextStartComponentName(II)Landroid/content/ComponentName;
    .locals 1
    .param p1, "leftOrRight"    # I
    .param p2, "upOrDown"    # I

    .line 169
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/CommunalService;->getNextStartComponentName(II)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getRecentTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/CommunalService;->getRecentTaskList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSingleSlideFuns(I)I
    .locals 1
    .param p1, "leftOrRight"    # I

    .line 163
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/CommunalService;->getSingleSlideFuns(I)I

    move-result v0

    return v0
.end method

.method public isHomeApplication()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/CommunalService;->isHomeApplication()Z

    move-result v0

    return v0
.end method

.method public isInnerGestureOpen()Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    const/16 v1, 0x5000

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isGestureEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    .line 176
    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isSupportedAtPresent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0
.end method

.method public isSingleGestureOpen()Z
    .locals 2

    .line 182
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/SystemGestureServiceImpl;->mRealService:Lcn/nubia/server/policy/edge/CommunalService;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/CommunalService;->isGestureEnable(I)Z

    move-result v0

    return v0
.end method
