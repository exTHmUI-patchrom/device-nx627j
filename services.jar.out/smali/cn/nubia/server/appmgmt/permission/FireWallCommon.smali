.class public Lcn/nubia/server/appmgmt/permission/FireWallCommon;
.super Ljava/lang/Object;
.source "FireWallCommon.java"


# static fields
.field private static mNMS:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/server/appmgmt/permission/FireWallCommon;->mNMS:Landroid/os/INetworkManagementService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureNetworkManagementService()V
    .locals 1

    .line 12
    sget-object v0, Lcn/nubia/server/appmgmt/permission/FireWallCommon;->mNMS:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    .line 13
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/permission/FireWallCommon;->mNMS:Landroid/os/INetworkManagementService;

    .line 15
    :try_start_0
    sget-object v0, Lcn/nubia/server/appmgmt/permission/FireWallCommon;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->initNeosafeIptable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 19
    :cond_0
    :goto_0
    return-void
.end method

.method public static initIptables()V
    .locals 0

    .line 22
    invoke-static {}, Lcn/nubia/server/appmgmt/permission/FireWallCommon;->ensureNetworkManagementService()V

    .line 23
    return-void
.end method

.method public static setUidNetWorkState(IZ)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "enabled"    # Z

    .line 26
    invoke-static {}, Lcn/nubia/server/appmgmt/permission/FireWallCommon;->ensureNetworkManagementService()V

    .line 28
    :try_start_0
    sget-object v0, Lcn/nubia/server/appmgmt/permission/FireWallCommon;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p0, p1}, Landroid/os/INetworkManagementService;->setMobileDataUidRule(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 31
    :goto_0
    return-void
.end method
