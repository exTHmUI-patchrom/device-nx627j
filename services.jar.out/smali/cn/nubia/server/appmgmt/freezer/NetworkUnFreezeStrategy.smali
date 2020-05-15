.class public Lcn/nubia/server/appmgmt/freezer/NetworkUnFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "NetworkUnFreezeStrategy.java"


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mCurrentlyIdleState:I

.field private mDebug:Z

.field private mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/NetworkCheck;)V
    .locals 2
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    .param p2, "networkCheck"    # Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    .line 14
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 8
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/NetworkUnFreezeStrategy;->mDebug:Z

    .line 15
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/NetworkUnFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 16
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/NetworkUnFreezeStrategy;->mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    .line 17
    return-void
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 3
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 20
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 21
    return v0

    .line 23
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/NetworkUnFreezeStrategy;->mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    invoke-virtual {v1, p1}, Lcn/nubia/server/appmgmt/freezer/NetworkCheck;->isNoFreezeApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/NetworkUnFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    iget v1, v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCurrentlyIdleState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 25
    return v0

    .line 26
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/NetworkUnFreezeStrategy;->mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/NetworkCheck;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    return v2

    .line 31
    :cond_2
    return v0
.end method

.method public needCheckWhenOtherNotAllow()Z
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .line 6
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public bridge synthetic resetArgs()V
    .locals 0

    .line 6
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->resetArgs()V

    return-void
.end method
