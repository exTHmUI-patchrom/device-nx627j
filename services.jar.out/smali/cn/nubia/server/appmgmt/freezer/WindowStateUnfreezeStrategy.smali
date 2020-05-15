.class public Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "WindowStateUnfreezeStrategy.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mIwm:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-string v0, "ApplicationFreeze_Window"

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;->TAG:Ljava/lang/String;

    .line 9
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 1
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 14
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;->mIwm:Landroid/view/IWindowManager;

    .line 15
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 16
    return-void
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 6
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 27
    const/4 v0, 0x0

    move v1, v0

    .line 29
    .local v1, "hasWindowVisible":Z
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;->mIwm:Landroid/view/IWindowManager;

    iget v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->getProcessWindowVisibleState(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 32
    goto :goto_0

    .line 30
    :catch_0
    move-exception v2

    .line 31
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException: e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 34
    const/4 v0, 0x1

    return v0

    .line 36
    :cond_1
    return v0
.end method

.method public bridge synthetic needCheckWhenOtherNotAllow()Z
    .locals 1

    .line 7
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v0

    return v0
.end method

.method public preCheck()V
    .locals 1

    .line 19
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;->mIwm:Landroid/view/IWindowManager;

    .line 20
    return-void
.end method

.method public resetArgs()V
    .locals 1

    .line 23
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/WindowStateUnfreezeStrategy;->DEBUG:Z

    .line 24
    return-void
.end method
