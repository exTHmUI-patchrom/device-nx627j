.class public final Lcn/nubia/server/appmgmt/functionswitch/switcher/TwoLevelSwitcher;
.super Ljava/lang/Object;
.source "TwoLevelSwitcher.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;


# instance fields
.field private mFunctionName:Ljava/lang/String;

.field private mFunctionState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, "twolevel"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/switcher/TwoLevelSwitcher;->mFunctionName:Ljava/lang/String;

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/functionswitch/switcher/TwoLevelSwitcher;->mFunctionState:Z

    return-void
.end method


# virtual methods
.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/switcher/TwoLevelSwitcher;->mFunctionName:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctionState()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/functionswitch/switcher/TwoLevelSwitcher;->mFunctionState:Z

    return v0
.end method

.method public setFunctionState(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 22
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/functionswitch/switcher/TwoLevelSwitcher;->mFunctionState:Z

    .line 24
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setTwoLevelState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 28
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
