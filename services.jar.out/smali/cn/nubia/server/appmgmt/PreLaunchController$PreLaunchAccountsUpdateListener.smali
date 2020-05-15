.class Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;
.super Ljava/lang/Object;
.source "PreLaunchController.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PreLaunchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreLaunchAccountsUpdateListener"
.end annotation


# instance fields
.field private mInited:Z

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/PreLaunchController;


# direct methods
.method private constructor <init>(Lcn/nubia/server/appmgmt/PreLaunchController;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->mInited:Z

    .line 520
    new-instance p1, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener$1;

    invoke-direct {p1, p0}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener$1;-><init>(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;)V

    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/appmgmt/PreLaunchController;Lcn/nubia/server/appmgmt/PreLaunchController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController;
    .param p2, "x1"    # Lcn/nubia/server/appmgmt/PreLaunchController$1;

    .line 518
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;-><init>(Lcn/nubia/server/appmgmt/PreLaunchController;)V

    return-void
.end method

.method static synthetic access$1902(Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;
    .param p1, "x1"    # Z

    .line 518
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->mInited:Z

    return p1
.end method

.method private updatePreLaunchList(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isAdd"    # Z

    .line 567
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$2400(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$200(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 568
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    return-void

    .line 569
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$2100(Lcn/nubia/server/appmgmt/PreLaunchController;)Lnubia/os/IAppLearningCallback;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3, p2}, Lnubia/os/IAppLearningCallback;->updateListForPreStart(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 571
    :goto_0
    return-void
.end method


# virtual methods
.method public checkInit()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$2500(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 575
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$2500(Lcn/nubia/server/appmgmt/PreLaunchController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 9
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .line 531
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->this$0:Lcn/nubia/server/appmgmt/PreLaunchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$2100(Lcn/nubia/server/appmgmt/PreLaunchController;)Lnubia/os/IAppLearningCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 532
    :cond_0
    invoke-static {}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$2200()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 533
    .local v1, "preApp":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$2200()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;

    .line 534
    .local v2, "info":Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;
    if-eqz v2, :cond_9

    iget-object v3, v2, Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;->accountType:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_5

    .line 541
    :cond_2
    const/4 v3, 0x0

    .line 542
    .local v3, "isLogin":Z
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, p1, v5

    .line 543
    .local v6, "account":Landroid/accounts/Account;
    iget-object v7, v2, Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;->accountType:Ljava/lang/String;

    iget-object v8, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 544
    const/4 v3, 0x1

    .line 545
    goto :goto_2

    .line 542
    .end local v6    # "account":Landroid/accounts/Account;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 549
    :cond_4
    :goto_2
    if-nez v3, :cond_6

    .line 550
    invoke-static {}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$2300()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 551
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 552
    invoke-static {}, Lcn/nubia/server/appmgmt/PreLaunchController;->access$2300()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;

    invoke-virtual {v4}, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;->getLoginedState()Z

    move-result v3

    .line 553
    goto :goto_4

    .line 555
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_5
    goto :goto_3

    .line 558
    :cond_6
    :goto_4
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;->getLoginState()Z

    move-result v4

    if-ne v4, v3, :cond_7

    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->mInited:Z

    if-nez v4, :cond_8

    .line 559
    :cond_7
    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;->setLoginState(Z)V

    .line 560
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;->getLoginState()Z

    move-result v4

    invoke-direct {p0, v1, v4}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->updatePreLaunchList(Ljava/lang/String;Z)V

    .line 562
    .end local v1    # "preApp":Ljava/lang/String;
    .end local v2    # "info":Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;
    .end local v3    # "isLogin":Z
    :cond_8
    goto :goto_0

    .line 535
    .restart local v1    # "preApp":Ljava/lang/String;
    .restart local v2    # "info":Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;
    :cond_9
    :goto_5
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->mInited:Z

    if-nez v3, :cond_1

    .line 536
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcn/nubia/server/appmgmt/PreLaunchController$PreLaunchAccountsUpdateListener;->updatePreLaunchList(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 563
    .end local v1    # "preApp":Ljava/lang/String;
    .end local v2    # "info":Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;
    :cond_a
    return-void
.end method
