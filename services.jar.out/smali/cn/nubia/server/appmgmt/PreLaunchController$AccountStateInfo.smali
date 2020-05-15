.class Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;
.super Ljava/lang/Object;
.source "PreLaunchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PreLaunchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountStateInfo"
.end annotation


# instance fields
.field public final accountType:Ljava/lang/String;

.field private mIsLogin:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;->mIsLogin:Z

    .line 478
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;->accountType:Ljava/lang/String;

    .line 479
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;->mIsLogin:Z

    .line 480
    return-void
.end method


# virtual methods
.method public getLoginState()Z
    .locals 1

    .line 487
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;->mIsLogin:Z

    return v0
.end method

.method public setLoginState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 483
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/PreLaunchController$AccountStateInfo;->mIsLogin:Z

    .line 484
    return-void
.end method
