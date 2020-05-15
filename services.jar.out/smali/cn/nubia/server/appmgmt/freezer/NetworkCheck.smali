.class public Lcn/nubia/server/appmgmt/freezer/NetworkCheck;
.super Ljava/lang/Object;
.source "NetworkCheck.java"


# static fields
.field private static final PID:Ljava/lang/String; = "pid"


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/NetworkCheck;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 19
    return-void
.end method


# virtual methods
.method isNetworkConnected()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/NetworkCheck;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    iget-boolean v0, v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mIsConnectNetWok:Z

    return v0
.end method

.method isNoFreezeApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/NetworkCheck;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->getNoFreezeNetworkConnAppList()Ljava/util/HashSet;

    move-result-object v0

    .line 23
    .local v0, "noNetworkFreezeAppList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 24
    .local v2, "app":Ljava/lang/String;
    iget-object v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    const/4 v1, 0x1

    return v1

    .line 27
    .end local v2    # "app":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
