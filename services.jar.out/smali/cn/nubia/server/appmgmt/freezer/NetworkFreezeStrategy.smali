.class public Lcn/nubia/server/appmgmt/freezer/NetworkFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "NetworkFreezeStrategy.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const-string v0, "ApplicationFreeze_Network"

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/NetworkFreezeStrategy;->TAG:Ljava/lang/String;

    .line 5
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/NetworkFreezeStrategy;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/NetworkCheck;)V
    .locals 0
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    .param p2, "networkCheck"    # Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    .line 9
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 10
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/NetworkFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 11
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/NetworkFreezeStrategy;->mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    .line 12
    return-void
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 3
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 19
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 20
    return v0

    .line 23
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/NetworkFreezeStrategy;->mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    invoke-virtual {v1, p1}, Lcn/nubia/server/appmgmt/freezer/NetworkCheck;->isNoFreezeApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 24
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/NetworkFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    iget v1, v1, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCurrentlyIdleState:I

    if-ne v1, v2, :cond_1

    .line 25
    return v2

    .line 26
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/NetworkFreezeStrategy;->mNetworkCheck:Lcn/nubia/server/appmgmt/freezer/NetworkCheck;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/freezer/NetworkCheck;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    return v0

    .line 31
    :cond_2
    return v2
.end method

.method public needCheckWhenOtherNotAllow()Z
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .line 3
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public resetArgs()V
    .locals 1

    .line 15
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/NetworkFreezeStrategy;->DEBUG:Z

    .line 16
    return-void
.end method
