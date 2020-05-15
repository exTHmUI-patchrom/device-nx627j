.class Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;
.super Ljava/lang/Object;
.source "PreLaunchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PreLaunchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LaunchedLoginActivityInfo"
.end annotation


# instance fields
.field private final mLoginActivity:Ljava/lang/String;

.field private mLoginedState:Z

.field private final mLogoutActivity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "loginActivity"    # Ljava/lang/String;
    .param p2, "logoutActivity"    # Ljava/lang/String;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;->mLoginedState:Z

    .line 497
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;->mLoginActivity:Ljava/lang/String;

    .line 498
    iput-object p2, p0, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;->mLogoutActivity:Ljava/lang/String;

    .line 499
    return-void
.end method


# virtual methods
.method public getLoginActivity()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;->mLoginActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginedState()Z
    .locals 1

    .line 514
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;->mLoginedState:Z

    return v0
.end method

.method public getLogoutActivity()Ljava/lang/String;
    .locals 1

    .line 506
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;->mLogoutActivity:Ljava/lang/String;

    return-object v0
.end method

.method public setLoginedState(Z)V
    .locals 0
    .param p1, "isLogin"    # Z

    .line 510
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$LaunchedLoginActivityInfo;->mLoginedState:Z

    .line 511
    return-void
.end method
